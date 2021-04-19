//
//  ViewController.swift
//  FlappyBird
//
//  Created by 荒井竣哉 on 2021/04/15.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //SKViewに型を変換
        let skView = self.view as! SKView
        
        //fps表示
        skView.showsFPS=true
        
        //ノード数表示
        skView.showsNodeCount=true
        
        //ビューと同じサイズでシーン作成
        let scene = GameScene(size: skView.frame.size)
        
        //ビューにシーンを表示
        skView.presentScene(scene)
        
    }
    
    //ステータスバーを消す
    override var prefersPointerLocked: Bool{
        get{
            return true
        }
    }


}

