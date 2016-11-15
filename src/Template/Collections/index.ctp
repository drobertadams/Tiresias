<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('New Collection'), ['action' => 'add']) ?></li>
    </ul>
</nav>
<div class="collections index large-9 medium-8 columns content">
    <h3><?= __('Collections') ?></h3>
    <table cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th scope="col"><?= $this->Paginator->sort('id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('name') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($collections as $collection): ?>
            <tr>
                <td><?= $this->Number->format($collection->id) ?></td>
                <td><?= h($collection->name) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['action' => 'view', $collection->id]) ?>
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $collection->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $collection->id], ['confirm' => __('Are you sure you want to delete # {0}?', $collection->id)]) ?>
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
