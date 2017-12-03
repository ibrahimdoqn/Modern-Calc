//
//  ViewController.swift
//  Modern Calc
//
//  Created by Wantto on 2.12.2017.
//  Copyright © 2017 Wantto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var islem: UILabel!
    @IBOutlet weak var sonuc: UILabel!
    
    var sayi1 = ""
    var sayi2 = ""
    var islem1 = 0
    var islem2 = 0
    var sonucc = 0
    var saycontrol = false
    var isslem = false
    var loops = 0
    
    func islemm () {
        if islem2 == 1{
            sonucc = Int(sayi1)! + Int(sayi2)!
            sonuc.text = String(sonucc)
        }
        if islem2 == 2{
            sonucc = Int(sayi1)! - Int(sayi2)!
            sonuc.text = String(sonucc)
        }
        if islem2 == 3{
            sonucc = Int(sayi1)! * Int(sayi2)!
            sonuc.text = String(sonucc)
        }
        if islem2 == 4{
            sonucc = Int(sayi1)! / Int(sayi2)!
            sonuc.text = String(sonucc)
        }
    }
    
    func breakk () {
        sonucc = 0
        sonuc.text = "Hata"
        islem.text = ""
        islem1 = 0
        islem2 = 0
        sayi1 = ""
        sayi2 = ""
    }
    
    func sayiOne (x : String){
        isslem = false
        if islem1 == 0 {
            sayi1.append(x)
            islem.text?.append(x)
            }
        
        if islem1 >= 1 {
            sayi2.append(x)
            islem.text?.append(x)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        islem.text = ""
        sonuc.text = "0"
    }
    //Sayılar
    @IBAction func sifir(_ sender: Any) {
        sayiOne(x: "0")
    }
    @IBAction func bir(_ sender: Any) {
        sayiOne(x: "1")
    }
    @IBAction func iki(_ sender: Any) {
        sayiOne(x: "2")
    }
    @IBAction func uc(_ sender: Any) {
        sayiOne(x: "3")
    }
    @IBAction func dort(_ sender: Any) {
        sayiOne(x: "4")
    }
    @IBAction func bes(_ sender: Any) {
        sayiOne(x: "5")
    }
    @IBAction func alti(_ sender: Any) {
        sayiOne(x: "6")
    }
    @IBAction func yedi(_ sender: Any) {
        sayiOne(x: "7")
    }
    @IBAction func sekiz(_ sender: Any) {
        sayiOne(x: "8")
    }
    @IBAction func dokuz(_ sender: Any) {
        sayiOne(x: "9")
    }
    //Sayılar bitis
    //Fonksiyonlar +-*/
    @IBAction func topla(_ sender: Any) {
        if isslem == true {
            while loops < 3 {
                islem.text = String(islem.text!.dropLast())
                loops += 1
            }
            loops = 0
        }
            islem.text?.append(" + ")
            if islem1 >= 1 && isslem == false{
                islemm ()
                sayi1 = String(sonucc)
                sayi2 = ""
            }
        saycontrol = sayi1.isEmpty
        if saycontrol == false{
            islem1 += 1
        }
        else {
            breakk()
        }
        islem2 = 1
        isslem = true
    }
    @IBAction func cikar(_ sender: Any) {
        if isslem == true {
            while loops < 3 {
                islem.text = String(islem.text!.dropLast())
                loops += 1
            }
            loops = 0
        }
        islem.text?.append(" - ")
        if islem1 >= 1 && isslem == false{
            islemm ()
            sayi1 = String(sonucc)
            sayi2 = ""
        }
        saycontrol = sayi1.isEmpty
        if saycontrol == false{
            islem1 += 1
        }
        else {
            breakk()
        }
        islem2 = 2
        isslem = true
    }
    @IBAction func carp(_ sender: Any) {
        if isslem == true {
            while loops < 3 {
                islem.text = String(islem.text!.dropLast())
                loops += 1
            }
            loops = 0
        }
        islem.text?.append(" x ")
        if islem1 >= 1 && isslem == false{
            islemm ()
            sayi1 = String(sonucc)
            sayi2 = ""
        }
        saycontrol = sayi1.isEmpty
        if saycontrol == false{
            islem1 += 1
        }
        else {
            breakk()
        }
        islem2 = 3
        isslem = true
    }
    @IBAction func bol(_ sender: Any) {
        if isslem == true {
            while loops < 3 {
                islem.text = String(islem.text!.dropLast())
                loops += 1
            }
            loops = 0
        }
        islem.text?.append(" / ")
        if islem1 >= 1 && isslem == false{
            islemm ()
            sayi1 = String(sonucc)
            sayi2 = ""
        }
        saycontrol = sayi1.isEmpty
        if saycontrol == false{
            islem1 += 1
        }
        else {
            breakk()
        }
        islem2 = 4
        isslem = true
    }
    //Fonksiyonlar bitiş
    //Eşittir
    @IBAction func sonuc(_ sender: Any) {
        saycontrol = sayi2.isEmpty
        if saycontrol == true {
            breakk()
        }
        saycontrol = sayi1.isEmpty
        if saycontrol == true {
            breakk()
        }
        if islem2 == 1{
        sonucc = Int(sayi1)! + Int(sayi2)!
            sonuc.text = String(sonucc)
        }
        if islem2 == 2{
            sonucc = Int(sayi1)! - Int(sayi2)!
            sonuc.text = String(sonucc)
        }
        if islem2 == 3{
            sonucc = Int(sayi1)! * Int(sayi2)!
            sonuc.text = String(sonucc)
        }
        if islem2 == 4{
            sonucc = Int(sayi1)! / Int(sayi2)!
            sonuc.text = String(sonucc)
        }
        if islem2 == 0{
            sonuc.text = "Geçersiz Seçim."
        }
    }
    //AC Butonu
    @IBAction func buttonAc(_ sender: Any) {
        sonucc = 0
        sonuc.text = "0"
        islem.text = ""
        islem1 = 0
        islem2 = 0
        sayi1 = ""
        sayi2 = ""
    }
    
    
}
