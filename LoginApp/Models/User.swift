//
//  Person.swift
//  LoginApp
//
//  Created by Константин Натаров on 04.04.2023.
//

import Foundation

struct User {
    let login = "User"
    let password = "password"
    let developer:  Developer
    
    
    static func getUserInfo() -> User {
        User(
            developer: Developer()
        )
    }
}

struct Developer {
    let name = "Konstantin Natarov"
    let age = "27"
    let education = "Высшее"
    let profession = "Засекречено"
    let hobby = "Литература, гейминг"
    let gitHub = "github.com/dutysniper"
    let codeWarsRank = "5 kyu"
    let fears = "Змеи, пчелы"
    let rewards = "Медаль за храбрость"
    let mainPhoto = "photo"
    let secondaryPhoto = "me2"
    let biography = """
Меня зовут Константин и я родился в 1995 году. По стечению обстоятельств сменил три школы и закончил лицей в г. Реутов. В школьные годы увлекался спортом и чтением литературы. Поступил в Московский Технический Университет Связи и информатики. После второго курса ушел в армию. Отслужив, в последствии закончил ВУЗ по специальности "Системы мобильной связи". По специальности работать не захотел и трудоустроился в одну "контору". Подробности рассказать не могу,  к сожалению. Тружусь там и по сей день. В планах сменить профессию на iOS-разработчика к концу текущего года.
"""
}
