<?php
/**
*Template Name: traiteur
*
* @package WordPress
*
*/

get_header();
?>

<div class="container container-traiteur">
	<div class="nopad img-container col-xs-12 col-sm-4 col-lg-4">
		<div id="img-left"><img class="img-left-background img-responsive fullwidth" src="<?php bloginfo('template_url'); ?>/images/entre.jpg"></div>
		<div class="img-foreground fullwidth">
			<p class="entre color-white">Entrée</p>
		</div>
	</div>
	<div class="nopad img-container col-xs-12 col-sm-4 col-lg-4">
		<div id="img-left"><img class="img-left-background img-responsive fullwidth" src="<?php bloginfo('template_url'); ?>/images/plat.jpg"></div>
		<div class="img-foreground fullwidth">
			<p class="entre color-white">Plat</p>
		</div>
	</div>
	<div class="nopad img-container col-xs-12 col-sm-4 col-lg-4">
		<div id="img-left"><img class="img-left-background img-responsive fullwidth" src="<?php bloginfo('template_url'); ?>/images/dessert.jpg"></div>
		<div class="img-foreground fullwidth">
			<p class="entre color-white">Dessert</p>
		</div>
	</div>
</div>

<?php get_footer(); ?>