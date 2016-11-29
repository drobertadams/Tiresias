<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Work'), ['action' => 'edit', $work->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Work'), ['action' => 'delete', $work->id], ['confirm' => __('Are you sure you want to delete # {0}?', $work->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Works'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Work'), ['action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="works view large-9 medium-8 columns content">
    <h3><?= h($work->title) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Title') ?></th>
            <td><?= h($work->title) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($work->id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Created On') ?></th>
            <td><?= h($work->created_on) ?></td>
        </tr>
    </table>
    <div class="related">
        <h4><?= __('Related Submissions') ?></h4>
        <?php if (!empty($work->submissions)): ?>
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
            <?php foreach ($work->submissions as $submissions): ?>
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
