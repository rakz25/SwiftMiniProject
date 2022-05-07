//
//  MusicPlayerVC.swift
//  SwiftMiniProject
//
//  Created by Rakesh Lahkar on 26/04/22.
//

import UIKit

final class MusicPlayerVC: UIViewController {
    var album: Album
    
    private lazy var mediaPlayer: MediaPlayer = {
        let v = MediaPlayer(album: album)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    init(album: Album) {
        self.album = album
        super.init(nibName: nil, bundle: nil )
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setUpView()
    }
    
    private func setUpView(){
        addBlurView()
        view.addSubview(mediaPlayer)
        setUpConstraints()
        
        
    }
    private func addBlurView(){
        if UIAccessibility.isReduceTransparencyEnabled{
            self.view.backgroundColor = .clear
            let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.dark )
            let blurEffectView = UIVisualEffectView(effect: blurEffect)
            blurEffectView.frame = self.view.bounds
            blurEffectView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
            view.addSubview(blurEffectView)
        }else{
            view.backgroundColor = .black
        }
    }
    
    private func setUpConstraints(){
        
        NSLayoutConstraint.activate([
            mediaPlayer.leadingAnchor.constraint(equalTo:  view.leadingAnchor),
            mediaPlayer.trailingAnchor.constraint(equalTo:  view.trailingAnchor),
            mediaPlayer.topAnchor.constraint(equalTo:  view.topAnchor),
            mediaPlayer.bottomAnchor.constraint(equalTo:  view.bottomAnchor)
        
        ])
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        mediaPlayer.play()
        UIApplication.shared.isIdleTimerDisabled = true
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        mediaPlayer.stop()
        UIApplication.shared.isIdleTimerDisabled = false 
    }
  
    
}