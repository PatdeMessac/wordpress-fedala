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
    <div class="centrage">
        <ul class="nav navbar-nav" id="onglets">
            <li class="dropdown">
                <a class="dropdown-toggle vaisselle" data-toggle="dropdown" href="#">Vaisselle</a>
                <ul class="dropdown-menu">
                    <hr class="nomarg" />
                    <li><a href="#couvert" onclick="show('couvert')" class="couverts">Couverts</a></li>
                    <hr class="nomarg" />
                    <li><a href="#service_table" onclick="show('service_table')">Services de tables</a></li>
                    <hr class="nomarg" />
                    <li><a href="#">Verres</a></li>
                    <hr class="nomarg" />
                </ul>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Mobilier</a>
                <ul class="dropdown-menu">
                    <hr class="nomarg" />
                    <li><a href="#">Chaise</a></li>
                    <hr class="nomarg" />
                    <li><a href="#">Tables</a></li>
                    <hr class="nomarg" />
                    <li><a href="#">Lorem</a></li>
                    <hr class="nomarg" />
                </ul>
                
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Art de la table</a>
                <ul class="dropdown-menu">
                    <hr class="nomarg" />
                    <li><a href="#">Nappe</a></li>
                    <hr class="nomarg" />
                    <li><a href="#">Fleurs</a></li>
                    <hr class="nomarg" />
                    <li><a href="#">Lorem</a></li>
                    <hr class="nomarg" />
                </ul>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Exterieur</a>
                <ul class="dropdown-menu">
                    <hr class="nomarg" />
                    <li><a href="#">Lorem</a></li>
                    <hr class="nomarg" />
                    <li><a href="#">Lorem</a></li>
                    <hr class="nomarg" />
                    <li><a href="#">Lorem</a></li>
                    <hr class="nomarg" />
                </ul>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Accessoires</a>
                <ul class="dropdown-menu">
                    <hr class="nomarg" />
                    <li><a href="#">Lorem</a></li>
                    <hr class="nomarg" />
                    <li><a href="#">Lorem</a></li>
                    <hr class="nomarg" />
                    <li><a href="#">Lorem</a></li>
                    <hr class="nomarg" />
                </ul>
            </li>
        </ul>
    </div>

    <div class="row">
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
        <div class="col-sm-6">
            <div class="contenu">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos ipsa odit dolore. Quos beatae, dolor voluptate officiis sequi suscipit aperiam optio alias, eaque minus nisi dolore ea maxime asperiores a!
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

    <script>
        function show(target) {
            var list_hide = document.getElementsByClassName('cacher');
            for (var i = 0; i < list_hide.length; i++) {
                list_hide[i].style.display = 'none';
            }
            document.getElementById(target).style.display = 'flex';
            document.getElementById('content-height').style.marginTop = '80px';
            document.getElementById('onglets').style.marginTop = '80px';
        }
    </script>


    <?php get_footer(); ?>