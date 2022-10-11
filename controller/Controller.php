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

function Artists()
{
    $artists = getArtists();
    require 'vue/vueArtists.php';
}

function Albums()
{
    $albums = getAlbums();
    require 'vue/vueAlbums.php';
}

function Error404()
{
    require 'vue/vueError.php';
}