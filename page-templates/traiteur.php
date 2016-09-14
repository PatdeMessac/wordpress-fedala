<?php
/**
*Template Name: traiteur
*
* @package WordPress
*
*/

get_header();



// Set up the objects needed
//$my_wp_query = new WP_Query();
//$all_wp_pages = $my_wp_query->query(array('post_type' => 'page'));

// Get the page as an Object
//$traiteur =  get_page_by_title('Traiteur');

// Filter through all pages and find Portfolio's children
//$pagelist = get_page_children( $traiteur->ID, $all_wp_pages );

/*print_r($traiteur_children);

$pagelist = get_pages("child_of=".$post->post_parent."&parent=".$post->post_parent."&sort_column=menu_order&sort_order=asc");*/
/*$pages = array();
foreach ($pagelist as $page) {
   $pages[] += $page->ID;
   $nextID = $page->ID;
}*/

/*$current = array_search($post->ID, $pages);
$prevID = $pages[$current-1];
$nextID = $pages[$current+1];*/

?>

<div class="container container-traiteur">
<!-- image à la une -->
<?php query_posts('category_name=image-traiteur'); ?>
	<?php if(have_posts()) : ?>
	    <?php while(have_posts()) : the_post();?>
			<div class="nopad img-container col-xs-12 col-sm-4 col-lg-4">
			    <div id="img-left">
				    <div class="img-left-background img-responsive fullwidth">
				    	<img class="img-traiteur" src="<?php the_post_thumbnail_url(array(500,300)); ?>" />
				    </div>
					<div class="img-foreground fullwidth">
						<p class="entre color-white"><?php the_title(); ?></p>
					</div>
				</div>
			</div>
	    <?php endwhile; ?>
	<?php endif; ?>
</div>

<div class="container container-traiteur nopad price-bloc">
	<div class="nopad col-xs-12 col-sm-4 col-lg-4">
		<div class="price-ground border-left">
			<div class="entire-list">
				<ul>
					<?php
						$paged = ( get_query_var( 'paged' ) ) ? get_query_var( 'paged' ) : 1;
						$post_query = new WP_Query(array(
							'category_name' => 'entree',
							'posts_per_page' => 1,
							'paged' => $paged
						));
						while ($post_query->have_posts()) {
							$post_query->the_post();
							echo "<li>";
							the_title();
							echo "...";
							echo get_the_content();
							echo "</li>";
						}
					?>
				</ul>
			</div>
			<div>
				<?php
					next_posts_link( '<span class="arrow">← </span>', $post_query->max_num_pages );
					previous_posts_link( '<span class="arrow"> →</span>' );
					wp_reset_postdata();
				?>
			</div>
		</div>
	</div>
	<div class="nopad col-xs-12 col-sm-4 col-lg-4">
		<div class="price-ground border-center">
			<div class="entire-list">
				<ul>
				<?php
					$paged = ( get_query_var( 'paged' ) ) ? get_query_var( 'paged' ) : 1;
					$post_query = new WP_Query(array(
						'category_name' => 'plat',
						'posts_per_page' => 10,
						'paged' => $paged
					));
					while ($post_query->have_posts()) {
						$post_query->the_post();
						echo "<li>";
						the_title();
						echo "...";
						echo get_the_content();
						echo "</li>";
					}
				?>
				</ul>
			</div>
			<div>
				<?php
					next_posts_link( '<span class="arrow">← </span>', $post_query->max_num_pages );
					previous_posts_link( '<span class="arrow"> →</span>' );
					wp_reset_postdata();
				?>
			</div>
		</div>
	</div>
	<div class="nopad col-xs-12 col-sm-4 col-lg-4">
		<div class="price-ground border-right">
			<div class="entire-list">
				<ul>
				<?php
					$paged = ( get_query_var( 'paged' ) ) ? get_query_var( 'paged' ) : 1;
					$post_query = new WP_Query(array(
						'category_name' => 'dessert',
						'posts_per_page' => 10,
						'paged' => $paged
					));
					while ($post_query->have_posts()) {
						$post_query->the_post();
						echo "<li>";
						the_title();
						echo "...";
						echo get_the_content();
						echo "</li>";
					}
				?>
				</ul>
			</div>
			<div>
				<?php
					next_posts_link( '<span class="arrow">← </span>', $post_query->max_num_pages );
					previous_posts_link( '<span class="arrow"> →</span>' );
					wp_reset_postdata();
				?>
			</div>
		</div>
	</div>
</div>

<?php get_footer(); ?>