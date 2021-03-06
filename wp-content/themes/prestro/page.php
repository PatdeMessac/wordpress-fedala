<?php
/**
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package prestro
 */

get_header(); ?>
<div id="content" class="site-content container">
	<div id="primary" class="content-area col-sm-12 col-md-8">
		<main id="main" class="site-main" role="main">

			<?php while ( have_posts() ) : the_post(); ?>

				<?php get_template_part( 'template-parts/content', 'page' ); ?>

				<?php
					// If comments are open or we have at least one comment, load up the comment template
					if ( comments_open() || '0' != get_comments_number() ) :
						comments_template();
					endif;
				?>

			<?php endwhile; // end of the loop. ?>

      <?php if (is_front_page() && ! is_home()) : ?>

         <!-- parallax - début -->
         	<!-- TODO -->
         <!-- parallax - fin -->

         <!-- services - début -->
         	<!-- TODO -->
         <!-- services - fin -->

         <!-- témoignages - début -->
         	<!-- TODO -->
         <!-- témoignages - fin -->
      
      <?php endif; ?>

		</main><!-- #main -->
	</div><!-- #primary -->

<?php // get_sidebar(); ?>
<?php get_footer(); ?>
