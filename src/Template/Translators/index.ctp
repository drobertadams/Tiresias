<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('New Translator'), ['action' => 'add']) ?></li>
    </ul>
</nav>
<div class="translators index large-9 medium-8 columns content">
    <h3><?= __('Translators') ?></h3>
    <table cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th scope="col"><?= $this->Paginator->sort('name') ?></th>
                <th scope="col"><?= $this->Paginator->sort('created_on') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($translators as $translator): ?>
            <tr>
                <td><?= h($translator->name) ?></td>
                <td><?= h($translator->created_on) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['action' => 'view', $translator->id]) ?>
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $translator->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $translator->id], ['confirm' => __('Are you sure you want to delete # {0}?', $translator->id)]) ?>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <div class="paginator">
        <ul class="pagination">
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers() ?>
            <?= $this->Paginator->next(__('next') . ' >') ?>
        </ul>
        <p><?= $this->Paginator->counter() ?></p>
    </div>
</div>
