<?php ob_start(); ?>
<table>
    <?php foreach ($artists as $artist): ?>
        <tr>
            <td><?= $artist->surname?> <?= $artist->name?></td>
        </tr>
    <?php endforeach; ?>
</table>
<?php $content = ob_get_clean(); ?>

<?php require 'template.php'; ?>