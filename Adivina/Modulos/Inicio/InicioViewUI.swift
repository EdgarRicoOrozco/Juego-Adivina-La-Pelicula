//
//  InicioViewUI.swift
//  Registro
//
//  Created Phinder 2022 on 22/11/22.
//  2022 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit
import Lottie

protocol InicioViewUIDelegate {
    func goToMovie()
    func goToSerie()
    func goToAnime()
}

class InicioViewUI: UIView{
    
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
    
    private lazy var titleIcon: AnimationView = {
        let animation = Animation.named("select-panda",
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
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "ADIVINA EL/LA"
        label.textColor = ColorManager.colorWhite
        label.font = .boldSystemFont(ofSize: 40)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var moviesBtn: Btn_Default = {
        let button = Btn_Default(titleText: "Pelicula", textAlignment: .Center,buttonBackgroundColor: ColorManager.azulInicio,buttonSecondBackgroundColor: ColorManager.azulFin, showIcon: false)
        button.setEnableButton(enable: true)
        button.addTarget(self, action: #selector(goToMovies), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var seriesBtn: Btn_Default = {
        let button = Btn_Default(titleText: "Serie", textAlignment: .Center,buttonBackgroundColor: ColorManager.azulInicio,buttonSecondBackgroundColor: ColorManager.azulFin, showIcon: false)
        button.setEnableButton(enable: true)
        button.addTarget(self, action: #selector(goToSeries), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var animesBtn: Btn_Default = {
        let button = Btn_Default(titleText: "Anime", textAlignment: .Center,buttonBackgroundColor: ColorManager.azulInicio,buttonSecondBackgroundColor: ColorManager.azulFin, showIcon: false)
        button.addTarget(self, action: #selector(goToAnimes), for: .touchUpInside)
        button.setEnableButton(enable: true)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var delegate: InicioViewUIDelegate?
    var navigationController: UINavigationController?
    
    public convenience init(
        navigation: UINavigationController,
        delegate: InicioViewUIDelegate){
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
        cardView.addSubview(titleIcon)
        cardView.addSubview(titleLabel)
        cardView.addSubview(seriesBtn)
        cardView.addSubview(moviesBtn)
        cardView.addSubview(animesBtn)
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
        
        titleIcon.topAnchor.constraint(equalTo: cardView.topAnchor,constant: 40),
        titleIcon.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
        titleIcon.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
        titleIcon.bottomAnchor.constraint(equalTo: titleLabel.topAnchor, constant:-30),
        
        titleLabel.centerXAnchor.constraint(equalTo: cardView.centerXAnchor),
        titleLabel.centerYAnchor.constraint(equalTo: cardView.centerYAnchor),
        titleLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 40),
        titleLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -40),
        
        seriesBtn.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 40),
        seriesBtn.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
        seriesBtn.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
        seriesBtn.heightAnchor.constraint(equalToConstant: 50),
        
        moviesBtn.topAnchor.constraint(equalTo: seriesBtn.bottomAnchor,constant: 20),
        moviesBtn.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
        moviesBtn.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
        moviesBtn.heightAnchor.constraint(equalToConstant: 50),
        
        animesBtn.topAnchor.constraint(equalTo: moviesBtn.bottomAnchor,constant: 20),
        animesBtn.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
        animesBtn.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
        animesBtn.heightAnchor.constraint(equalToConstant: 50),
        ])
    }

    @objc func goToMovies(){
        delegate?.goToMovie()
    }
    
    @objc func goToSeries(){
        delegate?.goToSerie()
    }
    
    @objc func goToAnimes(){
        delegate?.goToAnime()
    }

}




