//
//  ViewController.swift
//  PedidosISIS
//
//  Created by Camilo Alfonso on 6/09/17.
//  Copyright © 2017 Camilo Alfonso. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var platosTableView: UITableView!
    
    
    var arregloPLatos:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        arregloPLatos.append("Hamburguesa")
        arregloPLatos.append("Pizza")
        arregloPLatos.append("Papas")
        arregloPLatos.append("Calentado")
        arregloPLatos.append("Gaseosa")
        
        print("Los platos son: \(arregloPLatos)")
        
        platosTableView.delegate = self
        platosTableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "GoToDetallePlato"){
            let controladorDestino = segue.destination as! DetallePlatoViewController
            controladorDestino.textoTitulo = sender as? String
            
            
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        print("Se selecciona una celda en la posición: \(indexPath.row)")
        
        self.performSegue(withIdentifier: "GoToDetallePlato", sender: arregloPLatos[indexPath.row])
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arregloPLatos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "CellPlato")!
        
        cell.textLabel!.text = arregloPLatos[indexPath.row]
        
        return cell
    }
    
    
    
    
}

