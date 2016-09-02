
<!-- dernières nouvelles - début -->
<div id="home-slider" class="nivoSlider">
	<?php
    $args = array(
	    'category_name' => 'news',
	    'posts_per_page' => esc_attr(get_theme_mod('slider_loop'))
    );
    $slider_query = new WP_Query($args);
  	if ($slider_query->have_posts()) {
	  	while ($slider_query->have_posts()) {
				$slider_query->the_post();
				$thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), 'full' );
				$url = $thumb['0'];
				echo '<img title="#slidecaption';
				the_ID();
				echo '" src="'.esc_url(get_template_directory_uri().'/images/slider-1.jpg')."\" alt=\"news\" />\n";
			}
		}
		echo "</div>\n";
 		if ($slider_query->have_posts()) {
	 		while ($slider_query->have_posts()) {
	 			$slider_query->the_post();
	 			echo "<div id=\"slidecaption";
	 			the_ID();
	 			echo "\" class=\"nivo-html-caption\">\n\t<div class=\"slide-info\">\n\t\t<h2>";
	 			the_title();
	 			echo "</h2>\n\t\t<p>".get_the_content()."</p>\n\t</div>\n</div>\n";
	 		}
	 	}
	?>
<!-- dernières nouvelles - début -->

