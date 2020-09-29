//
//  ViewController.swift
//  SummerPlayerViewDemo
//
//  Created by derrick on 2020/08/18.
//  Copyright © 2020 Derrick. All rights reserved.
//

import UIKit
import SummerPlayerView
class PlayerViewController: UIViewController, SummerPlayerViewDelegate  {
    
    
    @IBOutlet weak var videoPlayerView: SummerPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaultConfig = DefaultConfig()
        
        let playerView = SummerPlayerView(configuration: defaultConfig, theme: nil, header: nil,viewRect: view.bounds)
        
        playerView.sDelegate = self
    
        let playerItems = [
            Content(title: "Paris", url: "https://content.jwplatform.com/manifests/yp34SRmf.m3u8", thumbnail: "paris"),
            Content(title: "Busan", url: "https://multiplatform-f.akamaihd.net/i/multi/will/bunny/big_buck_bunny_,640x360_400,640x360_700,640x360_1000,950x540_1500,.f4v.csmil/master.m3u8", thumbnail: "busan"),
            Content(title: "Copenhagen", url: "https://content.jwplatform.com/manifests/yp34SRmf.m3u8", thumbnail: "cofenhagen"),
            Content(title: "SF", url: "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8", thumbnail: "sf"),
            Content(title: "Newyork", url: "https://bitdash-a.akamaihd.net/content/MI201109210084_1/m3u8s/f08e80da-bf1d-4e3d-8899-f0f6155f6efa.m3u8", thumbnail: "newyork"),
        ]
        
        if let currentItem = playerItems.first {
            playerView.setPlayList(currentItem: currentItem, items: playerItems, fullScreenView: view)
        }
        
        view.addSubview(playerView)
        
        playerView.pinEdges(to: view)
        
        playerView.playerStateDidChange = { (state) in
            print("playerStateDidChange")
        }
        playerView.playerDidChangeSize = { (dimension) in
            print("playerDidChangeSize")
        }
        playerView.playerTimeDidChange = { (newTime, duration) in
            print("playerTimeDidChange \(newTime)")
        }
        
        playerView.playerDidSelectItem = { (index) in
            print("Current Index \(index)")
        }
    }
    
    func didPressedBackButton() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "MainVC")
        self.present(controller, animated: true, completion: nil)
    }
    
}
