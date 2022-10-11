<?php ob_start(); ?>
<table>
    <?php foreach ($albums as $album): ?>
        <tr>
            <td><?= $album->name?></td>
        </tr>
    <?php endforeach; ?>
</table>
<?php $content = ob_get_clean(); ?>

<?php require 'template.php'; ?>