<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('New Submission'), ['action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('Authors'), ['controller' => 'Authors', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('Collections'), ['controller' => 'Collections', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('Languages'), ['controller' => 'Languages', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('Media'), ['controller' => 'Media', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('Translators'), ['controller' => 'Translators', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('Works'), ['controller' => 'Works', 'action' => 'index']) ?></li>
    </ul>
</nav>
<div class="submissions index large-9 medium-8 columns content">
    <h3><?= __('Submissions') ?></h3>
    <table cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <!-- <th scope="col"><?= $this->Paginator->sort('id') ?></th> -->
                <th scope="col"><?= $this->Paginator->sort('work_id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('author_id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('translator_id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('edition') ?></th>
                <th scope="col"><?= $this->Paginator->sort('isbn') ?></th>
                <th scope="col"><?= $this->Paginator->sort('oclc') ?></th>
                <th scope="col"><?= $this->Paginator->sort('language_id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('is_prose') ?></th>
                <th scope="col"><?= $this->Paginator->sort('is_poetry') ?></th>
                <th scope="col"><?= $this->Paginator->sort('media_id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('collection_id') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($submissions as $submission): ?>
            <tr>
                <!-- <td><?= $this->Number->format($submission->id) ?></td> -->
                <td><?= $submission->has('work') ? $this->Html->link($submission->work->title, ['controller' => 'Works', 'action' => 'view', $submission->work->id]) : '' ?></td>
                <td><?= $submission->has('author') ? $this->Html->link($submission->author->name, ['controller' => 'Authors', 'action' => 'view', $submission->author->id]) : '' ?></td>
                <td><?= $submission->has('translator') ? $this->Html->link($submission->translator->name, ['controller' => 'Translators', 'action' => 'view', $submission->translator->id]) : '' ?></td>
                <td><?= h($submission->edition) ?></td>
                <td><?= h($submission->isbn) ?></td>
                <td><?= h($submission->oclc) ?></td>
                <td><?= $submission->has('language') ? $this->Html->link($submission->language->name, ['controller' => 'Languages', 'action' => 'view', $submission->language->id]) : '' ?></td>
                <td><?= h($submission->is_prose) ?></td>
                <td><?= h($submission->is_poetry) ?></td>
                <td><?= $submission->has('media') ? $this->Html->link($submission->media->name, ['controller' => 'Media', 'action' => 'view', $submission->media->id]) : '' ?></td>
                <td><?= $submission->has('collection') ? $this->Html->link($submission->collection->name, ['controller' => 'Collections', 'action' => 'view', $submission->collection->id]) : '' ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['action' => 'view', $submission->id]) ?>
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $submission->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $submission->id], ['confirm' => __('Are you sure you want to delete # {0}?', $submission->id)]) ?>
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

    <?php
    echo $this->Form->create();
        // You'll need to populate $authors in the template from your controller
        //echo $this->Form->input('id');
        // Match the search param in your table configuration
        echo $this->Form->input('q', ['label' => 'Search']);
        echo $this->Form->button('Filter', ['type' => 'submit']);
        echo $this->Html->link('Reset', ['action' => 'index']);
        echo $this->Form->end();
    ?>

</div>
