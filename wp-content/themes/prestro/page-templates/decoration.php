<?php
/**
* Template Name: Décoration
*
* @package WordPress
*
*/
?>
<?php get_header(); ?>

<div class="wrapper_deco">
	<div class="container-fluid">
		<div class="row">
			<article class="col-md-10 col-md-offset-1">
				<?php the_post(); the_content(); ?>
			</article>
		</div>
	</div>
</div>

<?php get_footer(); ?>
