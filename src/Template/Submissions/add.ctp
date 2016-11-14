<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('List Submissions'), ['action' => 'index']) ?></li>
    </ul>
</nav>
<div class="submissions form large-9 medium-8 columns content">
    <?= $this->Form->create($submission) ?>
    <fieldset>
        <legend><?= __('Add Submission') ?></legend>
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
