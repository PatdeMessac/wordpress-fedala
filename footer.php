<?php
/**
 * The template for displaying the footer
 * @package prestro
 */
?>
</div><!-- #content -->

<!-- infos de copyright - début -->
<div id="footer-area">
	<div class="site-info container">
		<div class="copyright">
			<?php echo get_theme_mod("prestro_copyright",'Copyright © '. date_i18n( 'Y' ) .' . Designed by Code Académie.','prestro')."\n"; ?>
		</div>
	</div>
</div>
<!-- infos de copyright - fin -->

</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>