<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('New Work'), ['action' => 'add']) ?></li>
    </ul>
</nav>
<div class="works index large-9 medium-8 columns content">
    <h3><?= __('Works') ?></h3>
    <table cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th scope="col"><?= $this->Paginator->sort('id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('title') ?></th>
                <th scope="col"><?= $this->Paginator->sort('created_on') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($works as $work): ?>
            <tr>
                <td><?= $this->Number->format($work->id) ?></td>
                <td><?= h($work->title) ?></td>
                <td><?= h($work->created_on) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['action' => 'view', $work->id]) ?>
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $work->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $work->id], ['confirm' => __('Are you sure you want to delete # {0}?', $work->id)]) ?>
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
