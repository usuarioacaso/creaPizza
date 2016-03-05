//
//  ViewController.swift
//  creaPizza
//
//  Created by Adrian Camacho Soriano on 2/03/16.
//  Copyright © 2016 Adrian Camacho Soriano acaso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tamano = ""
    var masa = ""
    var queso = ""
    var ingrediente = ""
    
    var limpiaString:String = "Su Pizza"

    @IBOutlet weak var resultadoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultadoLabel.text = limpiaString
    }
    
    @IBAction func chicaTamano(sender: UIButton) {
        tamano = "Chica"
        displayPizza()
    }
    
    @IBAction func mediaTamano(sender: UIButton) {
        tamano = "Mediana"
        displayPizza()
    }
    
    @IBAction func granTamano(sender: UIButton) {
        tamano = "Grande"
        displayPizza()
    }
    
    @IBAction func delgaMasa(sender: UIButton) {
        masa = "Delgada"
        displayPizza()
    }
    
    @IBAction func crujiMasa(sender: UIButton) {
        masa = "Crujiente"
        displayPizza()
    }
    
    @IBAction func gruesaMasa(sender: UIButton) {
        masa = "Gruesa"
        displayPizza()
    }
    
    @IBAction func mozzaQueso(sender: UIButton) {
        queso = "Mozzarella"
        displayPizza()
    }
    
    @IBAction func cheddQueso(sender: UIButton) {
        queso = "Cheddar"
        displayPizza()
    }
    
    @IBAction func parmeQueso(sender: UIButton) {
        queso = "Parmesano"
        displayPizza()
    }
    
    @IBAction func sinQueso(sender: UIButton) {
        queso = "Sin queso"
        displayPizza()
    }
    
    @IBAction func jamIngred(sender: UIButton) {
        ingrediente = "Jamon"
        displayPizza()
    }
    
    @IBAction func peppIngred(sender: UIButton) {
        ingrediente = "Pepperoni"
        displayPizza()
    }
    
    @IBAction func pavoIngred(sender: UIButton) {
        ingrediente = "Pavo"
        displayPizza()
    }
    
    @IBAction func salIngred(sender: UIButton) {
        ingrediente = "Salchicha"
        displayPizza()
    }
    
    @IBAction func aceIngred(sender: UIButton) {
        ingrediente = "Aceituna"
        displayPizza()
    }
    
    @IBAction func limpiaBoton(sender: UIButton) {

        resultadoLabel.text = limpiaString
        limpieza()
    }
    
    func displayPizza(){
        let muestraString = String(format: "%@ %@ %@ %@", tamano, masa, queso, ingrediente)
        resultadoLabel.text = muestraString
        
    }
    
    func limpieza(){
        tamano = ""
        masa = ""
        queso = ""
        ingrediente = ""
    }
    
    @IBAction func confirmaBoton(sender: UIButton) {
        let confirma = ""
        
        switch confirma {
            case tamano :
            print("no hay tamano")
            let alerta = UIAlertController(title: "Atencion!", message: "Falta el tamaño de la pizza", preferredStyle: .Alert)
            let cancela = UIAlertAction(title: "Reintentar", style: .Cancel, handler: nil)
            alerta.addAction(cancela)
            self.presentViewController(alerta, animated:true, completion:nil)
            case masa:
            print("no hay masa")
            let alerta = UIAlertController(title: "Atencion!", message: "Falta el tipo de Masa", preferredStyle: .Alert)
            let cancela = UIAlertAction(title: "Reintentar", style: .Cancel, handler: nil)
            alerta.addAction(cancela)
            self.presentViewController(alerta, animated:true, completion:nil)
            case queso:
            print("no hay queso")
            let alerta = UIAlertController(title: "Atencion!", message: "Falta el queso de la pizza", preferredStyle: .Alert)
            let cancela = UIAlertAction(title: "Reintentar", style: .Cancel, handler: nil)
            alerta.addAction(cancela)
            self.presentViewController(alerta, animated:true, completion:nil)
            case ingrediente:
            print("no hay ingrediente")
            let alerta = UIAlertController(title: "Atencion!", message: "Faltan los ingredientes de la pizza", preferredStyle: .Alert)
            let cancela = UIAlertAction(title: "Reintentar", style: .Cancel, handler: nil)
            alerta.addAction(cancela)
            self.presentViewController(alerta, animated:true, completion:nil)
            default:
            print("Hay todo")
            let alerta = UIAlertController(title: "Confirmado !", message: "Su pizza esta completa !", preferredStyle: .Alert)
            let confirma = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alerta.addAction(confirma)
            self.presentViewController(alerta, animated:true, completion:nil)
        }
    }
}

