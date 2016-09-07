<?php
/**
*Template Name: traiteur
*
* @package WordPress
*
*/

get_header();


/*$display="";
$children = get_sub_children();
foreach ($variable as $key => $value) {
	echo 
}*/
?>

<div class="container container-traiteur">
	<div class="nopad img-container col-xs-12 col-sm-4 col-lg-4">
		<div id="img-left"><img class="img-left-background img-responsive fullwidth" src="<?php bloginfo('template_url'); ?>/images/entre.jpg"></div>
		<div class="img-foreground fullwidth">
			<p class="entre color-white">Entrée</p>
		</div>
	</div>
	<div class="nopad img-container col-xs-12 col-sm-4 col-lg-4">
		<div id="img-left"><img class="img-center-background img-responsive fullwidth" src="<?php bloginfo('template_url'); ?>/images/plat.jpg"></div>
		<div class="img-foreground fullwidth">
			<p class="entre color-white">Plat</p>
		</div>
	</div>
	<div class="nopad img-container col-xs-12 col-sm-4 col-lg-4">
		<div id="img-left"><img class="img-right-background img-responsive fullwidth" src="<?php bloginfo('template_url'); ?>/images/dessert.jpg"></div>
		<div class="img-foreground fullwidth">
			<p class="entre color-white">Dessert</p>
		</div>
	</div>
</div>

<div class="container container-traiteur nopad price-bloc">
	<div class="nopad col-xs-12 col-sm-4 col-lg-4">
		<div class="priceground">
			<div class="entire-list">
				<ul>
					<li>Pizza</li>
					<br>
					<li>Pizza</li>
					<br>
					<li>Pizza</li>
					<br>
					<li>Pizza</li>
					<br>
					<li>Pizza</li>
				</ul>
				<ul>
					<li>...5€</li>
					<br>
					<li>...5€</li>
					<br>
					<li>...5€</li>
					<br>
					<li>...5€</li>
					<br>
					<li>...5€</li>
				</ul>
			</div>

			<div class="bouton">
				<button type="submit">Next</button>
			</div>
		</div>
	</div>
	<div class="nopad col-xs-12 col-sm-4 col-lg-4">
		<div class="priceground">
			<div class="entire-list">
				<ul>
					<li>Pizza</li>
					<br>
					<li>Pizza</li>
					<br>
					<li>Pizza</li>
					<br>
					<li>Pizza</li>
					<br>
					<li>Pizza</li>
				</ul>
				<ul>
					<li>...5€</li>
					<br>
					<li>...5€</li>
					<br>
					<li>...5€</li>
					<br>
					<li>...5€</li>
					<br>
					<li>...5€</li>
				</ul>
			</div>

			<div class="bouton">
				<button type="submit">Next</button>
			</div>
		</div>
	</div>
	<div class="nopad col-xs-12 col-sm-4 col-lg-4">
		<div class="priceground">
			<div class="entire-list">
				<ul>
					<li>Pizza</li>
					<br>
					<li>Pizza</li>
					<br>
					<li>Pizza</li>
					<br>
					<li>Pizza</li>
					<br>
					<li>Pizza</li>
				</ul>
				<ul>
					<li>...5€</li>
					<br>
					<li>...5€</li>
					<br>
					<li>...5€</li>
					<br>
					<li>...5€</li>
					<br>
					<li>...5€</li>
				</ul>
			</div>

			<div class="bouton">
				<button type="submit">Next</button>
			</div>
		</div>
	</div>
</div>

<?php get_footer(); ?>