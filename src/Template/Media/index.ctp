<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('New Media'), ['action' => 'add']) ?></li>
    </ul>
</nav>
<div class="media index large-9 medium-8 columns content">
    <h3><?= __('Media') ?></h3>
    <table cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th scope="col"><?= $this->Paginator->sort('id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('name') ?></th>
                <th scope="col"><?= $this->Paginator->sort('created_on') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($media as $media): ?>
            <tr>
                <td><?= $this->Number->format($media->id) ?></td>
                <td><?= h($media->name) ?></td>
                <td><?= h($media->created_on) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['action' => 'view', $media->id]) ?>
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $media->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $media->id], ['confirm' => __('Are you sure you want to delete # {0}?', $media->id)]) ?>
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
