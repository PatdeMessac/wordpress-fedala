
<!-- barre de navigation - début -->
<nav>
	<a href="<?php echo esc_url(home_url('/')); ?>" title="<?php bloginfo('name'); ?>" rel="home">
		<span><?php bloginfo('name'); ?></span>
	</a>
	<?php $post = get_page_by_title('Contact'); ?>
	<div>
		<a title="Contact" href="<?php the_permalink(); ?>">Contact</a>
		<?php
			if (is_user_logged_in()) {
				echo "<a title='Déconnexion' href='wp-login.php?action=logout&redirect_to=".esc_url(home_url('/'))."'>Déconnexion</a>";
			} else {
				echo "<a title='Connexion' href='wp-login.php?redirect_to=".esc_url(home_url('/'))."'>Connexion</a>";
				echo "<a title='Inscription' href='wp-signup.php?redirect_to=".esc_url(home_url('/'))."'>Inscription</a>";
			}
		?>
	</div>
</nav>
<!-- barre de navigation - fin -->

