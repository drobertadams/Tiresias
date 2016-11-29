<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Submission'), ['action' => 'edit', $submission->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Submission'), ['action' => 'delete', $submission->id], ['confirm' => __('Are you sure you want to delete # {0}?', $submission->id)]) ?> </li>
        <li><?= $this->Html->link(__('Submissions'), ['action' => 'index']) ?> </li>
    </ul>
</nav>
<div class="submissions view large-9 medium-8 columns content">
    <h3><?= h($submission->work->title) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= h($submission->id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Work') ?></th>
            <td><?= $submission->has('work') ? $this->Html->link($submission->work->title, ['controller' => 'Works', 'action' => 'view', $submission->work->id]) : '' ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Author') ?></th>
            <td><?= $submission->has('author') ? $this->Html->link($submission->author->name, ['controller' => 'Authors', 'action' => 'view', $submission->author->id]) : '' ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Isbn') ?></th>
            <td><?= h($submission->isbn) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Oclc') ?></th>
            <td><?= h($submission->oclc) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Edition') ?></th>
            <td><?= h($submission->edition) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Publication Year') ?></th>
            <td><?= h($submission->publication_year) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Translator') ?></th>
            <td><?= $submission->has('translator') ? $this->Html->link($submission->translator->name, ['controller' => 'Translators', 'action' => 'view', $submission->translator->id]) : '' ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Language') ?></th>
            <td><?= $submission->has('language') ? $this->Html->link($submission->language->name, ['controller' => 'Languages', 'action' => 'view', $submission->language->id]) : '' ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Media') ?></th>
            <td><?= $submission->has('media') ? $this->Html->link($submission->media->name, ['controller' => 'Media', 'action' => 'view', $submission->media->id]) : '' ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Collection') ?></th>
            <td><?= $submission->has('collection') ? $this->Html->link($submission->collection->name, ['controller' => 'Collections', 'action' => 'view', $submission->collection->id]) : '' ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Created By Name') ?></th>
            <td><?= h($submission->created_by_name) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Created By Email') ?></th>
            <td><?= h($submission->created_by_email) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($submission->id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Created On') ?></th>
            <td><?= h($submission->created_on) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Is Prose') ?></th>
            <td><?= $submission->is_prose ? __('Yes') : __('No'); ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Is Poetry') ?></th>
            <td><?= $submission->is_poetry ? __('Yes') : __('No'); ?></td>
        </tr>
    </table>
    <div class="row">
        <h4><?= __('Notes') ?></h4>
        <?= $this->Text->autoParagraph(h($submission->notes)); ?>
    </div>
</div>
