<?php

function getBdd()
{
    $bdd = new PDO("mysql:host=localhost;dbname=kpop;charset=utf8",'root','root',array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
    return $bdd;
}

function getBands()
{
    $bdd = getBdd();
    $requete = $bdd->query('SELECT *
    FROM `bands`');
    $bands = $requete->fetchAll(PDO::FETCH_OBJ);
    $requete->closeCursor();
    return $bands;
}


/*
function getArtists()
{
    $bdd = getBdd();
    $artists = $bdd->query('SELECT *
    FROM `artists`');
    return $artists;
}

function getAlbums()
{
    $bdd = getBdd();
    $albums = $bdd->query('SELECT *
    FROM `albums`');
    return $albums;
}*/