<?php ob_start(); ?>
<h1>ERREUR 404 : La page n'existe pas.</h1>
<?php $content = ob_get_clean(); ?>

<?php require 'template.php'; ?>