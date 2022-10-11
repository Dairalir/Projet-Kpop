<?php ob_start(); ?>
<table>
    <?php foreach ($bands as $band): ?>
        <tr>
        <td><img src="assets/images/logos/<?=$band->logo?>" width="300px"></td>
            <td>
                <b></b><?= $band->name?><br>
                <b>Label : </b><?= $band->label?><br>
                <b>Date de création : </b><?= $band->creation_year?>
            </td>
            
        </tr>
    <?php endforeach; ?>
</table>
<?php $content = ob_get_clean(); ?>

<?php require 'template.php'; ?>