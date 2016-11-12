<?php
namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Translators Model
 *
 * @property \Cake\ORM\Association\HasMany $Submissions
 *
 * @method \App\Model\Entity\Translator get($primaryKey, $options = [])
 * @method \App\Model\Entity\Translator newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\Translator[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\Translator|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\Translator patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\Translator[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\Translator findOrCreate($search, callable $callback = null)
 */
class TranslatorsTable extends Table
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

        $this->table('translators');
        $this->displayField('name');
        $this->primaryKey('id');

        $this->hasMany('Submissions', [
            'foreignKey' => 'translator_id'
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
            ->requirePresence('name', 'create')
            ->notEmpty('name');

        $validator
            ->dateTime('created_on')
            ->requirePresence('created_on', 'create')
            ->notEmpty('created_on');

        return $validator;
    }
}
