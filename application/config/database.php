<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

$active_group = 'default';

if ( file_exists( dirname( __FILE__ ) . '/local-config.php' ) ) {
    include( dirname( __FILE__ ) . '/local-config.php' );
  } else {
    $host = explode(".", $_SERVER['HTTP_HOST']);
    if(isset($host[1]) && $host[1] == "beingbui") {
        $active_group = "staging";
    } else {
        $active_group = "production";
    }
}

if (defined('CIUnit_Version')) {
	$active_group = 'local_test';
        if(isset($_SERVER['CIRCLECI'])){
            $active_group = 'server_test';
        }
}

/*
| -------------------------------------------------------------------
| DATABASE CONNECTIVITY SETTINGS
| -------------------------------------------------------------------
| This file will contain the settings needed to access your database.
|
| For complete instructions please consult the 'Database Connection'
| page of the User Guide.
|
| -------------------------------------------------------------------
| EXPLANATION OF VARIABLES
| -------------------------------------------------------------------
|
|	['hostname'] The hostname of your database server.
|	['username'] The username used to connect to the database
|	['password'] The password used to connect to the database
|	['database'] The name of the database you want to connect to
|	['dbdriver'] The database type. ie: mysql.  Currently supported:
				 mysql, mysqli, postgre, odbc, mssql, sqlite, oci8
|	['dbprefix'] You can add an optional prefix, which will be added
|				 to the table name when using the  Active Record class
|	['pconnect'] TRUE/FALSE - Whether to use a persistent connection
|	['db_debug'] TRUE/FALSE - Whether database errors should be displayed.
|	['cache_on'] TRUE/FALSE - Enables/disables query caching
|	['cachedir'] The path to the folder where cache files should be stored
|	['char_set'] The character set used in communicating with the database
|	['dbcollat'] The character collation used in communicating with the database
|				 NOTE: For MySQL and MySQLi databases, this setting is only used
| 				 as a backup if your server is running PHP < 5.2.3 or MySQL < 5.0.7
|				 (and in table creation queries made with DB Forge).
| 				 There is an incompatibility in PHP with mysql_real_escape_string() which
| 				 can make your site vulnerable to SQL injection if you are using a
| 				 multi-byte character set and are running versions lower than these.
| 				 Sites using Latin-1 or UTF-8 database character set and collation are unaffected.
|	['swap_pre'] A default table prefix that should be swapped with the dbprefix
|	['autoinit'] Whether or not to automatically initialize the database.
|	['stricton'] TRUE/FALSE - forces 'Strict Mode' connections
|							- good for ensuring strict SQL while developing
|
| The $active_group variable lets you choose which connection group to
| make active.  By default there is only one group (the 'default' group).
|
| The $active_record variables lets you determine whether or not to load
| the active record class
*/
 

$db['default']['hostname'] = 'localhost';
$db['default']['username'] = '';
$db['default']['password'] = '';
$db['default']['database'] = '';
$db['default']['dbdriver'] = 'mysql';
$db['default']['dbprefix'] = '';
$db['default']['pconnect'] = TRUE;
$db['default']['db_debug'] = TRUE;
$db['default']['cache_on'] = FALSE;
$db['default']['cachedir'] = '';
$db['default']['char_set'] = 'utf8';
$db['default']['dbcollat'] = 'utf8_general_ci';
$db['default']['swap_pre'] = '';
$db['default']['autoinit'] = TRUE;
$db['default']['stricton'] = FALSE;


$db['local_test']['hostname'] = 'localhost';
//$db['local_test']['port'] = 8889;
$db['local_test']['username'] = 'root';
$db['local_test']['password'] = '';
$db['local_test']['database'] = 'button_test';
$db['local_test']['dbdriver'] = 'mysql';
$db['local_test']['dbprefix'] = '';
$db['local_test']['pconnect'] = TRUE;
$db['local_test']['db_debug'] = TRUE;
$db['local_test']['cache_on'] = FALSE;
$db['local_test']['cachedir'] = '';
$db['local_test']['char_set'] = 'utf8';
$db['local_test']['dbcollat'] = 'utf8_general_ci';
$db['local_test']['swap_pre'] = '';
$db['local_test']['autoinit'] = TRUE;
$db['local_test']['stricton'] = FALSE;

$db['server_test']['hostname'] = 'localhost';
//$db['server_test']['port'] = 8889;
$db['server_test']['username'] = 'ubuntu';
$db['server_test']['password'] = '';
$db['server_test']['database'] = 'circle_test';
$db['server_test']['dbdriver'] = 'mysql';
$db['server_test']['dbprefix'] = '';
$db['server_test']['pconnect'] = TRUE;
$db['server_test']['db_debug'] = TRUE;
$db['server_test']['cache_on'] = FALSE;
$db['server_test']['cachedir'] = '';
$db['server_test']['char_set'] = 'utf8';
$db['server_test']['dbcollat'] = 'utf8_general_ci';
$db['server_test']['swap_pre'] = '';
$db['server_test']['autoinit'] = TRUE;
$db['server_test']['stricton'] = FALSE;

/* End of file database.php */
/* Location: ./application/config/database.php */