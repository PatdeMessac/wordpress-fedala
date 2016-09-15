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
<!--<div class="parallax"></div>-->
<div id="box_service">
    <div class="primary">
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
    </div>
</div>
<div class="container-fluid">
	<div class="row">
		
		<!-- présentation - début -->
		<div class="presentation col-md-12">
			<div class="row">
				<div class="col-md-12 text-center">
				 <h2>Fedala</h2>
				</div>
				<div class="col-md-offset-2 col-md-8">
					<p>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat temporibus sed architecto ut quasi laboriosam quam provident fuga voluptate aspernatur nisi maiores earum magnam, quidem ipsam omnis necessitatibus molestiae laborum! </br>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat temporibus sed architecto ut quasi laboriosam quam provident fuga voluptate aspernatur nisi maiores earum magnam, quidem ipsam omnis necessitatibus molestiae laborum! </br>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat temporibus sed architecto ut quasi laboriosam quam provident fuga voluptate aspernatur nisi maiores earum magnam, quidem ipsam omnis necessitatibus molestiae laborum!
					</p>
				</div>
			</div>
		</div>
		<!-- présentation - fin -->

<div class="parallax2"></div>

		<!-- services - début -->
		<div class="services col-md-12">
			<div class="row">
				<div class="col-md-12 ">
					<div class="row">
						<div class="img-responsive col-md-3">
							<h3>Super image</h3>
						</div>
						<div class="img-responsive col-md-offset-1 col-md-3">
							<h3>modifiable</h3>
						</div>
						<div class="img-responsive col-md-offset-1 col-md-3">
							<h3>par client</h3>
						</div>
					</div>
				</div>
				<div class="col-md-12 ">
					<div class="row">
						<div class="col-md-3">
							<h3>Traiteur</h3>
						</div>
						<div class="col-md-offset-1 col-md-3">
							<h3>Décoration</h3>
						</div>
						<div class="col-md-offset-1 col-md-3">
							<h3>Location</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- services - fin -->

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
