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
	<a href="#" id="back-to-top" title="Retour en haut"><i class="fa fa-chevron-up" aria-hidden="true"></i></a>
	<!-- ronald bandeau 2 images -->
	<div class="wrapper_service row">
		<!-- image "Décoration" -->
		<?php $post = get_page_by_title('Décoration'); ?>
		<div class="col-sm-5 col-sm-offset-1 marg-resp">
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
		<div class="col-sm-5">
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
	<!--ronald bandeau 2 images - fin -->

	<?php $post = get_page_by_title('Parallax1'); ?>
	<div class="parallax-window" data-parallax="scroll" data-image-src="<?php the_post_thumbnail_url();?>"></div>

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
			<?php $post = get_page_by_title('Parallax2'); ?>
			<div class="parallax-window" data-parallax="scroll" data-image-src="<?php the_post_thumbnail_url();?>"><?php wp_text_slider(); ?></div>
		</div>
	</div>
	<!-- témoignages - fin -->

</div>

<?php get_footer(); ?>
<script>
    /*$('.left').mouseover(function(){*/
    $(window).load(function(){
        $('.block_service').clearQueue().animate({"bottom": "30%"},1500);
        $('.separated').delay(2000).animate({"width":"50%"});
        $('.box_extract').delay(2000).fadeIn();
    });
    /*$('.left').mouseout(function(){
        $('.block_service').clearQueue().animate({"bottom": "-90px"},1500);
    });*/
    if ($('#back-to-top').length) {
    var scrollTrigger = 100, // px
        backToTop = function () {
            var scrollTop = $(window).scrollTop();
            if (scrollTop > scrollTrigger) {
                $('#back-to-top').addClass('show');
            } else {
                $('#back-to-top').removeClass('show');
            }
        };
    backToTop();
    $(window).on('scroll', function () {
        backToTop();
    });
    $('#back-to-top').on('click', function (e) {
        e.preventDefault();
        $('html,body').animate({
            scrollTop: 0
        }, 700);
    });
}
</script>
