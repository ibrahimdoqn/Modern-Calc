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
    @IBOutlet weak var sonuc: UILabel!//.text sonuc ekranı
    @IBOutlet weak var wantto: UILabel!
    
    var sayi1 = ""//str 1. giriş
    var sayi2 = ""//str 2. giriş
    var islem1 = 0//her yapılan işlemde 1 artar
    var islem2 = 0//Yapılacak işlemi hafızada tutar
    var sonucc = 0// int sonuc değeri
    var saycontrol = false// Sayi 1 Sayi değerinin içinin boş olup olmadığına bakar
    var isslem = false// İşlem fonksiyonunun kullanılıp kullanılmadığını kontrol eder
    var loops = 0// While döngüsünde kullanılmak üzere yaratıldı
    var fucto = false
    let valueSifre = "12041998"
    
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
        fucto = false
    }
    
    func sayiOne (x : String){
        isslem = false//İşlem fonksiyonun görevi biter
        if fucto == false {
        if islem1 == 0 {
            sayi1.append(x)
            islem.text?.append(x)
            }
        
        if islem1 >= 1 {
            sayi2.append(x)
            islem.text?.append(x)
            
        }
    }
    }
    func silme (){
        if fucto == false{
        if islem1 == 0 {
            sayi1 = String(sayi1.dropLast())
            islem.text! = String(islem.text!.dropLast())
        }
        
        if islem1 >= 1 {
            sayi2 = String(sayi2.dropLast())
            islem.text! = String(islem.text!.dropLast())
        }
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
    @IBAction func topla(_ sender: Any){
        if fucto == false{
        if isslem == true {//Kendisinden önceki 3 satırı siler
            while loops < 3 {
                islem.text = String(islem.text!.dropLast())
                loops += 1
            }
            loops = 0//Döngüyü sıfırlar
        }
            islem.text?.append(" + ")// İslem ekranına + basar
            if islem1 >= 1 && isslem == false{//islem değeri 1 ve daha önce islem fonk yapılmadı ise sonucu hesaplar
                islemm ()
                sayi1 = String(sonucc)
                sayi2 = ""
            }
        saycontrol = sayi1.isEmpty//Sayı 1 boş mu kontol eder
        if saycontrol == false{
            islem1 += 1
        }
        else {
            breakk()
        }
        islem2 = 1//Yapılacak işlem değerini sisteme girer
        isslem = true//İşlem fonk yapıldığını gösterir
    }
    }
    @IBAction func cikar(_ sender: Any) {
        if fucto == false{
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
    }
    @IBAction func carp(_ sender: Any){
        if fucto == false{
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
    }
    @IBAction func bol(_ sender: Any) {
        if fucto == false{
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
    }
    //Fonksiyonlar bitiş
    
    //C Ve Factoriel
    @IBAction func buttonSilme(_ sender: Any) {
        silme()
    }
    @IBAction func buttonFucto(_ sender: Any){
        saycontrol = sayi1.isEmpty
        if saycontrol == true {
            sayi1 = "0"
        }
        saycontrol = sayi2.isEmpty
        if saycontrol == true {
            sayi2 = "0"
        }
        if Int(sayi1)! < 21 && Int(sayi2)! < 21 {
        if fucto == false {
        var fuctoo = 1
        if islem1 > 1 {
            loops = 1
            while loops <= Int(sayi2)! {
                fuctoo *= loops
                loops += 1
            }
            sonuc.text = "!" + String(fuctoo)
            islem.text = sayi2 + "!"
            sayi1 = ""
        }
        else{
            loops = 1
            while loops <= Int(sayi1)! {
                fuctoo *= loops
                loops += 1
            }
            sonuc.text = "!" + String(fuctoo)
            islem.text = sayi1 + "!"
        }
        fucto = true
        }
    }
    }
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
        fucto = false
    }
    //wantto func
    @IBAction func wanttoButton(_ sender: Any) {
        if sayi1 == valueSifre{
            wantto.text = ""
        }
    }
    @IBAction func Wantto2(_ sender: Any) {
        if sayi1 == valueSifre{
            wantto.text = "Created By İbrahim DOĞAN"
        }
    }
    
}
