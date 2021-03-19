//
//  ViewController.swift
//  timer
//
//  Created by Kuan-Yu on 2021/3/12.
//  ID: CEI107022

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setTime(time: 0);
        timerunning = false;
    }
    @IBAction func reset(_ sender: Any) {
        setTime(time: 0);
    }
    @IBAction func pasue(_ sender: Any) {
        myTime.invalidate();
        timerunning = false;
    }
    @IBAction func start(_ sender: Any) {
        if timerunning {
            return;
        } else {
            myTime = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeAddOne), userInfo: nil, repeats: true)
            myTime.fire();
            timerunning = true;
        }
    }
    @IBOutlet weak var clock: UILabel!
    
    @objc func timeAddOne() {
        setTime(time: second+1);
    }
    func setTime(time: Int) {
        second = time;
        let s: Int = time%60;
        let m: Int = time/60;
        clock.text = String(format: "%02d",m)+" : "+String(format: "%02d",s);
    }
    var second: Int = 0;
    var myTime = Timer();
    var timerunning: Bool = false;
}

