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
   <div class="wrapper_service row">
    	<?php query_posts('category_name=image_gauche'); ?>
           	<?php if(have_posts()) : ?>
               	<?php while(have_posts()) : the_post();?>
        <div class="left col-lg-5 col-lg-offset-1">
           <div class="bloc_ensemble">
            <div class="block_img_service col-lg-12 row">
            <img class="img-accueil" src="<?php the_post_thumbnail_url(array(250,250)); ?>" />
            <div class="block_service col-lg-12 text-center">
                <div class="box_title col-lg-12">
                    <?php the_title('<h3  class="title_service col-lg-12">','</h3>'); ?>
                </div>
                <span class="separated"></span>
                <div class="box_extract col-lg-12">
                    <?php the_content('<p  class="content_service col-lg-12">','</p>'); ?>
                </div>
            </div>
          </div>
        </div>
            <?php endwhile; ?>
       <?php endif; ?>
       </div>
        <!--<div class="parallelogram small"></div>-->
        <?php query_posts('category_name=image_droite'); ?>
            <?php if(have_posts()) : ?>
                <?php while(have_posts()) : the_post();?>
        <div class="right col-lg-5">
              <div class="bloc_ensemble">
                <div class="block_img_service col-lg-12 row">
                <img class="img-accueil" src="<?php the_post_thumbnail_url(array(250,250)); ?>" />
                <div class="block_service col-lg-12 text-center">
                    <div class="box_title col-lg-12">
                        <?php the_title('<h3  class="title_service col-lg-12">','</h3>'); ?>
                    </div>
                    <span class="separated"></span>
                    <div class="box_extract col-lg-12">
                        <?php the_content('<p  class="content_service col-lg-12">','</p>'); ?>
                    </div>
                </div>
              </div>
            </div>
           <!--<div class="bloc_ensemble">
            <div class="block_img_service col-lg-12 row">
                <img class="img-accueil" src="<?php the_post_thumbnail_url(array(250,250)); ?>" />
        </div>-->
            <?php endwhile; ?>
       <?php endif; ?>
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
<script>
    /*$('.left').mouseover(function(){*/
    $(window).load(function(){
        $('.block_service').clearQueue().animate({"bottom": "110px"},1500);
        $('.separated').delay(2000).animate({"width":"50%"});
        $('.box_extract').delay(2000).fadeIn();
    });
    /*$('.left').mouseout(function(){
        $('.block_service').clearQueue().animate({"bottom": "-90px"},1500);
    });*/
</script>
