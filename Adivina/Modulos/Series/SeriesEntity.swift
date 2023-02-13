//
//  SeriesEntity.swift
//  Registro
//
//  Created Phinder 2022 on 22/11/22.
//  2022 ___ORGANIZATIONNAME___.
//

import Foundation

open class seriesBase {
    
    public static var contador: Int = -1
    
    public static let Primera : PreguntasNumero = PreguntasNumero(cero: "Las Hermanas", uno: "Sex Education", dos: "Black Mirror")
    public static let Segunda : PreguntasNumero = PreguntasNumero(cero: "Squird Game" , uno: "El Vagabundo", dos: "El Juego Del Calamar")
    public static let Tercera : PreguntasNumero = PreguntasNumero(cero: "La Purga", uno: "La Casa De Papel", dos: "SAW")
    public static let Cuarta : PreguntasNumero = PreguntasNumero(cero: "Evil Dead", uno: "Los Caminantes", dos: "The Walking Dead")
    public static let Quinta : PreguntasNumero = PreguntasNumero(cero: "Jovenes Altezas", uno: "Friends", dos: "How To Sell Drugs Online")
    public static let Sexta : PreguntasNumero = PreguntasNumero(cero: "Alice In Borderland", uno: "Zombies Station", dos: "Aun Asi")
    public static let Septima : PreguntasNumero = PreguntasNumero(cero: "The Apocalypse", uno: "Rumbo Al Infierno", dos: "Hunter")
    public static let Octava : PreguntasNumero = PreguntasNumero(cero: "La Maldicion De Bly Manor", uno: "Merlina", dos: "Dark")
    public static let Novena : PreguntasNumero = PreguntasNumero(cero: "Esta Bien No Estar", uno: "Aquel Año Nuestro", dos: "Un Caballero Y Una Joven Dama")
    public static let Decima : PreguntasNumero = PreguntasNumero(cero: "Belleza Interior", uno: "Un Caballero Y Una Joven Dama", dos: "Cielo Para Dos")
    
    public static var Preguntas: Array = [Primera,Segunda,Tercera,Cuarta,Quinta,Sexta,Septima,Octava,Novena,Decima]
    
    public static var Respuestas: Array = [1, //0
                                           2, //1
                                           1, //2
                                           2, //3
                                           2, //4
                                           0, //5
                                           1, //6
                                           2, //7
                                           0, //8
                                           1] //9

}

public struct PreguntasNumero {
    public let cero : String
    public let uno : String
    public let dos : String
}
