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
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
}
