<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Translator'), ['action' => 'edit', $translator->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Translator'), ['action' => 'delete', $translator->id], ['confirm' => __('Are you sure you want to delete # {0}?', $translator->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Translators'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Translator'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Submissions'), ['controller' => 'Submissions', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Submission'), ['controller' => 'Submissions', 'action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="translators view large-9 medium-8 columns content">
    <h3><?= h($translator->name) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Name') ?></th>
            <td><?= h($translator->name) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($translator->id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Created On') ?></th>
            <td><?= h($translator->created_on) ?></td>
        </tr>
    </table>
    <div class="related">
        <h4><?= __('Related Submissions') ?></h4>
        <?php if (!empty($translator->submissions)): ?>
        <table cellpadding="0" cellspacing="0">
            <tr>
                <th scope="col"><?= __('Id') ?></th>
                <th scope="col"><?= __('Work Id') ?></th>
                <th scope="col"><?= __('Author Id') ?></th>
                <th scope="col"><?= __('Isbn') ?></th>
                <th scope="col"><?= __('Oclc') ?></th>
                <th scope="col"><?= __('Edition') ?></th>
                <th scope="col"><?= __('Translator Id') ?></th>
                <th scope="col"><?= __('Language Id') ?></th>
                <th scope="col"><?= __('Is Prose') ?></th>
                <th scope="col"><?= __('Media Id') ?></th>
                <th scope="col"><?= __('Notes') ?></th>
                <th scope="col"><?= __('Created On') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
            <?php foreach ($translator->submissions as $submissions): ?>
            <tr>
                <td><?= h($submissions->id) ?></td>
                <td><?= h($submissions->work_id) ?></td>
                <td><?= h($submissions->author_id) ?></td>
                <td><?= h($submissions->isbn) ?></td>
                <td><?= h($submissions->oclc) ?></td>
                <td><?= h($submissions->edition) ?></td>
                <td><?= h($submissions->translator_id) ?></td>
                <td><?= h($submissions->language_id) ?></td>
                <td><?= h($submissions->is_prose) ?></td>
                <td><?= h($submissions->media_id) ?></td>
                <td><?= h($submissions->notes) ?></td>
                <td><?= h($submissions->created_on) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['controller' => 'Submissions', 'action' => 'view', $submissions->id]) ?>
                    <?= $this->Html->link(__('Edit'), ['controller' => 'Submissions', 'action' => 'edit', $submissions->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['controller' => 'Submissions', 'action' => 'delete', $submissions->id], ['confirm' => __('Are you sure you want to delete # {0}?', $submissions->id)]) ?>
                </td>
            </tr>
            <?php endforeach; ?>
        </table>
        <?php endif; ?>
    </div>
</div>
