<?php
namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Submissions Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Works
 * @property \Cake\ORM\Association\BelongsTo $Authors
 * @property \Cake\ORM\Association\BelongsTo $Translators
 * @property \Cake\ORM\Association\BelongsTo $Languages
 * @property \Cake\ORM\Association\BelongsTo $Media
 * @property \Cake\ORM\Association\BelongsTo $Collections
 *
 * @method \App\Model\Entity\Submission get($primaryKey, $options = [])
 * @method \App\Model\Entity\Submission newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\Submission[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\Submission|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\Submission patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\Submission[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\Submission findOrCreate($search, callable $callback = null)
 */
class SubmissionsTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config)
    {
        parent::initialize($config);

        $this->table('submissions');
        $this->displayField('id');
        $this->primaryKey('id');

        $this->belongsTo('Works', [
            'foreignKey' => 'work_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('Authors', [
            'foreignKey' => 'author_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('Translators', [
            'foreignKey' => 'translator_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('Languages', [
            'foreignKey' => 'language_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('Media', [
            'foreignKey' => 'media_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('Collections', [
            'foreignKey' => 'collection_id'
        ]);
    }

    /**
     * Default validation rules.
     *
     * @param \Cake\Validation\Validator $validator Validator instance.
     * @return \Cake\Validation\Validator
     */
    public function validationDefault(Validator $validator)
    {
        $validator
            ->integer('id')
            ->allowEmpty('id', 'create');

        $validator
            ->allowEmpty('isbn');

        $validator
            ->allowEmpty('oclc');

        $validator
            ->allowEmpty('edition');

        $validator
            ->boolean('is_prose')
            ->requirePresence('is_prose', 'create')
            ->notEmpty('is_prose');

        $validator
            ->allowEmpty('notes');

        $validator
            ->dateTime('created_on')
            ->requirePresence('created_on', 'create')
            ->notEmpty('created_on');

        $validator
            ->requirePresence('created_by_name', 'create')
            ->notEmpty('created_by_name');

        $validator
            ->requirePresence('created_by_email', 'create')
            ->notEmpty('created_by_email');

        return $validator;
    }

    /**
     * Returns a rules checker object that will be used for validating
     * application integrity.
     *
     * @param \Cake\ORM\RulesChecker $rules The rules object to be modified.
     * @return \Cake\ORM\RulesChecker
     */
    public function buildRules(RulesChecker $rules)
    {
        $rules->add($rules->existsIn(['work_id'], 'Works'));
        $rules->add($rules->existsIn(['author_id'], 'Authors'));
        $rules->add($rules->existsIn(['translator_id'], 'Translators'));
        $rules->add($rules->existsIn(['language_id'], 'Languages'));
        $rules->add($rules->existsIn(['media_id'], 'Media'));
        $rules->add($rules->existsIn(['collection_id'], 'Collections'));

        return $rules;
    }
}
