<?php
/*
Template Name: Contact Us
*/
get_header();
?>

<section id="contact">

<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" id="contact" role="form">

			<!-- titre du formulaire -->
			<div class="row">
				<div class="col-md-12 text-center">
					<h2>Contactez-nous</h2>
				</div>
			</div>

			<!-- formulaire -->
			<div class="row" >

				<!-- colonne de gauche -->
				<div class="col-md-4">

					<div class="form-group">
						<label>Type d’événement :</label>
						<select id="selectEvent" class="form-control" onchange="setBackground()">
							<option>Mariage</option>
							<option>Baptême</option>
							<option>Cocktail</option>
							<option>Départ en retraite</option>
						</select>
					</div>

					

				<div class="form-group">
						<label>Date :</label>
						<input class="form-control" placeholder="Un calendrier se trouvera bientôt ici…"/>
					</div>
					<div class="form-group">
						<label>Adresse :</label>
						<textarea class="form-control"></textarea>
					</div>

				</div>

				<!-- colonne centrale -->
				<div class="col-md-4">

					<div class="form-group">
						<label>Nombre d’invités :</label>
						<input class="form-control"/>
					</div>

					<div class="form-group">
						<label>Réception :</label>
						<select  class="form-control">
							<option>Assise</option>
							<option>Debout</option>
							<option>Autre</option>
						</select>
					</div>

					<div class="form-group">
						<label>Type de réception :</label>
						<select class="form-control">
							<option>Déjeuner</option>
							<option>Dîner</option>
							<option>Soirée</option>
							<option>Déjeuner + Dîner</option>
							<option>Dîner + Soirée</option>
							<option>Déjeuner + Dîner + Soirée</option>
							<option>Autre</option>
						</select>
					</div>

<div class="row">

<div class="col-md-12">
		<label>Prestations :</label>
						</div>

	<div class="col-sm-6">
	<div class="checkbox">
	<label><input type="checkbox"/>Vaisselle</label>
							</div>
	<div class="checkbox">
	<label><input type="checkbox"/>Mobilier</label>
							</div>
			<div class="checkbox">
			<label><input type="checkbox"/>Boissons</label>
							</div>
						</div>

	<div class="col-sm-6">
	<div class="checkbox">
	<label><input type="checkbox"/>Décoration</label>
							</div>
		<div class="checkbox">
		<label><input type="checkbox"/>Nappage</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox"/>Personnel de service</label>
							</div>
						</div>

					</div>

				</div>

	<!-- colonne de droite -->
<div class="col-md-4">

<div class="form-group">
       <label for="inputname"> votre nom</label>
            <input type="text" name="name" class="form-control" id="inputname"/>


                        </div>
<div class="form-group">
	<label>Adresse e-mail :</label>
	<input type="email" name="email" class="form-control" id="inputemail" />


					</div>
<div class="form-group">
	<label>Téléphone :</label>
		<input type="téléphone" name="téléphone" class="form-control" id="inputemail" class="form-control"/>



					</div>
	<div class="form-group">
		<label>Informations complémentaires :</label>
				<textarea name="message" id="inputmessage" maxlength="500" class="form-control"  class="form-control">  </textarea>

 
					</div>

				</div>

			<!-- fin du formulaire -->
			</div>

			<!-- bouton de validation -->
	<div class="row">
		<div class="col-md-12 text-center">
			<button type="submit" name="submit" class="btn btn-default btn-lg">Envoyer</button>
				</div>
			</div>

		</form>

<?php/*
session_start();
     $to      = $_POST['email'];
     $subject = 'contact clien';
     $message = $_POST['message'];
     $headers = 'FROM: abdulrahman.rasho@gmail.com';

     mail($to, $subject, $message, $headers);*/
     
 ?>


		
</section>

<?php get_footer(); ?>
