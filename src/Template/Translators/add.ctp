<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('List Translators'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Submissions'), ['controller' => 'Submissions', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Submission'), ['controller' => 'Submissions', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="translators form large-9 medium-8 columns content">
    <?= $this->Form->create($translator) ?>
    <fieldset>
        <legend><?= __('Add Translator') ?></legend>
        <?php
            echo $this->Form->input('name');
            echo $this->Form->input('created_on');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
