//
//  Model.swift
//  URLSession Part-1 HM
//
//  Created by Dinar on 28.02.2023.
//

import Foundation


struct DataButtonTwo: Decodable {
    let copyright: String
    let date: String
    let explanation: String
    let hdurl: String
    let media_type: String
    let service_version: String
    let url: String
    
}

struct DataButtonThree {
    let rotation_period: String
    let orbital_period: String
    let diameter: String
    let climate: String
    let gravity: String
    let terrain: String
    let surface_water: String
    let population: String
    let residents: [Any]
    let films: [String]
    let created: String
    let edited: String
    let url: String
    
}

//ButtonTwo
/*{"copyright":"Thomas RГ¶ell",
    "date":"2023-03-01",
    "explanation":"Is star AE Aurigae on fire? No.  Even though AE Aurigae is named the Flaming Star and the surrounding nebula IC 405 is named the Flaming Star Nebula, and even though the nebula appears to some like a swirling flame, there is no fire.  Fire, typically defined as the rapid molecular acquisition of oxygen, happens only when sufficient oxygen is present and is not important in such high-energy, low-oxygen environments such as stars.  The bright star AE Aurigae occurs near the center of the Flaming Star Nebula and is so hot it glows blue, emitting light so energetic it knocks electrons away from surrounding gas. When a proton recaptures an electron, light is emitted, as seen in the surrounding emission nebula.  Captured here three weeks ago, the Flaming Star Nebula is visible near the composite image's center, between the red Tadpole Nebula on the left and blue-tailed Comet ZTF on the right.  The Flaming Star Nebula lies about 1,500 light years distant, spans about 5 light years, and is visible with a small telescope toward the constellation of the Charioteer (Auriga).",
    "hdurl":"https://apod.nasa.gov/apod/image/2303/FlamingStarComet_Roell_7504.jpg",
    "media_type":"image","service_version":"v1","title":"The Flaming Star Nebula",
    "url":"https://apod.nasa.gov/apod/image/2303/FlamingStarComet_Roell_1080.jpg"} */

//ButtonThree
/*{"name":"Yavin IV",
    "rotation_period":"24",
    "orbital_period":"4818",
    "diameter":"10200",
    "climate":"temperate, tropical",
    "gravity":"1 standard",
    "terrain":"jungle, rainforests",
    "surface_water":"8",
    "population":"1000",
    "residents":[],
    "films":["https://swapi.dev/api/films/1/"],
    "created":"2014-12-10T11:37:19.144000Z",
    "edited":"2014-12-20T20:58:18.421000Z",
    "url":"https://swapi.dev/api/planets/3/"} */
