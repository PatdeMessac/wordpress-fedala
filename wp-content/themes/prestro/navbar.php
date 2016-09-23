<?php
	$current_page_url = esc_url(get_the_permalink());
?>

<!-- barre de navigation - début -->
<nav>
	<a href="<?php echo esc_url(home_url('/')); ?>" title="<?php bloginfo('name'); ?>" rel="home">
		<span><?php bloginfo('name'); ?></span>
	</a>
	
	<div>
		<a title="Contact" href="<?php  echo esc_url( get_permalink( get_page_by_title( 'Contact' ) ) ); ?>">Contact</a> 
		<?php
			if (is_user_logged_in()) {
				echo "<a title='Déconnexion' href='wp-login.php?action=logout&redirect_to=".$current_page_url."'>Déconnexion</a>";
			} else {
				echo "<a title='Connexion' href='wp-login.php?redirect_to=".$current_page_url."'>Connexion</a>";
				echo "<a title='Inscription' href='wp-signup.php?redirect_to=".$current_page_url."'>Inscription</a>";
			}
		?>
	</div>
</nav>
<!-- barre de navigation - fin -->

