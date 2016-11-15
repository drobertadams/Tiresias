<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('List Collections'), ['action' => 'index']) ?></li>
    </ul>
</nav>
<div class="collections form large-9 medium-8 columns content">
    <?= $this->Form->create($collection) ?>
    <fieldset>
        <legend><?= __('Add Collection') ?></legend>
        <?php
            echo $this->Form->input('name');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
