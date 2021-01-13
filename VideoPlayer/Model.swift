//
//  Model.swift
//  VideoPlayer
//
//  Created by Sofi on 13.01.2021.
//

import Foundation
import SwiftUI


struct Model: Identifiable {
    let urlVideo: String
    let id = UUID()
}
class observal: ObservableObject {
    @Published var data: [Model] = []
    init() {
        data.append(Model(urlVideo: "https://www.youtube.com/watch?v=XRRS3xJnKBQ"))
        data.append(Model(urlVideo: "https://youtu.be/lFVRePhDJhs"))
        data.append(Model(urlVideo: "https://youtu.be/aP-SQXTtWhY"))
        data.append(Model(urlVideo: "https://youtu.be/0-lM51yI-PA"))
         
        }
           
    }
