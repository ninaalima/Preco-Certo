//
//  ViewController.swift
//  Calculadora
//
//  Created by Marina Lima on 02/03/20.
//  Copyright © 2020 Marina Lima. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    
    
    
    //func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
//        if row == 0{
//        return "pequeno"
//        }else if row == 1{
//            return "médio"
//        }
//        return "grande"
        
//        return tamanho[row]
//
//    }
//
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 1
//    }
//
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return 3
//    }
    
    
    //var tamanho: [String] = []
   
    //@IBOutlet var testePicker: UIPickerView!
    @IBOutlet var suamaodeobraLabel: UILabel!
    @IBOutlet var salariomensalTextField: UITextField!
    @IBOutlet var horasmensaisTextField: UITextField!
    @IBOutlet var resultadomaodeobraLabel: UILabel!
    @IBOutlet var porHoraLabel: UILabel!
    @IBOutlet var scroll: UIScrollView!
    @IBOutlet var custoMaterial: UITextField!
    @IBOutlet var tempoProducao: UITextField!
    @IBOutlet var margemLucro: UITextField!
    
    @IBOutlet var valorFinal: UILabel!
    @IBOutlet var margemLucroTexto: UIImageView!
    
    @IBAction func botaoCalculaMaodeobra() {
        calculaMaodeobra()
    }
    
    @IBAction func margemLucroBotao(_ sender: UIButton) {
        apareceTextoMargem()
    }
    //    @IBAction func botaoProximo() {
//    }
//
//    @IBOutlet var botaoProximoOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //esse bloco é sobre o pickerview
//        testePicker.dataSource = self
//        testePicker.delegate = self
        
//
//        print(tamanho.count)
//
//        tamanho.append("pequeno")
//        tamanho.append("médio")
//        tamanho.append("grande")
//        print(tamanho[0])
        
//        let venda = Infos (salario: 1300, horas: 50)
//        print (venda.horas)
//
//        venda.horas = 70
//        print (venda.horas)
        
//        suamaodeobraLabel.isHidden = true
//        resultadomaodeobraLabel.isHidden = true
//        porHoraLabel.isHidden = true
//        botaoProximoOutlet.isHidden = true
        scroll.contentSize = CGSize(width: 331, height: 1396)
        margemLucroTexto.isHidden = true
        valorFinal.isHidden = true
      
    }
    
//    func leValoresDigitados (){
//        //Lê o que está escrito na text field Salário
//        //Lê o que está escrito na text field Horas
//    }
//
//    func exibeMaodeobra(){
//        //Exibe resultado de calculaMaodeobra na label Maodeobra
//    }
    
    func apareceTextoMargem (){
        margemLucroTexto.isHidden = false
        
    }
    
    func calculaMaodeobra(){
        //lê o que está escrito no text field de salário
        let resultadoSalario: Int = Int(salariomensalTextField.text!)!
        //printt (resultadoSalario)
        
        //tranforma text em int
//        let resultadoSalarioInt: Int = Int(resultadoSalario)!
        //print(resultadoSalarioInt)
        
        
        //lê o que está escrito no text field de horas
        let resultadoHoras: Int = Int (horasmensaisTextField.text!)!
            //print (resultadoMaodeobra)
            
            //tranforma text em int
//        let resultadoHorasInt: Int = Int(resultadoHoras)!
            //print(resultadoMaodeobraInt)
        
        
        let custoMaterialCalculo: Int = Int (custoMaterial.text!)!
        
        let tempoProducaoCalculo: Int = Int (tempoProducao.text!)!
        
        let margemLucroCalculo: Int = Int (margemLucro.text!)!
        
        //divide os valores
             let resultadoMaodeobraInt: Int = resultadoSalario / resultadoHoras
        
        let resultadoMaodeobra: String = String(resultadoMaodeobraInt)
         let margemLucroConvertido = margemLucroCalculo / 100
        let tempoProduto: Int = tempoProducaoCalculo * resultadoMaodeobraInt
        let resultadoFinal: Int = ((tempoProduto + custoMaterialCalculo) * margemLucroConvertido) + tempoProduto + custoMaterialCalculo
        
        valorFinal.isHidden = false
        
//        resultadomaodeobraLabel.text = "R$ \(resultadoMaodeobra) "
        
        valorFinal.text = "R$ \(resultadoFinal) "
        
//        resultadomaodeobraLabel.isHidden = false
//        suamaodeobraLabel.isHidden = false
//        porHoraLabel.isHidden = false
//        botaoProximoOutlet.isHidden = false
        
    }




}
