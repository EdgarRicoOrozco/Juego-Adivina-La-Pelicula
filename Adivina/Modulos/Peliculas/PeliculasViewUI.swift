//
//  PeliculasViewUI.swift
//  Registro
//
//  Created Phinder 2022 on 22/11/22.
//  2022 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit
import Lottie

protocol PeliculasViewUIDelegate {
    func goToBack()
}

class PeliculasViewUI: UIView{
    
    private lazy var marcaLabel: UILabel = {
        let label = UILabel()
        label.text = "Edgar Rico Industries"
        label.textColor = ColorManager.colorWhite
        label.font = .boldSystemFont(ofSize: 12)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var backButton: Btn_Default = {
        let button = Btn_Default(titleText: "<", textAlignment: .Center,buttonBackgroundColor: ColorManager.azulInicio,buttonSecondBackgroundColor: ColorManager.azulFin, showIcon: false)
        button.setEnableButton(enable: true)
        button.addTarget(self, action: #selector(back), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var navigationBar: UINavigationBar = {
        let navigationController = UINavigationBar(frame: .zero)
        navigationController.translatesAutoresizingMaskIntoConstraints = false
        navigationController.backgroundColor = ColorManager.colorBlack
        return navigationController
    }()
    
    lazy var addButton: UIButton = {
       let button = UIButton()
        button.setTitle("AÑADIR", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.layer.cornerRadius = 15
        return button
    }()
    
    private lazy var contentView: UIView = {
        let scrollview = UIView(frame: .zero)
        scrollview.translatesAutoresizingMaskIntoConstraints = false
        scrollview.backgroundColor = ColorManager.colorBlack
        return scrollview
    }()
    
    private lazy var cardView: UIView = {
        let view = UIView()
        view.backgroundColor = ColorManager.colorBlack
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var imageMovie: UIImageView = {
        let image = UIImageView(frame: .zero)
        image.image = UIImage(named: "M0")
        image.contentMode = .scaleAspectFit
        image.isHidden = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var titleIcon: AnimationView = {
        let animation = Animation.named("action",
                                        subdirectory: nil,
                                        animationCache: nil)
        let lottie = AnimationView(animation: animation)
        lottie.contentMode = .scaleAspectFit
        lottie.backgroundBehavior = .pauseAndRestore
        lottie.loopMode = .loop
        lottie.play()
        lottie.translatesAutoresizingMaskIntoConstraints = false
        return lottie
    }()
    
    private lazy var succesIcon: AnimationView = {
        let animation = Animation.named("check-succes",
                                        subdirectory: nil,
                                        animationCache: nil)
        let lottie = AnimationView(animation: animation)
        lottie.contentMode = .scaleAspectFit
        lottie.backgroundBehavior = .pauseAndRestore
        lottie.loopMode = .loop
        lottie.play()
        lottie.isHidden = true
        lottie.translatesAutoresizingMaskIntoConstraints = false
        return lottie
    }()
    
    private lazy var errorIcon: AnimationView = {
        let animation = Animation.named("check-error",
                                        subdirectory: nil,
                                        animationCache: nil)
        let lottie = AnimationView(animation: animation)
        lottie.contentMode = .scaleAspectFit
        lottie.backgroundBehavior = .pauseAndRestore
        lottie.loopMode = .loop
        lottie.play()
        lottie.isHidden = true
        lottie.translatesAutoresizingMaskIntoConstraints = false
        return lottie
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Adivina La Pelicula"
        label.textColor = ColorManager.colorWhite
        label.font = .boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var oneBtn: Btn_Default = {
        let button = Btn_Default(titleText: "", textAlignment: .Center,buttonBackgroundColor: ColorManager.azulInicio,buttonSecondBackgroundColor: ColorManager.azulFin, showIcon: false)
        button.setEnableButton(enable: false)
        button.tag = 0
        button.addTarget(self, action: #selector(response), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var twoBtn: Btn_Default = {
        let button = Btn_Default(titleText: "", textAlignment: .Center,buttonBackgroundColor: ColorManager.azulInicio,buttonSecondBackgroundColor: ColorManager.azulFin, showIcon: false)
        button.setEnableButton(enable: false)
        button.tag = 1
        button.addTarget(self, action: #selector(response), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var threeBtn: Btn_Default = {
        let button = Btn_Default(titleText: "", textAlignment: .Center,buttonBackgroundColor: ColorManager.azulInicio,buttonSecondBackgroundColor: ColorManager.azulFin, showIcon: false)
        button.setEnableButton(enable: false)
        button.tag = 2
        button.addTarget(self, action: #selector(response), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var newBtn: Btn_Default = {
        let button = Btn_Default(titleText: "N", textAlignment: .Center,buttonBackgroundColor: ColorManager.azulInicio,buttonSecondBackgroundColor: ColorManager.azulFin, showIcon: false)
        button.setEnableButton(enable: true)
        button.addTarget(self, action: #selector(new), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var delegate: PeliculasViewUIDelegate?
    var navigationController: UINavigationController?
    
    public convenience init(
        navigation: UINavigationController,
        delegate: PeliculasViewUIDelegate){
        self.init()
        self.delegate = delegate
        self.navigationController = navigation
            setupUIElements()
            setupConstraints()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    fileprivate func setupUIElements(){
        self.addSubview(contentView)
        self.addSubview(navigationBar)
        contentView.addSubview(cardView)
        cardView.addSubview(marcaLabel)
        cardView.addSubview(backButton)
        cardView.addSubview(imageMovie)
        cardView.addSubview(titleIcon)
        cardView.addSubview(succesIcon)
        cardView.addSubview(errorIcon)
        cardView.addSubview(titleLabel)
        cardView.addSubview(oneBtn)
        cardView.addSubview(twoBtn)
        cardView.addSubview(threeBtn)
        cardView.addSubview(newBtn)
    }
    
    fileprivate func setupConstraints(){
        NSLayoutConstraint.activate([
        navigationBar.topAnchor.constraint(equalTo: self.topAnchor),
        navigationBar.leadingAnchor.constraint(equalTo: self.leadingAnchor),
        navigationBar.trailingAnchor.constraint(equalTo: self.trailingAnchor),
    
        contentView.topAnchor.constraint(equalTo: self.navigationBar.bottomAnchor),
        contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
        contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ///CardView
        cardView.topAnchor.constraint(equalTo: contentView.topAnchor),
        cardView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
        cardView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
        cardView.heightAnchor.constraint(equalTo: contentView.heightAnchor),
        cardView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
        cardView.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
        
        marcaLabel.centerYAnchor.constraint(equalTo: backButton.centerYAnchor),
        marcaLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 40),
        marcaLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -40),
        
        backButton.bottomAnchor.constraint(equalTo: cardView.bottomAnchor,constant: -50),
        backButton.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
        backButton.heightAnchor.constraint(equalToConstant: 50),
        backButton.widthAnchor.constraint(equalToConstant: 50),
        
        titleIcon.topAnchor.constraint(equalTo: cardView.topAnchor,constant: 40),
        titleIcon.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
        titleIcon.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
        titleIcon.bottomAnchor.constraint(equalTo: titleLabel.topAnchor, constant:-30),
        
        succesIcon.topAnchor.constraint(equalTo: cardView.topAnchor,constant: 40),
        succesIcon.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
        succesIcon.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
        succesIcon.bottomAnchor.constraint(equalTo: titleLabel.topAnchor, constant:-30),
        
        errorIcon.topAnchor.constraint(equalTo: cardView.topAnchor,constant: 40),
        errorIcon.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
        errorIcon.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
        errorIcon.bottomAnchor.constraint(equalTo: titleLabel.topAnchor, constant:-30),
        
        imageMovie.topAnchor.constraint(equalTo: cardView.topAnchor,constant: 40),
        imageMovie.centerXAnchor.constraint(equalTo: cardView.centerXAnchor),
        imageMovie.heightAnchor.constraint(equalTo: cardView.heightAnchor,multiplier: 0.4),
        imageMovie.widthAnchor.constraint(equalTo: cardView.widthAnchor,multiplier: 0.9),
        
        titleLabel.centerXAnchor.constraint(equalTo: cardView.centerXAnchor),
        titleLabel.centerYAnchor.constraint(equalTo: cardView.centerYAnchor),
        titleLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 40),
        titleLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -40),
        
        oneBtn.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 40),
        oneBtn.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
        oneBtn.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
        oneBtn.heightAnchor.constraint(equalToConstant: 50),
        
        twoBtn.topAnchor.constraint(equalTo: oneBtn.bottomAnchor,constant: 20),
        twoBtn.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
        twoBtn.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
        twoBtn.heightAnchor.constraint(equalToConstant: 50),
        
        threeBtn.topAnchor.constraint(equalTo: twoBtn.bottomAnchor,constant: 20),
        threeBtn.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
        threeBtn.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
        threeBtn.heightAnchor.constraint(equalToConstant: 50),
        
        newBtn.bottomAnchor.constraint(equalTo: cardView.bottomAnchor,constant: -50),
        newBtn.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
        newBtn.widthAnchor.constraint(equalToConstant: 50),
        newBtn.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func back(){
        delegate?.goToBack()
    }
    
    @objc func new(){
        let preguntas : Int = PeliculasBase.Preguntas.count
        PeliculasBase.contador = PeliculasBase.contador + 1
        if preguntas == PeliculasBase.contador {
            PeliculasBase.contador = 0
        }
        clean()
        setTitles()
        titleIcon.isHidden = true
        imageMovie.isHidden = false
        btnEnables(enable: true)
        matchBtns(tag: 3)
    }
    
    func btnEnables(enable: Bool){
        oneBtn.setEnableButton(enable: enable)
        twoBtn.setEnableButton(enable: enable)
        threeBtn.setEnableButton(enable: enable)
      
    }
    func setTitles(){
        imageMovie.image = UIImage(named: "M\(PeliculasBase.contador)")
        oneBtn.setTitle(PeliculasBase.Preguntas[PeliculasBase.contador].cero, for: .normal)
        twoBtn.setTitle(PeliculasBase.Preguntas[PeliculasBase.contador].uno, for: .normal)
        threeBtn.setTitle(PeliculasBase.Preguntas[PeliculasBase.contador].dos, for: .normal)
    }
    
    func matchBtns(tag: Int){
        switch tag {
        case 0:
            oneBtn.isHidden = false
            twoBtn.isHidden = true
            threeBtn.isHidden = true
            oneBtn.isEnabled = false
            break
        case 1:
            oneBtn.isHidden = true
            twoBtn.isHidden = false
            threeBtn.isHidden = true
            twoBtn.isEnabled = false
            break
        case 2:
            oneBtn.isHidden = true
            twoBtn.isHidden = true
            threeBtn.isHidden = false
            threeBtn.isEnabled = false
            break
        default:
            oneBtn.isEnabled = true
            twoBtn.isEnabled = true
            threeBtn.isEnabled = true
            oneBtn.isHidden = false
            twoBtn.isHidden = false
            threeBtn.isHidden = false
        }
    }
    
    func clean(){
        DispatchQueue.main.async {
            self.succesIcon.isHidden = true
            self.errorIcon.isHidden = true
        }
    }
    
    func succes(){
        DispatchQueue.main.async {
            self.succesIcon.isHidden = false
            self.errorIcon.isHidden = true
            self.imageMovie.isHidden = true
        }
    }
    
    func error(){
        DispatchQueue.main.async {
            self.succesIcon.isHidden = true
            self.errorIcon.isHidden = false
            self.imageMovie.isHidden = true
        }
    }
    
    @objc func response(_ sender: UIButton){
        if sender.tag == PeliculasBase.Respuestas[PeliculasBase.contador]{
            succes()
            matchBtns(tag: PeliculasBase.Respuestas[PeliculasBase.contador])
        }else{
            matchBtns(tag: PeliculasBase.Respuestas[PeliculasBase.contador])
            error()
        }
    }


}




