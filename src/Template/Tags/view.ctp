<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Tag'), ['action' => 'edit', $tag->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Tag'), ['action' => 'delete', $tag->id], ['confirm' => __('Are you sure you want to delete # {0}?', $tag->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Tags'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Tag'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Article Tag Relation'), ['controller' => 'ArticleTagRelation', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Article Tag Relation'), ['controller' => 'ArticleTagRelation', 'action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="tags view large-9 medium-8 columns content">
    <h3><?= h($tag->name) ?></h3>
    <table class="vertical-table">
        <tr>
            <th><?= __('Name') ?></th>
            <td><?= h($tag->name) ?></td>
        </tr>
        <tr>
            <th><?= __('Id') ?></th>
            <td><?= $this->Number->format($tag->id) ?></td>
        </tr>
    </table>
    <div class="related">
        <h4><?= __('Related Article Tag Relation') ?></h4>
        <?php if (!empty($tag->article_tag_relation)): ?>
        <table cellpadding="0" cellspacing="0">
            <tr>
                <th><?= __('Id') ?></th>
                <th><?= __('Article Id') ?></th>
                <th><?= __('Tag Id') ?></th>
                <th class="actions"><?= __('Actions') ?></th>
            </tr>
            <?php foreach ($tag->article_tag_relation as $articleTagRelation): ?>
            <tr>
                <td><?= h($articleTagRelation->id) ?></td>
                <td><?= h($articleTagRelation->article_id) ?></td>
                <td><?= h($articleTagRelation->tag_id) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['controller' => 'ArticleTagRelation', 'action' => 'view', $articleTagRelation->id]) ?>

                    <?= $this->Html->link(__('Edit'), ['controller' => 'ArticleTagRelation', 'action' => 'edit', $articleTagRelation->id]) ?>

                    <?= $this->Form->postLink(__('Delete'), ['controller' => 'ArticleTagRelation', 'action' => 'delete', $articleTagRelation->id], ['confirm' => __('Are you sure you want to delete # {0}?', $articleTagRelation->id)]) ?>

                </td>
            </tr>
            <?php endforeach; ?>
        </table>
    <?php endif; ?>
    </div>
</div>
