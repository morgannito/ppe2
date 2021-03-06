-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Lun 16 Avril 2018 à 15:18
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `shop`
--

-- --------------------------------------------------------

--
-- Structure de la table `adressearchive`
--

CREATE TABLE `adressearchive` (
  `id_adresseclient` int(11) NOT NULL,
  `libelle_adresseclient` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nomcomplet_adresseclient` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `societe_adresseclient` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `voie_adresseclient` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `complement_adresseclient` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lieuditbp_adresseclient` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `codepostal_adresseclient` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `etatprovince_adresseclient` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ville_adresseclient` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pays_adresseclient` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `adresseclient`
--

CREATE TABLE `adresseclient` (
  `id_adresseclient` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `libelle_adresseclient` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nomcomplet_adresseclient` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `societe_adresseclient` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `voie_adresseclient` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `complement_adresseclient` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lieuditbp_adresseclient` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `codepostal_adresseclient` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `etatprovince_adresseclient` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ville_adresseclient` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pays_adresseclient` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `typeadresse_adresseclient` int(11) NOT NULL,
  `idclient_type_adresseclient` int(11) NOT NULL,
  `adressedefaut_adresseclient` int(11) NOT NULL,
  `idclient_adressedefaut_adresseclient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `id_avis` int(11) NOT NULL,
  `idclient_idproduit_avis` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `date_avis` date NOT NULL,
  `titre_avis` varchar(255) NOT NULL,
  `description_avis` varchar(1000) NOT NULL,
  `note_avis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_categorie` int(11) NOT NULL,
  `id_categorie_parent` int(11) NOT NULL,
  `libelle_categorie` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `libelle_par_categorie` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo_categorie` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `libelle_id_categorie` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ordre_affichage` int(2) NOT NULL,
  `cle_affichage` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id_categorie`, `id_categorie_parent`, `libelle_categorie`, `libelle_par_categorie`, `photo_categorie`, `libelle_id_categorie`, `ordre_affichage`, `cle_affichage`) VALUES
(1, 1, 'chaussures', 'chaussures', '...', '1', 1, 1),
(2, 2, 'tshirt', 'tshirt', '', '2', 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `email_client` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nom_affichage` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mot_de_passe` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `civilite` int(11) NOT NULL,
  `nom_client` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `prenom_client` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `telephone_client` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_question` int(11) NOT NULL,
  `reponse` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `datecreation_client` date NOT NULL,
  `anonyme` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL,
  `datetime_commande` datetime NOT NULL,
  `etat_commande` float NOT NULL,
  `totalTTC` float NOT NULL,
  `totalHT` float NOT NULL,
  `totalTVA` float NOT NULL,
  `fraisportHT` float NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_adresse_facturation` int(11) NOT NULL,
  `id_adresse_livraison` int(11) NOT NULL,
  `num_commande` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `num_facture` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type_reglement` int(11) NOT NULL,
  `methode_reglement` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `liste_parametres_reglement` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `glpi_fournisseur`
--

CREATE TABLE `glpi_fournisseur` (
  `id` int(255) NOT NULL,
  `marque` varchar(255) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `cp` varchar(255) NOT NULL,
  `num` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `liaisonproduit`
--

CREATE TABLE `liaisonproduit` (
  `id_liaisonproduit` int(11) NOT NULL,
  `id_produitlie` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `ordre_affichage` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `lignecde`
--

CREATE TABLE `lignecde` (
  `id_lignecde` int(11) NOT NULL,
  `id_commande` int(11) NOT NULL,
  `libelle_produit` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `prixunitaireHT_produit` float NOT NULL,
  `quantite_produit` int(11) NOT NULL,
  `remise_produit` float NOT NULL,
  `tauxtaxe` float NOT NULL,
  `totalligne` float NOT NULL,
  `reference` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cle_id_commande_reference` int(11) NOT NULL,
  `id_declinaison_produit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `photoproduit`
--

CREATE TABLE `photoproduit` (
  `id_photoproduit` int(11) NOT NULL,
  `photo_produit` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_produit` int(11) NOT NULL,
  `role_photoproduit` int(11) NOT NULL,
  `id_role_photoproduit` int(11) NOT NULL,
  `pardefaut_photoproduit` int(11) NOT NULL,
  `id_pardefaut_photoproduit` int(11) NOT NULL,
  `numero_photoproduit` int(11) NOT NULL,
  `id_numero_photoproduit` int(11) NOT NULL,
  `role_id_produit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `photoproduit`
--

INSERT INTO `photoproduit` (`id_photoproduit`, `photo_produit`, `id_produit`, `role_photoproduit`, `id_role_photoproduit`, `pardefaut_photoproduit`, `id_pardefaut_photoproduit`, `numero_photoproduit`, `id_numero_photoproduit`, `role_id_produit`) VALUES
(1, 'images/produits/th-tennis.jpg', 45, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id_produit` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL,
  `code_produit` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom_produit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `marque_produit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_produit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prixunitaireHT_produit` float NOT NULL,
  `quantite_produit` int(11) NOT NULL,
  `quantitelimite_produit` int(11) NOT NULL,
  `promo_produit` float DEFAULT NULL,
  `couleur_produit` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`id_produit`, `id_categorie`, `code_produit`, `nom_produit`, `marque_produit`, `description_produit`, `prixunitaireHT_produit`, `quantite_produit`, `quantitelimite_produit`, `promo_produit`, `couleur_produit`) VALUES
(45, 1, 'TSHNIK45', 'old vintage 90\'s', 'nike', NULL, 50, 20, 20, 10, 'bleu');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id_utilisateur` int(11) NOT NULL,
  `pseudo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom_utilisateur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom_utilisateur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mot_de_passe` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adresse_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_postal` int(11) DEFAULT NULL,
  `rue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pays` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `administrateur` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id_utilisateur`, `pseudo`, `prenom_utilisateur`, `nom_utilisateur`, `mot_de_passe`, `adresse_email`, `code_postal`, `rue`, `pays`, `administrateur`) VALUES
(6, 'membre', 'membre', 'membre', '0285676daf56797679e6e743a0b5263d7400aae1', 'membre@membre.fr', 66000, '5 Rue du membre', 'France', 0),
(4, 'j.michel', 'jean', 'michel', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 'jean.michel@gmail.com', 66000, '5 Rue de la Joie', 'France', 0),
(7, 'admin', 'admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin@admin.fr', 66000, '5 Rue de l\'admin', 'France', 1);

-- --------------------------------------------------------

--
-- Structure de la table `voteavis`
--

CREATE TABLE `voteavis` (
  `id_voteavis` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_avis` int(11) NOT NULL,
  `estutile_voteavis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `adressearchive`
--
ALTER TABLE `adressearchive`
  ADD PRIMARY KEY (`id_adresseclient`);

--
-- Index pour la table `adresseclient`
--
ALTER TABLE `adresseclient`
  ADD PRIMARY KEY (`id_adresseclient`),
  ADD KEY `id_client` (`id_client`);

--
-- Index pour la table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id_avis`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_produit` (`id_produit`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`,`email_client`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commande`,`num_commande`),
  ADD KEY `id_client` (`id_client`);

--
-- Index pour la table `liaisonproduit`
--
ALTER TABLE `liaisonproduit`
  ADD PRIMARY KEY (`id_liaisonproduit`),
  ADD KEY `id_produit` (`id_produit`);

--
-- Index pour la table `lignecde`
--
ALTER TABLE `lignecde`
  ADD PRIMARY KEY (`id_lignecde`),
  ADD KEY `id_commande` (`id_commande`);

--
-- Index pour la table `photoproduit`
--
ALTER TABLE `photoproduit`
  ADD PRIMARY KEY (`id_photoproduit`),
  ADD KEY `id_produit` (`id_produit`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id_produit`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id_utilisateur`);

--
-- Index pour la table `voteavis`
--
ALTER TABLE `voteavis`
  ADD PRIMARY KEY (`id_voteavis`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_avis` (`id_avis`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `adressearchive`
--
ALTER TABLE `adressearchive`
  MODIFY `id_adresseclient` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `adresseclient`
--
ALTER TABLE `adresseclient`
  MODIFY `id_adresseclient` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `avis`
--
ALTER TABLE `avis`
  MODIFY `id_avis` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commande` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `liaisonproduit`
--
ALTER TABLE `liaisonproduit`
  MODIFY `id_liaisonproduit` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `lignecde`
--
ALTER TABLE `lignecde`
  MODIFY `id_lignecde` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `photoproduit`
--
ALTER TABLE `photoproduit`
  MODIFY `id_photoproduit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT pour la table `voteavis`
--
ALTER TABLE `voteavis`
  MODIFY `id_voteavis` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `adresseclient`
--
ALTER TABLE `adresseclient`
  ADD CONSTRAINT `adresseclient_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`);

--
-- Contraintes pour la table `avis`
--
ALTER TABLE `avis`
  ADD CONSTRAINT `avis_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `avis_ibfk_2` FOREIGN KEY (`id_produit`) REFERENCES `produits` (`id_produit`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`);

--
-- Contraintes pour la table `liaisonproduit`
--
ALTER TABLE `liaisonproduit`
  ADD CONSTRAINT `liaisonproduit_ibfk_1` FOREIGN KEY (`id_produit`) REFERENCES `produits` (`id_produit`);

--
-- Contraintes pour la table `lignecde`
--
ALTER TABLE `lignecde`
  ADD CONSTRAINT `lignecde_ibfk_1` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id_commande`);

--
-- Contraintes pour la table `photoproduit`
--
ALTER TABLE `photoproduit`
  ADD CONSTRAINT `photoproduit_ibfk_1` FOREIGN KEY (`id_produit`) REFERENCES `produits` (`id_produit`);

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id_categorie`);

--
-- Contraintes pour la table `voteavis`
--
ALTER TABLE `voteavis`
  ADD CONSTRAINT `voteavis_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `voteavis_ibfk_2` FOREIGN KEY (`id_avis`) REFERENCES `avis` (`id_avis`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
