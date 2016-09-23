<?php
/**
 * Template Name: none
 *
 * @package WordPress
 * @subpackage prestro
 *
 */
get_header();
echo "<div id='content'>";
the_post();
echo the_content();
get_footer(); 

?>