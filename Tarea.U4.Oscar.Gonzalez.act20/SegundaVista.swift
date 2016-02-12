//
//  SegundaVista.swift
//  Tarea.U4.Oscar.Gonzalez.act20
//
//  Created by Oscar on 10-02-16.
//  Copyright © 2016 Oscar. All rights reserved.
//

import UIKit

class SegundaVista: UIViewController {

    
    @IBOutlet weak var txtUsuario: UITextField!
        
    
    @IBOutlet weak var txtPassword: UITextField!
    
    
    // define a mutable array
    var users = [Vendedor]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Definicion de los usuarios y sus correspondientes contraseñas
        users += [Vendedor(name: "vendedor1",password:"clave1"), Vendedor(name: "vendedor2",password:"clave2")]
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnIngresar(sender: AnyObject) {
        var userFound: Bool
        userFound = false
        
        
        for userNames in users {
            if userNames.getName() == txtUsuario.text && userNames.getPassword() == txtPassword.text {userFound = true}
            
        }
    }
    
    // Asignacion al boton de limpiar, para que logre dejar limpios los campos de texto que se utilizan
    @IBAction func btnLimpiar(sender: AnyObject) {
        var userlimpiar: Bool
        userlimpiar = false
        
        var txtUsuario1 = txtUsuario.text;
        var txtPassword1 = txtPassword.text;
        
        
        if userlimpiar == false {
            txtUsuario.text = ""
            txtPassword.text = ""
        }
    }
    
    // Asignacion de volver a la vista anterior, en este caso de seleccion de ingreso
    @IBAction func btnVolver(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
