//
//  Model.swift
//  Tikker
//
//  Created by Simon Wachtler on 20/03/21.
//

import Foundation

struct User: Codable {
    let fullName, email, authState: String
}
