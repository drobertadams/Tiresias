<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Submissions Controller
 *
 * @property \App\Model\Table\SubmissionsTable $Submissions
 */
class SubmissionsController extends AppController
{

    public function initialize()
    {
        parent::initialize();
        $this->loadComponent('Search.Prg', [
            // This is default config. You can modify "actions" as needed to make
            // the PRG component work only for specified methods.
            'actions' => ['index', 'lookup']
        ]);
    }

    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Works', 'Authors', 'Translators', 'Languages', 'Media', 'Collections']
        ];

        $query = $this->Submissions
          // Use the plugins 'search' custom finder and pass in the
          // processed query params
          ->find('search', ['search' => $this->request->query]);
          // You can add extra things to the query if you need to
          //->contain(['Comments'])
          //->where(['title IS NOT' => null]);

        $submissions = $this->paginate($query);

        $this->set(compact('submissions'));
        $this->set('_serialize', ['submissions']);
    }

    /**
     * View method
     *
     * @param string|null $id Submission id.
     * @return \Cake\Network\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $submission = $this->Submissions->get($id, [
            'contain' => ['Works', 'Authors', 'Translators', 'Languages', 'Media', 'Collections']
        ]);

        $this->set('submission', $submission);
        $this->set('_serialize', ['submission']);
    }

    /**
     * Add method
     *
     * @return \Cake\Network\Response|void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $submission = $this->Submissions->newEntity();
        if ($this->request->is('post')) {
            $submission = $this->Submissions->patchEntity($submission, $this->request->data);
            if ($this->Submissions->save($submission)) {
                $this->Flash->success(__('The submission has been saved.'));

                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The submission could not be saved. Please, try again.'));
            }
        }
        $works = $this->Submissions->Works->find('list', ['limit' => 200]);
        $authors = $this->Submissions->Authors->find('list', ['limit' => 200]);
        $translators = $this->Submissions->Translators->find('list', ['limit' => 200]);
        $languages = $this->Submissions->Languages->find('list', ['limit' => 200]);
        $media = $this->Submissions->Media->find('list', ['limit' => 200]);
        $collections = $this->Submissions->Collections->find('list', ['limit' => 200]);
        $this->set(compact('submission', 'works', 'authors', 'translators', 'languages', 'media', 'collections'));
        $this->set('_serialize', ['submission']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Submission id.
     * @return \Cake\Network\Response|void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $submission = $this->Submissions->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $submission = $this->Submissions->patchEntity($submission, $this->request->data);
            if ($this->Submissions->save($submission)) {
                $this->Flash->success(__('The submission has been saved.'));

                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The submission could not be saved. Please, try again.'));
            }
        }
        $works = $this->Submissions->Works->find('list', ['limit' => 200]);
        $authors = $this->Submissions->Authors->find('list', ['limit' => 200]);
        $translators = $this->Submissions->Translators->find('list', ['limit' => 200]);
        $languages = $this->Submissions->Languages->find('list', ['limit' => 200]);
        $media = $this->Submissions->Media->find('list', ['limit' => 200]);
        $collections = $this->Submissions->Collections->find('list', ['limit' => 200]);
        $this->set(compact('submission', 'works', 'authors', 'translators', 'languages', 'media', 'collections'));
        $this->set('_serialize', ['submission']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Submission id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $submission = $this->Submissions->get($id);
        if ($this->Submissions->delete($submission)) {
            $this->Flash->success(__('The submission has been deleted.'));
        } else {
            $this->Flash->error(__('The submission could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
