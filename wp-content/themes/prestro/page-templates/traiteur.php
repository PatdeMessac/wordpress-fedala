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
    <!-- <div class="modal-header">
      <span class="close">times</span>
      <h2><a href="#">Connectez-vous</a></h2>
    </div> -->
    <div class="modal-body">
    	<span class="close">×</span>
    	<h3>Information</h3>
    	<p>Inscrivez-vous puis connectez-vous pour connaître nos tarifs !</p>
    </div>
    <!-- <div class="modal-footer">
      <h3>Modal Footer</h3>
    </div> -->
  </div>
</div>
<?php endif;?>

<div class="container-traiteur">
	<div class="row">
		<?php
			$query = new WP_Query();
			$all_pages = $query->query(array('post_type' => 'page'));
			$traiteur =  get_page_by_title('Traiteur');
			$subpages = array_reverse(get_page_children($traiteur->ID, $all_pages));
			foreach ($subpages as $post):
		?>
		<div class="col-lg-3 col-sm-6">
			<img class="img-responsive" src="<?php the_post_thumbnail_url(); ?>" />
			<div class="img-foreground">
				<p><?php the_title(); ?></p>
			</div>
			<div class="price-ground style-3">
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
									echo $prix;
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
<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
//var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
window.onload = function() {
    modal.style.display = "block";
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
</script>
<?php get_footer(); ?>
