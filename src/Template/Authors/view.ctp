<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Author'), ['action' => 'edit', $author->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Author'), ['action' => 'delete', $author->id], ['confirm' => __('Are you sure you want to delete # {0}?', $author->id)]) ?> </li>
    </ul>
</nav>
<div class="authors view large-9 medium-8 columns content">
    <h3><?= h($author->name) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Name') ?></th>
            <td><?= h($author->name) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($author->id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Created On') ?></th>
            <td><?= h($author->created_on) ?></td>
        </tr>
    </table>
    <div class="related">
        <h4><?= __('Related Submissions') ?></h4>
        <?php if (!empty($author->submissions)): ?>
        <table cellpadding="0" cellspacing="0">
            <tr>
                <th scope="col"><?= __('Id') ?></th>
                <th scope="col"><?= __('Work') ?></th>
                <th scope="col"><?= __('Author') ?></th>
                <th scope="col"><?= __('Isbn') ?></th>
                <th scope="col"><?= __('Oclc') ?></th>
                <th scope="col"><?= __('Edition') ?></th>
                <th scope="col"><?= __('Translator') ?></th>
                <th scope="col"><?= __('Language') ?></th>
                <th scope="col"><?= __('Media') ?></th>
            </tr>
            <?php foreach ($author->submissions as $submissions): ?>
            <tr>
                <td><?= $this->Html->link($submissions->id,
                ['controller' => 'Submissions', 'action' => 'view', $submissions->id]) ?></td>
                <td><?= $this->Html->link($submissions->work->title,
                  ['controller' => 'Works', 'action' => 'view', $submissions->work->id]) ?></td>
                <td><?= $this->Html->link($submissions->author->name,
                  ['controller' => 'Authors', 'action' => 'view', $submissions->author->id]) ?></td><td><?= h($submissions->isbn) ?></td>
                <td><?= h($submissions->oclc) ?></td>
                <td><?= h($submissions->edition) ?></td>
                <td><?= $this->Html->link($submissions->translator->name,
                  ['controller' => 'Translators', 'action' => 'view', $submissions->translator->id]) ?></td>
                <td><?= $this->Html->link($submissions->language->name,
                  ['controller' => 'Languages', 'action' => 'view', $submissions->language->id]) ?></td>
                <td><?= $this->Html->link($submissions->media->name,
                  ['controller' => 'Media', 'action' => 'view', $submissions->media->id]) ?></td>
            </tr>
            <?php endforeach; ?>
        </table>
        <?php endif; ?>
    </div>
</div>

<?php
/*
<td class="actions">
    <?= $this->Html->link(__('View'), ['controller' => 'Submissions', 'action' => 'view', $submissions->id]) ?>
    <?= $this->Html->link(__('Edit'), ['controller' => 'Submissions', 'action' => 'edit', $submissions->id]) ?>
    <?= $this->Form->postLink(__('Delete'), ['controller' => 'Submissions', 'action' => 'delete', $submissions->id], ['confirm' => __('Are you sure you want to delete # {0}?', $submissions->id)]) ?>
</td>
*/
 ?>
