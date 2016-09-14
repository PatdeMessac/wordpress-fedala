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
	<div class="row">
		<div class="nopad col-xs-12 col-sm-4 col-lg-4">
			<?php $post = get_page_by_title('Entrées'); ?>
			<div class="img-left-background img-responsive fullwidth">
				<img class="img-traiteur" src="<?php the_post_thumbnail_url(array(500,300)); ?>" />
			</div>
			<div class="img-foreground fullwidth">
				<p class="entre color-white"><?php the_title(); ?></p>
			</div>
			<div class="price-ground border-left">
				<div class="entire-list">
					<ul>
						<?php 
							$liste_de_plats = explode("\r\n\r\n", $post->post_content);
							foreach ($liste_de_plats as $plat) {
								echo "<li>";
								echo $plat;
								echo "</li>\n";
							}
						?>
					</ul>
				</div>
			</div>
		</div>
		<div class="nopad col-xs-12 col-sm-4 col-lg-4">
			<?php $post = get_page_by_title('Plats'); ?>
			<div class="img-left-background img-responsive fullwidth">
				<img class="img-traiteur" src="<?php the_post_thumbnail_url(array(500,300)); ?>" />
			</div>
			<div class="img-foreground fullwidth">
				<p class="entre color-white"><?php the_title(); ?></p>
			</div>
			<div class="price-ground border-left">
				<div class="entire-list">
					<ul>
						<?php 
							$liste_de_plats = explode("\r\n\r\n", $post->post_content);
							foreach ($liste_de_plats as $plat) {
								echo "<li>";
								echo $plat;
								echo "</li>\n";
							}
						?>
					</ul>
				</div>
			</div>
		</div>
		<div class="nopad col-xs-12 col-sm-4 col-lg-4">
			<?php $post = get_page_by_title('Desserts'); ?>
			<div class="img-left-background img-responsive fullwidth">
				<img class="img-traiteur" src="<?php the_post_thumbnail_url(array(500,300)); ?>" />
			</div>
			<div class="img-foreground fullwidth">
				<p class="entre color-white"><?php the_title(); ?></p>
			</div>
			<div class="price-ground border-left">
				<div class="entire-list">
					<ul>
						<?php 
							$liste_de_plats = explode("\r\n\r\n", $post->post_content);
							foreach ($liste_de_plats as $plat) {
								echo "<li>";
								echo $plat;
								echo "</li>\n";
							}
						?>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>	

<?php get_footer(); ?>
