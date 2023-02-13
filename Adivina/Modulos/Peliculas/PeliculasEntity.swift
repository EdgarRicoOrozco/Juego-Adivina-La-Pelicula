//
//  PeliculasEntity.swift
//  Registro
//
//  Created Phinder 2022 on 22/11/22.
//  2022 ___ORGANIZATIONNAME___.
//

import Foundation

open class PeliculasBase {
    
    public static var contador: Int = -1
    
    public static let Primera : PreguntasNumero = PreguntasNumero(cero: "Spiderman", uno: "Harry Potter", dos: "Avengers")
    public static let Segunda : PreguntasNumero = PreguntasNumero(cero: "007" , uno: "Los Espias", dos: "Mini Espias")
    public static let Tercera : PreguntasNumero = PreguntasNumero(cero: "Zombie Land", uno: "Zombies", dos: "Mi Novio Es Un Zombie")
    public static let Cuarta : PreguntasNumero = PreguntasNumero(cero: "Rapidos Y Furiosos 3", uno: "Rapidos Y Furiosos 1", dos: "Rapidos Y Furiosos 2")
    public static let Quinta : PreguntasNumero = PreguntasNumero(cero: "Destyny", uno: "Principe De Persia", dos: "Conan")
    public static let Sexta : PreguntasNumero = PreguntasNumero(cero: "Ayer", uno: "Project Alma", dos: "Bienvenidos Al Ayer")
    public static let Septima : PreguntasNumero = PreguntasNumero(cero: "Juracic Park", uno: "Juracic World", dos: "Juracic Parking")
    public static let Octava : PreguntasNumero = PreguntasNumero(cero: "60 segundos", uno: "One Day", dos: "The Mision")
    public static let Novena : PreguntasNumero = PreguntasNumero(cero: "Estacion Zombie", uno: "Zombies", dos: "Apocalipsis Zombie")
    public static let Decima : PreguntasNumero = PreguntasNumero(cero: "Apocalipsis Zombie", uno: "A La Mierda Con Los Zombies", dos: "El Amanecer De Los Muertos")
    
    public static var Preguntas: Array = [Primera,Segunda,Tercera,Cuarta,Quinta,Sexta,Septima,Octava,Novena,Decima]
    
    public static var Respuestas: Array = [1, //0
                                           2, //1
                                           0, //2
                                           0, //3
                                           1, //4
                                           2, //5
                                           1, //6
                                           0, //7
                                           0, //8
                                           1] //9

}
