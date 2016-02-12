//
//  ViewController.swift
//  Tarea.U4.Oscar.Gonzalez.act20
//
//  Created by Oscar on 04-02-16.
//  Copyright © 2016 Oscar. All rights reserved.
//

import UIKit
import LocalAuthentication


class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
   
    
    @IBAction func Autentificador(sender: AnyObject) {
             self.autenticacionTouchID()
    }
 
  
 
    func autenticacionTouchID() {
        
        let context = LAContext()
        // Variable usada para chequeo de errores
        var error: NSError?
        
        // Mensaje motivación para autenticacion
        let reasonString = "Autenticación necesaria para acceder a datos."
        
        
    
        
        
        
        // Puede el sistema autenticar?
        if context.canEvaluatePolicy(LAPolicy.DeviceOwnerAuthenticationWithBiometrics, error:&error){
            [context .evaluatePolicy(LAPolicy.DeviceOwnerAuthenticationWithBiometrics, localizedReason: reasonString, reply: { (success: Bool, evalPolicyError: NSError?) -> Void in
                
                if success {
                    // definir qué hacer en caso de éxito
                }
                    
                else{
                    
                    switch evalPolicyError!.code {
                        
                    case LAError.SystemCancel.rawValue:
                        print("Cancelado por el sistema")
                        
                    case LAError.UserCancel.rawValue:
                        print("Cancelado por el usuario")
                        
                    case LAError.UserFallback.rawValue:
                        print("Usuario decide no utilizar TouchID")
                        
                    default:
                        print("Autenticación fallida")
                    }
                }
                
            })]
        }
          // El sistema puede autenticar
        else{
            switch error!.code{
                
            case LAError.TouchIDNotEnrolled.rawValue:
                print("TouchID no enrolado")
                
            case LAError.PasscodeNotSet.rawValue:
                print("Ningún passcode ha sido seteado")
                
            default:
                print("TouchID no disponible")
            }
            
            self.autenticacionPassword()
        }
        
    }
    
    func autenticacionPassword () {
        // habilitar autenticación por password (tradicional)
    }
}

