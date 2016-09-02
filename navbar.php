
<!-- barre de navigation - début -->
<div class="site-header">
	<nav id="prestro-top-nav" class="navbar prestro-navbar" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<div id="logo">
					<div class="site-logo">
					  <a href="<?php echo esc_url(home_url('/')); ?>" title="<?php echo esc_attr(get_bloginfo('name', 'display')); ?>" rel="home">
					    <span style="color:#<?php header_textcolor();?>"><?php bloginfo('name'); ?></span>
					  </a>
					</div>
				</div>
			</div>
			<?php prestro_header_menu(); ?>
		</div>
	</nav>
</div>
<!-- barre de navigation - fin -->

