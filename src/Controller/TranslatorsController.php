<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Translators Controller
 *
 * @property \App\Model\Table\TranslatorsTable $Translators
 */
class TranslatorsController extends AppController
{

    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function index()
    {
        $translators = $this->paginate($this->Translators);

        $this->set(compact('translators'));
        $this->set('_serialize', ['translators']);
    }

    /**
     * View method
     *
     * @param string|null $id Translator id.
     * @return \Cake\Network\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $translator = $this->Translators->get($id, [
          'contain' => [
            'Submissions.Authors',
            'Submissions.Collections',
            'Submissions.Languages',
            'Submissions.Media',
            'Submissions.Translators',
            'Submissions.Works',
          ]
        ]);

        $this->set('translator', $translator);
        $this->set('_serialize', ['translator']);
    }

    /**
     * Add method
     *
     * @return \Cake\Network\Response|void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $translator = $this->Translators->newEntity();
        if ($this->request->is('post')) {
            $translator = $this->Translators->patchEntity($translator, $this->request->data);
            if ($this->Translators->save($translator)) {
                $this->Flash->success(__('The translator has been saved.'));

                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The translator could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('translator'));
        $this->set('_serialize', ['translator']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Translator id.
     * @return \Cake\Network\Response|void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $translator = $this->Translators->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $translator = $this->Translators->patchEntity($translator, $this->request->data);
            if ($this->Translators->save($translator)) {
                $this->Flash->success(__('The translator has been saved.'));

                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The translator could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('translator'));
        $this->set('_serialize', ['translator']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Translator id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $translator = $this->Translators->get($id);
        if ($this->Translators->delete($translator)) {
            $this->Flash->success(__('The translator has been deleted.'));
        } else {
            $this->Flash->error(__('The translator could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
