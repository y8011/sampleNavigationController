//
//  ViewController.swift
//  sampleNavigationController
//
//  Created by yuka on 2018/05/29.
//  Copyright © 2018年 yuka. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapFirstButton(_ sender: UIButton) {
        //　1 アラートのベースを作る
        let alertController = UIAlertController(title: "", message: "お風呂で使うものは？", preferredStyle: .alert)
        
        //2 ボタンを追加　追加したいボタンの数だけaddAction
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        // 3 アラートを表示
        present(alertController,
                animated: true,
                completion: nil
        )
    }
    // 戻ってきたときに発動する関数を先に書いて
    // StroryboadでButtonからFirstViewController のExitへ繋ぐことで戻れる
    @IBAction func backFromSecondView(segue:UIStoryboardSegue){
        print("戻ってきたよ")
    }

    // StoryboardではViewController から次の画面へ引っ張る
    // Segueにidentifierをつける
    // アラートを出してOKが押されたらセグエが発動する
    @IBAction func tapThirdButton(_ sender: UIButton) {
        
        print("ボタン押された")
        
        //　1 アラートのベースを作る
        let alertController = UIAlertController(title: "", message: "お風呂で使うものは？", preferredStyle: .alert)
        
        //2 ボタンを追加　追加したいボタンの数だけaddAction
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler:{action in
            print("やーやー")
            //セグエを発動するための関数
            // identifierはStoryboardでつけた名前と同じにする
            self.performSegue(withIdentifier: "segueko", sender: nil)
        }
        ))
        
        // 3 アラートを表示
        present(alertController,
                animated: true,
                completion: nil
        )
        

        
    }
    
    // セグエが発動したら呼ばれる
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("遷移する直前")
        print(segue.identifier)
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

