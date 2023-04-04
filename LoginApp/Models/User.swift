//
//  Person.swift
//  LoginApp
//
//  Created by Константин Натаров on 04.04.2023.
//

import Foundation

struct User {
    static let login = "User"
    static let password = "password"
    let developer:  Developer
    
    static func getDeveloperInfo() -> User {
        User(
            developer: Developer()
        )
    }
}

struct Developer {
    let name = "Konstantin Natarov"
    let age = "27"
    let education = "Высшее. Московский Технический Университет Связи и информатики. Направление: Системы мобильной связи"
    let profession = "Засекречено"
    let hobby = "Спорт, литература, философия, IT"
    let gitHub = "https://github.com/dutysniper"
    let codeWarsRank = "5 kyu"
    
}
