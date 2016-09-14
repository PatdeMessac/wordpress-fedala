<?php
/**
 * Template Name: Decoration
 *
 * @package WordPress
 * @subpackage prestro
 *
 */
get_header();
?>

<!-- location debut -->
<div style="width:1000px;margin:80px auto;">
        <div id="ninja-slider" style="float:left;">
            <div class="slider-inner">
                <ul>
                    <li>
                        <a class="ns-img" href="../../../../../wordpress/wp-content/themes/prestro/images/slider-1.jpg"></a>
                    </li>
                                     <li>
                        <a class="ns-img" href="../../../../../wordpress/wp-content/themes/prestro/images/slider-2.jpg"></a>
                    </li>
                                                         <li>
                        <a class="ns-img" href="../../../../../wordpress/wp-content/themes/prestro/images/slider-3.jpg"></a>
                    </li>
                </ul>
                <div class="fs-icon" title="Expand/Close"></div>
            </div>
        </div>
        <div id="thumbnail-slider" style="float:left;">
            <div class="inner">
                <ul>
                    <li>
                        <a class="thumb" href="../../../../../wordpress/wp-content/themes/prestro/images/slider-1.jpg"></a>
                    </li>
                                      <li>
                        <a class="thumb" href="../../../../../wordpress/wp-content/themes/prestro/images/slider-2.jpg"></a>
                    </li>
                                                          <li>
                        <a class="thumb" href="../../../../../wordpress/wp-content/themes/prestro/images/slider-3.jpg"></a>
                    </li>
                </ul>
            </div>
        </div>
        <div style="clear:both;"></div>
    </div>
    
    <div class="row">
        <div class="scroll no-pad col-sm-3">
            <?php query_posts('category_name=image-deco-scroll'); ?>
	<?php if(have_posts()) : ?>
	    <?php while(have_posts()) : the_post();?>
			<div class="nopad img-container col-xs-12 col-sm-12 col-lg-12">

				    <div class="tg img-responsive fullwidth">
				    	<img class="img-traiteur" src="<?php the_post_thumbnail_url(array(500,300)); ?>" />
				    </div>
					<div class="img-foreground fullwidth">
						<p class="entre color-white"><?php the_title(); ?></p>
					</div>

			</div>
	    <?php endwhile; ?>
	<?php endif; ?>
           <!-- <div class="img-1"></div>
            <div class="img-1"></div>
            <div class="img-1"></div>
            <div class="img-1"></div>
            <div class="img-1"></div>
            <div class="img-1"></div>
            <div class="img-1"></div>-->
        </div>
        <div class="col-sm-6">
           <div class="contenu text-center">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos ipsa odit dolore. Quos beatae, dolor voluptate officiis sequi suscipit aperiam optio alias, eaque minus nisi dolore ea maxime asperiores a!</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos ipsa odit dolore. Quos beatae, dolor voluptate officiis sequi suscipit aperiam optio alias, eaque minus nisi dolore ea maxime asperiores a!</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos ipsa odit dolore. Quos beatae, dolor voluptate officiis sequi suscipit aperiam optio alias, eaque minus nisi dolore ea maxime asperiores a!</p>
            </div>
        </div>
<div class="scroll no-pad col-sm-3">
            <div class="img-1"></div>
            <div class="img-1"></div>
            <div class="img-1"></div>
            <div class="img-1"></div>
            <div class="img-1"></div>
            <div class="img-1"></div>
            <div class="img-1"></div>
            <div class="img-1"></div>
        </div>
    </div>


        <?php get_footer(); ?>
