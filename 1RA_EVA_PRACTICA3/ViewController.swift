//
//  ViewController.swift
//  1RA_EVA_PRACTICA3
//
//  Created by TEMPORAL2 on 17/02/17.
//  Copyright © 2017 comdanelly. All rights reserved.
// <Hola mundo>
// written by: DANELLY MONTAÑEZ HERNÁNDEZ
// <INSTITUTO TECNOLÓGICO DE CHIHUAHUA II>
// <Desarrollo de Aplicaciones para Dispositivos Móviles, Plataforma 1>
// <03-05-2017>

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var fallo: UILabel!
    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBAction func loginButton(sender: UIButton) {
        if(txtUser.text=="usuario" && txtPassword.text=="1234"){
            let emergente = UIAlertController(title:"Autentificado", message: "bienvenido", preferredStyle: .Alert)
            let ok = UIAlertAction(title:"ok", style: .Default, handler:nil)
            let cancel = UIAlertAction(title: "cancel", style: .Cancel, handler:nil)
            
            emergente.addAction(ok)
            emergente.addAction(cancel)
            presentViewController(emergente, animated: true, completion:nil)
            fallo.text = " "
        }
        else{
            fallo.text = "WRONG USER OR PASSWORD"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

