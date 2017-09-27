<?php
/**
 * Some general settings
 */
date_default_timezone_set('UTC');
set_time_limit(0);
ini_set("memory_limit","-1");
/**
 * Error reporting settings
 */
ini_set('display_errors', 'On');
error_reporting(E_ALL & ~E_NOTICE & ~E_STRICT & ~E_DEPRECATED & ~E_WARNING);
/**
 * Database related configuration
 * For DB_DRIVER use mysql for MySQL or pgsql for PostgreSQL
 */
define('DB_DRIVER',	    'mysql');
define('DB_HOST',	    'massscan-database');
define('DB_USERNAME',	'root');
define('DB_PASSWORD', 	'docker');
define('DB_DATABASE', 	'docker_massscan');
