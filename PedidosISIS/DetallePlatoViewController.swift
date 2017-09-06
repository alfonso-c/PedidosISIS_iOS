//
//  DetallePlatoViewController.swift
//  PedidosISIS
//
//  Created by Camilo Alfonso on 6/09/17.
//  Copyright © 2017 Camilo Alfonso. All rights reserved.
//

import UIKit

class DetallePlatoViewController: UIViewController {

    @IBOutlet weak var LabelTitulo: UILabel!
    
    var textoTitulo: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        LabelTitulo.text = textoTitulo
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cerrarVentana(_ sender: Any) {
        self.dismiss(animated: true){
            
        }
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
