<?php

require 'model/Model.php';

function Home()
{
    require 'vue/vueHome.php';
}

function Bands()
{
    $bands = getBands();
    require 'vue/vueBands.php';
}
