<?php  

//id du film dont je veux extraire le synopsis
$id_imdb = '0114709';
//extraction du code html de la page imdb de mon film
$mapage = file_get_contents("http://www.imdb.com/title/tt{$id_imdb}/");


//	le synopsois se trouve entre la balise :
//	<div class="summary_text" itemprop="description">
//	et la balise :
//	</div>
 
$comd
preg_match_all("#<div [^>]*>(.*)</div>#Ui", $mapage, $resultat);


echo "$resultat[0]\n";
echo "$resultat[1]\n";






/*
//Connexion à la BDD contenant les films
$connection = pg_connect("host=127.0.0.1 port=5454 dbname=imdb user=eleve password=isen");

//Test d'erreur sur l'echec/réussite de la connexion à la BDD
if(!$connection)
{
	echo "Une erreur s'est produite sur la connexion !!!";
	exit;
}


//Requete sql permettant de rentrer les synopsis dans la BDD
$requete = pg_query($connection, "UPDATE film SET synopsis = 'Test pour le synospsis de Toy Story' WHERE id_film =1");

//Test d'erreur de la commande sql
if (!$requete)
{
	echo "Une erreur s'est produite sur la requete !!!\n\n";
	exit;
}
*/

?>