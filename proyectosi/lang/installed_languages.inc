<?php

/* How to make new entries here for non-packaged languages:

-- 'code' should match the name of the directory for the language under \lang
.-- 'name' is the name that will be displayed in the language selection list (in Users and Display Setup)
-- 'rtl' only needs to be set for right-to-left languages like Arabic and Hebrew
-- 'encoding' used in translation file
-- 'version' always set to '' for manually installed languages.
-- 'path' installation path related to FA root (e.g. 'lang/en_US').
*/


$installed_languages = array (
  0 => 
  array (
    'code' => 'C',
    'name' => 'English',
    'encoding' => 'iso-8859-1',
  ),
  1 => 
  array (
    'name' => 'Greek',
    'package' => 'el_GR',
    'code' => 'el_GR',
    'encoding' => 'UTF-8',
    'version' => '2.4.1-3',
    'path' => 'lang/el_GR',
  ),
  2 => 
  array (
    'name' => 'Spanish (Chile)',
    'package' => 'es_CL',
    'code' => 'es_CL',
    'encoding' => 'utf-8',
    'version' => '2.4.7-2',
    'path' => 'lang/es_CL',
  ),
  3 => 
  array (
    'name' => 'Spanish (Spain)',
    'package' => 'es_ES',
    'code' => 'es_ES',
    'encoding' => 'utf-8',
    'version' => '2.4.1-3',
    'path' => 'lang/es_ES',
  ),
);

$dflt_lang = 'el_GR';
