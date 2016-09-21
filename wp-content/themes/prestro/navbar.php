
<!-- barre de navigation - début -->
<nav>
	<a href="<?php echo esc_url(home_url('/')); ?>" title="<?php bloginfo('name'); ?>" rel="home">
		<span><?php bloginfo('name'); ?></span>
	</a>
	<?php $post = get_page_by_title('Contact'); ?>
	<div>
		<a title="Contact" href="<?php the_permalink(); ?>">Contact</a>
		<?php
			if (!is_user_logged_in()) {
				echo "<a title='Connexion' href='wp-login.php'>Connexion</a>";
			}
		?>
	</div>
</nav>
<!-- barre de navigation - fin -->

