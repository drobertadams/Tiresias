<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\TranslatorsTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\TranslatorsTable Test Case
 */
class TranslatorsTableTest extends TestCase
{

    /**
     * Test subject
     *
     * @var \App\Model\Table\TranslatorsTable
     */
    public $Translators;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.translators',
        'app.submissions'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::exists('Translators') ? [] : ['className' => 'App\Model\Table\TranslatorsTable'];
        $this->Translators = TableRegistry::get('Translators', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->Translators);

        parent::tearDown();
    }

    /**
     * Test initialize method
     *
     * @return void
     */
    public function testInitialize()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test validationDefault method
     *
     * @return void
     */
    public function testValidationDefault()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }
}
