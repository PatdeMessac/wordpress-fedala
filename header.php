<?php
/**
 * The Header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="content">
 *
 * @package prestro
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
	<head>
		<meta charset="<?php bloginfo('charset'); ?>">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="user-scalable=no"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
		<link rel="profile" href="http://gmpg.org/xfn/11">
		<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">
		<script type="text/javascript">
			jQuery(window).load(function() {
				jQuery('#slider').nivoSlider();
			});
		</script>
		<?php wp_head(); ?>
	</head>
	<body <?php body_class(); ?>>
		<div id="page" class="hfeed site">
			<?php include('navbar.php'); ?>
				<div id="primary" class="fp-content-area">
			    <main id="main" class="site-main slider-wrapper" role="main">
			      <?php
			      	if (is_front_page() && ! is_home()) {
			      		include('news.php');
			      	}
			      ?>
