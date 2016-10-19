//
//  ViewController.swift
//  TDD_example
//
//  Created by xnxin on 2016/10/18.
//  Copyright © 2016年 xnxin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    var game:Game? {
        willSet {
            gameScore = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        game = Game()
        // Do any additional setup after loading the view.
    }
    
    var gameScore:Int = 0 {
        didSet {
            numberButton.setTitle("\(gameScore)", for: .normal)
        }
    }
    
    func play(_ move: Move) {
        guard let game = game else {
            print(" game is nil !")
            return
        }
        
        let newScore = game.play(move).score
        gameScore = newScore
    }

//    @IBAction func tapNumberButton(_ sender: UIButton) {
//        play(.number(gameScore + 1))
////        self.play(sender.titleLabel?.text ?? "0")
////        sender.titleLabel?.text = "\(gameScore)"
//    }
//
//    @IBAction func tapFizzButton(_ sender: UIButton) {
//        play(.fizz)
//    }
//    
//    @IBAction func tapBuzzButton(_ sender: UIButton) {
//        play(.buzz)
//    }
//    
//    @IBAction func tapFizzBuzzButton(_ sender: UIButton) {
//        play(.fizzBuzz)
//    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        if sender == self.numberButton {
            play(.number(gameScore + 1))
        }
        if sender == self.fizzButton {
            play(.fizz)
        }
        if sender == self.buzzButton {
            play(.buzz)
        }
        if sender == self.fizzBuzzButton {
            play(.fizzBuzz)
        }
    }
    @IBAction func tapplayButton(_ sender: UIButton) {
        game = Game()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
