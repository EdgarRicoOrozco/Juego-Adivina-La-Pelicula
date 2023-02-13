//
//  AnimesEntity.swift
//  Registro
//
//  Created Phinder 2022 on 22/11/22.
//  2022 ___ORGANIZATIONNAME___.
//

import Foundation

open class AnimesBase {
    
    public static var contador: Int = -1
    
    public static let Primera : PreguntasNumero = PreguntasNumero(cero: "Dragon Ball GT", uno: "Dragon Ball", dos: "Dragon Ball Z")
    public static let Segunda : PreguntasNumero = PreguntasNumero(cero: "Next Piece" , uno: "One Piece", dos: "One Piece Is Real")
    public static let Tercera : PreguntasNumero = PreguntasNumero(cero: "Freezing", uno: "Sailor Moon", dos: "Sakura Card Captor")
    public static let Cuarta : PreguntasNumero = PreguntasNumero(cero: "Re: 0", uno: "Astroneer", dos: "Cyberpunk 2077 Edgerunners")
    public static let Quinta : PreguntasNumero = PreguntasNumero(cero: "Shinigami", uno: "Bleach", dos: "Soul Eater")
    public static let Sexta : PreguntasNumero = PreguntasNumero(cero: "The Eminence In Shadow", uno: "The Shadow", dos: "Kimini To Todoke")
    public static let Septima : PreguntasNumero = PreguntasNumero(cero: "Black Clover", uno: "Hollow", dos: "Tokyo Ghoul")
    public static let Octava : PreguntasNumero = PreguntasNumero(cero: "Rakudai Kishi No Cavalry", uno: "Dead Note", dos: "Guilty Crown")
    public static let Novena : PreguntasNumero = PreguntasNumero(cero: "Maoyuu Maou Yuusha", uno: "Yuusha", dos: "Tate No Yuusha ")
    public static let Decima : PreguntasNumero = PreguntasNumero(cero: "Jujutsu Kaisen", uno: "Fate/Zero", dos: "Blood Blockade")
    
    public static var Preguntas: Array = [Primera,Segunda,Tercera,Cuarta,Quinta,Sexta,Septima,Octava,Novena,Decima]
    
    public static var Respuestas: Array = [2, //0
                                           1, //1
                                           1, //2
                                           2, //3
                                           1, //4
                                           0, //5
                                           0, //6
                                           2, //7
                                           2, //8
                                           0] //9

}
