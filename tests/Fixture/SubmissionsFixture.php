<?php
namespace App\Test\Fixture;

use Cake\TestSuite\Fixture\TestFixture;

/**
 * SubmissionsFixture
 *
 */
class SubmissionsFixture extends TestFixture
{

    /**
     * Fields
     *
     * @var array
     */
    // @codingStandardsIgnoreStart
    public $fields = [
        'id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => null, 'comment' => '', 'autoIncrement' => true, 'precision' => null],
        'work_id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'author_id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'isbn' => ['type' => 'string', 'length' => 255, 'null' => true, 'default' => null, 'collate' => 'utf8_general_ci', 'comment' => '', 'precision' => null, 'fixed' => null],
        'oclc' => ['type' => 'string', 'length' => 255, 'null' => true, 'default' => null, 'collate' => 'utf8_general_ci', 'comment' => '', 'precision' => null, 'fixed' => null],
        'edition' => ['type' => 'string', 'length' => 255, 'null' => true, 'default' => null, 'collate' => 'utf8_general_ci', 'comment' => '', 'precision' => null, 'fixed' => null],
        'translator_id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'language_id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'is_prose' => ['type' => 'boolean', 'length' => null, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null],
        'media_id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'collection_id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'notes' => ['type' => 'text', 'length' => null, 'null' => true, 'default' => null, 'collate' => 'utf8_general_ci', 'comment' => '', 'precision' => null],
        'created_on' => ['type' => 'timestamp', 'length' => null, 'null' => false, 'default' => 'CURRENT_TIMESTAMP', 'comment' => '', 'precision' => null],
        'created_by_name' => ['type' => 'string', 'length' => 255, 'null' => false, 'default' => null, 'collate' => 'utf8_general_ci', 'comment' => '', 'precision' => null, 'fixed' => null],
        'created_by_email' => ['type' => 'string', 'length' => 255, 'null' => false, 'default' => null, 'collate' => 'utf8_general_ci', 'comment' => '', 'precision' => null, 'fixed' => null],
        '_indexes' => [
            'work_id' => ['type' => 'index', 'columns' => ['work_id'], 'length' => []],
            'author_id' => ['type' => 'index', 'columns' => ['author_id'], 'length' => []],
            'translator_id' => ['type' => 'index', 'columns' => ['translator_id'], 'length' => []],
            'language_id' => ['type' => 'index', 'columns' => ['language_id'], 'length' => []],
            'media_id' => ['type' => 'index', 'columns' => ['media_id'], 'length' => []],
            'collection_id' => ['type' => 'index', 'columns' => ['collection_id'], 'length' => []],
        ],
        '_constraints' => [
            'primary' => ['type' => 'primary', 'columns' => ['id'], 'length' => []],
            'submissions_ibfk_1' => ['type' => 'foreign', 'columns' => ['work_id'], 'references' => ['works', 'id'], 'update' => 'restrict', 'delete' => 'restrict', 'length' => []],
            'submissions_ibfk_3' => ['type' => 'foreign', 'columns' => ['language_id'], 'references' => ['languages', 'id'], 'update' => 'restrict', 'delete' => 'restrict', 'length' => []],
            'submissions_ibfk_4' => ['type' => 'foreign', 'columns' => ['media_id'], 'references' => ['media', 'id'], 'update' => 'restrict', 'delete' => 'restrict', 'length' => []],
            'submissions_ibfk_5' => ['type' => 'foreign', 'columns' => ['translator_id'], 'references' => ['translators', 'id'], 'update' => 'restrict', 'delete' => 'restrict', 'length' => []],
            'submissions_ibfk_6' => ['type' => 'foreign', 'columns' => ['author_id'], 'references' => ['authors', 'id'], 'update' => 'restrict', 'delete' => 'restrict', 'length' => []],
            'submissions_ibfk_7' => ['type' => 'foreign', 'columns' => ['collection_id'], 'references' => ['collections', 'id'], 'update' => 'restrict', 'delete' => 'restrict', 'length' => []],
        ],
        '_options' => [
            'engine' => 'InnoDB',
            'collation' => 'utf8_general_ci'
        ],
    ];
    // @codingStandardsIgnoreEnd

    /**
     * Records
     *
     * @var array
     */
    public $records = [
        [
            'id' => 1,
            'work_id' => 1,
            'author_id' => 1,
            'isbn' => 'Lorem ipsum dolor sit amet',
            'oclc' => 'Lorem ipsum dolor sit amet',
            'edition' => 'Lorem ipsum dolor sit amet',
            'translator_id' => 1,
            'language_id' => 1,
            'is_prose' => 1,
            'media_id' => 1,
            'collection_id' => 1,
            'notes' => 'Lorem ipsum dolor sit amet, aliquet feugiat. Convallis morbi fringilla gravida, phasellus feugiat dapibus velit nunc, pulvinar eget sollicitudin venenatis cum nullam, vivamus ut a sed, mollitia lectus. Nulla vestibulum massa neque ut et, id hendrerit sit, feugiat in taciti enim proin nibh, tempor dignissim, rhoncus duis vestibulum nunc mattis convallis.',
            'created_on' => 1479239795,
            'created_by_name' => 'Lorem ipsum dolor sit amet',
            'created_by_email' => 'Lorem ipsum dolor sit amet'
        ],
    ];
}
