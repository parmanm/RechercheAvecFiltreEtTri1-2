//
//  Plante.swift
//  RechercheAvecFiltresEtTri
//
//  Created by Maxime Parmantier Cloiseau on 23/01/2020.
//  Copyright © 2020 RUN4U Studio. All rights reserved.
//

import Foundation
import UIKit

class Plante: Vivant {
    init(nom: String, comportement: Comportement, condition: Condition, caracteristique: Caracteristique) {
        super.init(nom: nom, comportement: comportement, condition: condition, caracteristique: caracteristique, type: .plante)
    }
}
