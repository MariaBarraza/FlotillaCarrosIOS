//
//  ViewController.swift
//  FlotillaCarros
//
//  Created by Alumno on 9/20/19.
//  Copyright © 2019 fer. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var carros: [Carro] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carros.append(Carro(placa: "AFG9823", modelo: "Versa", marca: "Nissan", año: 2014))
        carros.append(Carro(placa: "OID235", modelo: "Tsuru", marca: "Toyota", año: 2014))
        carros.append(Carro(placa: "AFG9823", modelo: "Focus", marca: "Nissan", año: 2014))
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carros.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaCarro") as? CarroController
        
        celda?.lblAño.text = "\(carros[indexPath.row].año)"
        celda?.lblPlaca.text = carros[indexPath.row].placa
        celda?.lblModelo.text = carros[indexPath.row].modelo
        celda?.lblMarca.text = carros[indexPath.row].marca
        
        return celda!
    }
   
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 95
    }
   
}

