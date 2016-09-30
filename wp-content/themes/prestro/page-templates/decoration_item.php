<?php
/**
* Template Name: Décoration Item
*
* @package WordPress
*
*/
?>
<?php get_header(); ?>

<!-- Début du block container -->
<div class="wrapper_deco">
  <div class="container-fluid">
  	<div class="row">
  		<div class="col-md-10 col-md-offset-1">
        <div class="ariane col-md-12">
            <ul>
              <li><a href="#">categories</a></li>
              <li><a href="#">list_item</a></li>
              <li><a href="#">item</a></li>
            </ul>
        </div>
  			<div class="preview_item col-md-2">
          <div class="item_preview container-fluid">
            <img class="img-responsive"src="" alt="" />
          </div>
          <div class="item_preview container-fluid">
            <img class="img-responsive"src="" alt="" />
          </div>
          <div class="item_preview container-fluid">
            <img class="img-responsive"src="" alt="" />
          </div>
  			</div>
        <div class="box_item_large col-md-8">
          <div class="item container-fluid">
            <img class="img-responsive" src="" alt="" />
            <div class="arrows">
              <!-- Utiliser un before after pour gerer l'écartement -->
            </div>
          </div>
        </div>

  		</div>
  	</div>
  </div>
</div>
<!-- Fin du block container -->
<?php get_footer(); ?>
