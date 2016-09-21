<?php
/**
*Template Name: traiteur
*
* @package WordPress
*
*/

get_header();

?>

<div class="container-traiteur">
	<div class="row">
		<?php
			$query = new WP_Query();
			$all_pages = $query->query(array('post_type' => 'page'));
			$traiteur =  get_page_by_title('Traiteur');
			$subpages = array_reverse(get_page_children($traiteur->ID, $all_pages));
			foreach ($subpages as $post):
		?>
		<div class="col-sm-4">
			<img src="<?php the_post_thumbnail_url(); ?>" />
			<div class="img-foreground">
				<p><?php the_title(); ?></p>
			</div>
			<div class="price-ground style-3">
				<ul>
					<?php
						$liste_de_plats = explode("\n", $post->post_content);
						foreach ($liste_de_plats as $plat) {
							if (preg_match('/[a-z]/i', $plat)) {
								echo "<li>";
								echo $plat;
								echo "</li>\n";
							}
						}
					?>
				</ul>
			</div>
		</div>
		<?php endforeach; ?>
	</div>
</div>

<?php get_footer(); ?>
