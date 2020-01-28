//
//  Vivant.swift
//  RechercheAvecFiltresEtTri
//
//  Created by Maxime Parmantier Cloiseau on 23/01/2020.
//  Copyright © 2020 RUN4U Studio. All rights reserved.
//

import Foundation
import UIKit

class Vivant: Identifiable {
    let id = UUID()
    
    let nom: String
    let image: UIImage
    let comportement: Comportement
    let condition: Condition
    let caracteristique: Caracteristique
    let type: TypeVivant

    internal init(nom: String, comportement: Comportement, condition: Condition, caracteristique: Caracteristique, type: TypeVivant) {
        self.nom = nom
        self.image = UIImage(named: self.nom) ?? UIImage()
        self.comportement = comportement
        self.condition = condition
        self.caracteristique = caracteristique
        self.type = type
    }
}
