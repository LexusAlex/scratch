<?php
ini_set('display_errors','On');

$connection = new \PDO('mysql:host=scratch-db;dbname=scratch;charset=utf8', 'root', 'root',[\PDO::ATTR_ERRMODE => \PDO::ERRMODE_EXCEPTION]);

$res = $connection->query('SELECT VERSION()');

var_dump($res->fetchAll());
?>