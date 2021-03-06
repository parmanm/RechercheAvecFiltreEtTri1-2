//
//  RechercheAvecFiltresEtTriTests.swift
//  RechercheAvecFiltresEtTriTests
//
//  Created by Maxime Parmantier Cloiseau on 23/01/2020.
//  Copyright © 2020 RUN4U Studio. All rights reserved.
//

import XCTest
import UIKit
@testable import RechercheAvecFiltresEtTri

class RechercheAvecFiltresEtTriTests: XCTestCase {
    //données factices pour les tests
    //animaux
    let animals: [Animal] = [
        //marin
        Animal(nom: "", comportement: .diurne, condition: .eteint, caracteristique: .marin),
        Animal(nom: "Requin", comportement: .diurne, condition: .voieext, caracteristique: .marin),
        Animal(nom: "Napoléon", comportement: .diurne, condition: .voieext, caracteristique: .marin),
        Animal(nom: "", comportement: .diurne, condition: .vivant, caracteristique: .marin),
        Animal(nom: "", comportement: .diurne, condition: .vivant, caracteristique: .marin),
        Animal(nom: "", comportement: .nocturne, condition: .eteint, caracteristique: .marin),
        Animal(nom: "", comportement: .nocturne, condition: .voieext, caracteristique: .marin),
        Animal(nom: "", comportement: .nocturne, condition: .vivant, caracteristique: .marin),
        
        //terrestre
        Animal(nom: "", comportement: .diurne, condition: .eteint, caracteristique: .terrestre),
        Animal(nom: "Tigre", comportement: .diurne, condition: .voieext, caracteristique: .terrestre),
        Animal(nom: "Panda", comportement: .diurne, condition: .voieext, caracteristique: .terrestre),
        Animal(nom: "", comportement: .diurne, condition: .vivant, caracteristique: .terrestre),
        Animal(nom: "", comportement: .diurne, condition: .vivant, caracteristique: .terrestre),
        Animal(nom: "", comportement: .nocturne, condition: .eteint, caracteristique: .terrestre),
        Animal(nom: "", comportement: .nocturne, condition: .voieext, caracteristique: .terrestre),
        Animal(nom: "", comportement: .nocturne, condition: .vivant, caracteristique: .terrestre),
        
        //aérien
        Animal(nom: "Phorusrhacides", comportement: .diurne, condition: .eteint, caracteristique: .aerien),
        Animal(nom: "Cacatoes", comportement: .diurne, condition: .voieext, caracteristique: .aerien),
        Animal(nom: "Perroquet", comportement: .diurne, condition: .voieext, caracteristique: .aerien),
        Animal(nom: "Pigeon", comportement: .diurne, condition: .vivant, caracteristique: .aerien),
        Animal(nom: "Aigle", comportement: .diurne, condition: .vivant, caracteristique: .aerien),
        Animal(nom: "Chauve-souris", comportement: .nocturne, condition: .voieext, caracteristique: .aerien),
        Animal(nom: "Chouette", comportement: .nocturne, condition: .voieext, caracteristique: .aerien),
        Animal(nom: "Hiboux", comportement: .nocturne, condition: .vivant, caracteristique: .aerien)
    ]
    
    //plantes
    let plants: [Plante] = [
        //marin
        Plante(nom: "", comportement: .diurne, condition: .eteint, caracteristique: .marin),
        Plante(nom: "", comportement: .diurne, condition: .voieext, caracteristique: .marin),
        Plante(nom: "", comportement: .diurne, condition: .vivant, caracteristique: .marin),
        Plante(nom: "", comportement: .diurne, condition: .vivant, caracteristique: .marin),
        
        //terrestre
        Plante(nom: "", comportement: .diurne, condition: .eteint, caracteristique: .terrestre),
        Plante(nom: "", comportement: .diurne, condition: .voieext, caracteristique: .terrestre),
        Plante(nom: "", comportement: .diurne, condition: .vivant, caracteristique: .terrestre),
        Plante(nom: "", comportement: .diurne, condition: .vivant, caracteristique: .terrestre),
    ]
    
    //plante
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    //fonction permettant de tester la fonction search de la classe Search en cas de recherche valide
    func testReturnedDataSearch() {
        //On instancie la classe avec une liste d'objets
        let search = Search(animals + plants)
        
        //On récupère le résultat de la recherche (true ou false), les objets recherchés sont dans search.searchedData
        let status = search.search { (item) in
            //on retourne les objets de type animal
            return item.type == .animal
        }
        
        //On fait le test avec le status récupéré. Ici le status doit être à true
        XCTAssertTrue(status)
    }
    
    func testNonreturnedDataSearch() {
        //On instancie la classe avec une liste d'objets
        let search = Search(animals + plants)
        
        //On récupère le résultat de la recherche (true ou false).
        let status = search.search { (item) in
            //On retourne false vu que l'on ne veut pas une recherche retournant un résultat.
            return false
        }
        
        //On fait le test avec le status récupéré. Ici le status doit être à false
        XCTAssertTrue(!status)
    }
    
    func testSortAllData() {
        //On instancie la classe avec une liste d'objets
        let search = Search(animals + plants)
        
        //On trie la liste d'objets recherché, si elle est vide cela trie les données de base (c'est le cas ici)
        let status = search.sort { (li, ri) in
            //on trie par ordre alphabetique croissant
            return li.nom < ri.nom
        }
        
        //On fait le test avec le status récupéré. Ici le status doit être à true
        XCTAssertTrue(status)
    }
    
    func testSortSearchedData() {
        //On instancie la classe avec une liste d'objets
        let search = Search(animals + plants)
        
        //on recherche une liste d'objets
        search.search { (item) in
            //on retourne les objets de type animal
            return item.type == .animal
        }
        
        //On trie la liste d'objets recherché, si elle est vide cela trie les données de base
        let status = search.sort { (li, ri) in
            //on trie par ordre alphabetique croissant
            return li.nom < ri.nom
        }
        
        //On fait le test avec le status récupéré. Ici le status doit être à true
        XCTAssertTrue(status)
    }
}
