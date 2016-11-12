<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $submission->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $submission->id)]
            )
        ?></li>
        <li><?= $this->Html->link(__('List Submissions'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Works'), ['controller' => 'Works', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Work'), ['controller' => 'Works', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Authors'), ['controller' => 'Authors', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Author'), ['controller' => 'Authors', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Translators'), ['controller' => 'Translators', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Translator'), ['controller' => 'Translators', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Languages'), ['controller' => 'Languages', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Language'), ['controller' => 'Languages', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Media'), ['controller' => 'Media', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Media'), ['controller' => 'Media', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="submissions form large-9 medium-8 columns content">
    <?= $this->Form->create($submission) ?>
    <fieldset>
        <legend><?= __('Edit Submission') ?></legend>
        <?php
            echo $this->Form->input('work_id', ['options' => $works]);
            echo $this->Form->input('author_id', ['options' => $authors]);
            echo $this->Form->input('isbn');
            echo $this->Form->input('oclc');
            echo $this->Form->input('edition');
            echo $this->Form->input('translator_id', ['options' => $translators]);
            echo $this->Form->input('language_id', ['options' => $languages]);
            echo $this->Form->input('is_prose');
            echo $this->Form->input('media_id', ['options' => $media]);
            echo $this->Form->input('notes');
            echo $this->Form->input('created_on');
            echo $this->Form->input('created_by_name');
            echo $this->Form->input('created_by_email');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
