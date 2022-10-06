<?php ob_start(); ?>
<table>
    <?php foreach ($bands as $band): ?>
        <tr>
            <td><?= $band->name?></td>
        </tr>
    <?php endforeach; ?>
</table>
<?php $content = ob_get_clean(); ?>

<?php require 'template.php'; ?>