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
    <?php query_posts('category_name=modal'); ?>
    	<?php if ( have_posts()) : ?>
			<?php while ( have_posts()) : the_post(); ?>
			        <h3><?php the_title(); ?></h3>
			        <p><?php the_content(); ?></p>
			<?php endwhile; ?>
		<?php endif; ?>
    	<!-- <h3>Information</h3>
    	<p>Inscrivez-vous puis connectez-vous pour connaître nos tarifs !</p> -->
    </div>
    <!-- <div class="modal-footer">
      <h3>Modal Footer</h3>
    </div> -->
  </div>
</div>
<?php endif;?>

<div class="container-traiteur">
	<div class="row">
		<div class="wrapper_tarif col-md-10 col-md-offset-1">
			<?php
				$query = new WP_Query();
				$all_pages = $query->query(array('post_type' => 'page'));
				$traiteur =  get_page_by_title('Traiteur');
				$subpages = array_reverse(get_page_children($traiteur->ID, $all_pages));
				foreach ($subpages as $post):
			?>
			<div class="col-sm-3">
				<div class="img-foreground col-lg-12">
					<img class="img-responsive" src="<?php the_post_thumbnail_url(); ?>" />
					<p><?php the_title(); ?></p>
				</div>
				<div class="price-ground style-3 col-lg-12">
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
					<button id="<?php echo $post->ID; ?>" class="prev-bouton" onclick="dixListPrev(this)" disabled>Précédents</button>
					<button id="<?php echo $post->ID; ?>" class="next-bouton" onclick="dixListNext(this)">Suivants</button>
				</div>
			</div>
			<?php endforeach; ?>
		</div>
	</div>
</div>
<script>

var liste_prix = document.getElementsByClassName("liste_prix");
var list = document.getElementsByTagName("ul");

for (i=0; i < liste_prix.length; i++) {
	liste_prix[i].style.display = "none";
}

for (i=0; i < list.length; i++) {
	var subList = list[i].children;
	for (j=0; j < 10; j++) {
		subList[j].style.display = "block";
	}
}

function dixListNext (button) {
	id = button.id;
	button.previousElementSibling.disabled = false;
	var liste = button.previousElementSibling.previousElementSibling.children;
	var action = 'hide';
	var compteur = 0;
	for (i = 0; i < liste.length; i++) {
		if (action == 'hide') {
			if (liste[i].style.display == 'block') {
				liste[i].style.display = 'none';
				compteur++;
				if (compteur == 10) {
					action = 'show';
					compteur = 0;
				}
			}
		} else if (action == 'show') {
			if (i == liste.length - 1) {
				button.disabled = true;
			}
			liste[i].style.display = 'block';
			compteur++;
			if (compteur == 10) {
				action = 'nothing';
			}
		}
	}

}
function dixListPrev (button) {
	button.nextElementSibling.disabled = false;
	var liste = button.previousElementSibling.children;
	var action = 'hide';
	var compteur = 0;
	for (i = liste.length - 1; i >= 0 ; i--) {
		if (action == 'hide') {
			if (liste[i].style.display == 'block') {
				liste[i].style.display = 'none';
				compteur++;
				if (compteur == 10) {
					action = 'show';
					compteur = 0;
				}
			} else {
				action = 'show'
				liste[i].style.display = 'block';
				compteur = 1;
			}
		} else if (action == 'show') {
			if (i = 0) {
				button.disabled = true;
			}
			liste[i].style.display = 'block';
			compteur++;
			if (compteur == 10) {
				action = 'nothing';
			}
		}
	}

}

<?php  if (!is_user_logged_in()):?>
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
<?php endif; ?>
</script>

<?php get_footer(); ?>
