<?php
/**
 * Template Name: Accueil
 *
 * @package WordPress
 * @subpackage prestro
 *
 */
get_header();
?>
<div id="box_service container-fluid">
	<div class="row">
		<?php $post = get_page_by_title('Décoration'); ?>
		<div class="left col-lg-5 col-lg-offset-1">
			<a href="<?php the_permalink(); ?>">
				<img class="img-accueil" src="<?php the_post_thumbnail_url(array(250,250)); ?>" />
			</a>
		</div>
		<?php $post = get_page_by_title('Traiteur'); ?>
		<div class="right col-lg-5">
			<a href="<?php the_permalink(); ?>">
				<img class="img-accueil" src="<?php the_post_thumbnail_url(array(250,250)); ?>" />
			</a>
		</div>
	</div>

    <!--<div class="primary">
    	<?php query_posts('category_name=image_gauche'); ?>
           	<?php if(have_posts()) : ?>
               	<?php while(have_posts()) : the_post();?>
            <div class="parallelogram standar">
                <img class="img-accueil" src="<?php the_post_thumbnail_url(array(250,250)); ?>" />
            </div>
        		<?php endwhile; ?>
           <?php endif; ?>
            <div class="parallelogram small"></div>
            <?php query_posts('category_name=image_droite'); ?>
           		<?php if(have_posts()) : ?>
               		<?php while(have_posts()) : the_post();?>
            <div class="parallelogram standar">
                <img class="img-accueil" src="<?php the_post_thumbnail_url(array(250,250)); ?>" />
            </div>
            	<?php endwhile; ?>
           <?php endif; ?>
    </div>-->
</div>
<div class="parallax2"></div>
<div class="container-fluid">
	<div class="row">
		
		<!-- présentation - début -->
		<div class="presentation col-md-12">
			<div class="row">
				<div class="col-md-12 text-center">
				 <h2 class="fedala_title">Fedala</h2>
				</div>
				<div class="col-md-offset-3 col-md-6 text-center">
					<p>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat temporibus sed architecto ut quasi laboriosam quam provident fuga voluptate aspernatur nisi maiores earum magnam, quidem ipsam omnis necessitatibus molestiae laborum! </br>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat temporibus sed architecto ut quasi laboriosam quam provident fuga voluptate aspernatur nisi maiores earum magnam, quidem ipsam omnis necessitatibus molestiae laborum! </p>

				</div>
			</div>
		</div>
		<!-- présentation - fin -->

		<!-- témoignages - début -->
		<div class="temoignages col-md-12">
			<div class="parallax3">
				<?php wp_text_slider(); ?>
			</div>
		</div>
		<!-- services - début -->
		
	</div>
</div>

<?php get_footer(); ?>
