<?php
/**
*Template Name: traiteur
*
* @package WordPress
*
*/

$separateur = " - ";

get_header();

?>

<?php  if (!is_user_logged_in()):?>
<!-- The Modal -->
<div id="myModal" class="modal">
	<!-- Modal content -->
	<div class="modal-content">
		<div class="modal-body">
			<span class="close">×</span>
			<?php
				query_posts('category_name=modal');
				while (have_posts()) {
					the_post();
					echo "<h3>"; the_title(); echo "</h3>\n";
					echo "<p>"; the_content(); echo "</p>\n";
				}
			?>
		</div>
	</div>
</div>
<?php endif;?>

<div class="container-traiteur">
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<?php
				$query = new WP_Query();
				$all_pages = $query->query(array('post_type' => 'page'));
				$traiteur =  get_page_by_title('Traiteur');
				$subpages = array_reverse(get_page_children($traiteur->ID, $all_pages));
				foreach ($subpages as $post):
			?>
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
				<div class="img-foreground col-lg-12">
					<img class="img-responsive" src="<?php the_post_thumbnail_url(); ?>" />
					<p><?php the_title(); ?></p>
				</div>
				<div class="price-ground col-lg-12">
					<ul>
						<?php
							$liste_de_plats = explode("\n", $post->post_content);
							foreach ($liste_de_plats as $plat) {
								if (preg_match('/[a-z]/i', $plat)) {
									$plat_splitted = explode($separateur, $plat);
									$nom = $plat_splitted[0];
									$prix = $plat_splitted[1];
									echo "<li class='liste_prix'>";
									echo $nom;
									if (is_user_logged_in()) {
										echo $separateur;
										echo "<span class='prix_traiteur'>" . $prix . "</span>";
									}
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
</div>
<script>
<?php  if (!is_user_logged_in()):?>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
//var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal
window.onload = function() {
    modal.style.display = "flex";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
<?php endif; ?>
</script>

<?php get_footer(); ?>
