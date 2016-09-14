<?php
/**
*Template Name: Traiteur - page enfant
*
* @package WordPress
*
*/
?>
<div id="img-left">
  <div class="img-left-background img-responsive fullwidth">
  	<img class="img-traiteur" src="<?php the_post_thumbnail_url(array(500,300)); ?>" />
  </div>
	<div class="img-foreground fullwidth">
		<p class="entre color-white"><?php the_title(); ?></p>
	</div>
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
<div>
