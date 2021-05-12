//
//  Response.swift
//  GCD
//
//  Created by osmar.alan.hernandez on 12/05/21.
//

import Foundation

struct Response: Decodable {
    var message: [String]
    var status: String
}
