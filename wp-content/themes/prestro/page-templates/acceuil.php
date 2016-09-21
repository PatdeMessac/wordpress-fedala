<?php
/**
 * Template Name: Accueil
 *
 * @package WordPress
 * @subpackage prestro
 *
 */

the_post();
$description = get_the_content();

get_header();

?>

<div class="container-fluid">
	
	<!-- bandeau 2 images - début -->
	<div class="row">
		
		<!-- image "Décoration" -->
		<?php $post = get_page_by_title('Décoration'); ?>
		<div class="left col-lg-5 col-lg-offset-1">
			<a href="<?php the_permalink(); ?>">
				<img class="img-accueil" src="<?php the_post_thumbnail_url(array(250,250)); ?>" />
			</a>
		</div>
		
		<!-- image "Traiteur" -->
		<?php $post = get_page_by_title('Traiteur'); ?>
		<div class="right col-lg-5">
			<a href="<?php the_permalink(); ?>">
				<img class="img-accueil" src="<?php the_post_thumbnail_url(array(250,250)); ?>" />
			</a>
		</div>
		
	</div>
	<!-- bandeau 2 images - fin -->
	
	<div class="parallax2"></div>
	
	<!-- présentation - début -->
	<div class="row">
		<div class="presentation col-md-12">
			<div class="row">
				<div class="col-md-12 text-center">
				 <h2 class="fedala_title">Fedala</h2>
				</div>
				<div class="col-md-offset-3 col-md-6 text-center">
					<?php
						foreach ( explode("\n", $description) as $bloc ) {
							if (preg_match('/[a-z]/i', $bloc)) {
								echo "<p>";
								echo $bloc;
								echo "</p>\n";
							}
						}
					?>
				</div>
			</div>
		</div>
	</div>
	<!-- présentation - fin -->
	
	<!-- témoignages - début -->
	<div class="row">
		<div class="temoignages col-md-12">
			<div class="parallax3">
				<?php wp_text_slider(); ?>
			</div>
		</div>
	</div>
	<!-- témoignages - fin -->
	
</div>

<?php get_footer(); ?>
