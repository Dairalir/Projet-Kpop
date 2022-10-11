<?php

require 'controller/Controller.php';

$action = null;

if (isset($_GET['action'])) {
    $action = $_GET['action'] ?? "index";

    switch($action) {
        case "index":
            return Home();
        case "bands":
            return Bands();
        case "artists":
            return Artists();
        case "albums":
            return Albums();
        default:
            return Error404();
    }
}else{
    Home();
}