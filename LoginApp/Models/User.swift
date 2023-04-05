//
//  Person.swift
//  LoginApp
//
//  Created by Константин Натаров on 04.04.2023.
//

import Foundation

struct User {
    let login: String
    let password : String
    let developer:  Developer
    
    
    static func getUserInfo() -> User {
        User(login: "User",
             password: "password",
             developer: Developer(name: "Konstantin Natarov",
                                  age: "27",
                                  education: "Высшее",
                                  profession: "Засекречено",
                                  hobby: "Литература, гейминг",
                                  gitHub: "github.com/dutysniper",
                                  codeWarsRank: "5 kyu",
                                  fears: "Змеи, пчелы",
                                  rewards: "Медаль за храбрость",
                                  mainPhoto: "photo",
                                  secondaryPhoto: "me2",
                                  biography: """
Меня зовут Константин и я родился в 1995 году. По стечению обстоятельств сменил три школы и закончил лицей в г. Реутов. В школьные годы увлекался спортом и чтением литературы. Поступил в Московский Технический Университет Связи и информатики. После второго курса ушел в армию. Отслужив, в последствии закончил ВУЗ по специальности "Системы мобильной связи". По специальности работать не захотел и трудоустроился в одну "контору". Подробности рассказать не могу,  к сожалению. Тружусь там и по сей день. В планах сменить профессию на iOS-разработчика к концу текущего года.
""")
        )
    }
}

struct Developer {
    let name: String
    let age: String
    let education: String
    let profession: String
    let hobby: String
    let gitHub: String
    let codeWarsRank: String
    let fears: String
    let rewards: String
    let mainPhoto: String
    let secondaryPhoto: String
    let biography: String
}
