//
//  Search.swift
//  RechercheAvecFiltresEtTri
//
//  Created by Maxime Parmantier Cloiseau on 23/01/2020.
//  Copyright © 2020 RUN4U Studio. All rights reserved.
//

import Foundation

class Search<T> {
    //variable contenant la liste de vos objets de type T (générique)
    var data: [T]
    //variable contenant les résultats de recherche
    var searchedData: [T] {
        didSet {
            //Lorsque searchedData a été modifié ou créé, on modifie isSearchedDataAvailable
            self.isSearchedDataAvailable = self.searchedData.count > 0
        }
    }
    //variable déterminant si des données de recherche sont disponibles
    var isSearchedDataAvailable: Bool = false

    //instanciation de la classe avec en paramètre la liste de vos objets de type T (générique)
    init(_ data: [T]) {
        self.data = data
        self.searchedData = [T]()
    }
    
    //fonction permettant de rechercher dans une liste d'objets, renvoie un boolean
    func search(where validator: (T)->(Bool)) -> Bool {
        //on reinitialise la variable contenant la liste de nos objets recherché.
        self.searchedData = [T]()

        //on parcours notre liste d'objets
        data.forEach { (item) in
            //on ajoute à la liste chaque objet correspondant à la recherche
            if validator(item) {
                self.searchedData.append(item)
            }
        }
        
        //on retourne le résultat de la recherche en boolean
        return self.isSearchedDataAvailable
    }
    
    //fonction permettant de trier dans une liste d'objets, renvoie un boolean
    func sort(by validator: (T, T)->(Bool)) -> Bool {
        //si searchedData est vide, on tri les données de base
        if searchedData.count < 1 {
            //On fait un tri du résultat de recherche. Ici li correspondant a l'élément de gauche (ou l'élément précédant) et inversement pour ri
            self.data = self.data.sorted(by: { (li, ri) -> Bool in
                    validator(li, ri)
                })
        } else {
            //On fait un tri du résultat de recherche. Ici li correspondant a l'élément de gauche (ou l'élément précédant) et inversement pour ri
            self.searchedData = self.searchedData.sorted(by: { (li, ri) -> Bool in
                    validator(li, ri)
                })
        }
        
        //On renvoie true si la liste a bien été triée
        return true
    }
}
