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

	<!--Antoine bandeau 2 images - début -->
	<!--<div class="row bandeau-accueil">

		<!- image "Décoration" -->
		<!--<?php $post = get_page_by_title('Décoration'); ?>
		<div class="left col-xs-5 col-xs-offset-1">
			<a href="<?php the_permalink(); ?>">
				<img class="img-accueil" src="<?php the_post_thumbnail_url(array(250,250)); ?>" />
				<div class="img-foreground">
					<p><?php the_title(); ?></p>
				</div>
			</a>
		</div>-->

		<!-- image "Traiteur" -->
	<!--	<?php $post = get_page_by_title('Traiteur'); ?>
		<div class="right col-xs-5">
			<a href="<?php the_permalink(); ?>">
				<img class="img-accueil" src="<?php the_post_thumbnail_url(array(250,250)); ?>" />
				<div class="img-foreground">
					<p><?php the_title(); ?></p>
				</div>
			</a>
		</div>

	</div>-->
	<!-- bandeau 2 images - fin -->
	<!-- ronald bandeau 2 images -->
	<div id="box_service container-fluid">
	   <div class="wrapper_service row">

	     	<!-- image "Décoration" -->

	    <?php $post = get_page_by_title('Décoration'); ?>
	    <div class="left col-lg-5 col-lg-offset-1">
	      <a href="<?php the_permalink(); ?>">
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
	      </a>
	    </div>

	      <!-- image "Traiteur" -->

	    <?php $post = get_page_by_title('Traiteur'); ?>
	    <div class="right col-lg-5">
	      <a href="<?php the_permalink(); ?>">
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
	        </a>
	      </div>
			</div>
		</div>
	<!--ronald bandeau 2 images - fin -->

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
