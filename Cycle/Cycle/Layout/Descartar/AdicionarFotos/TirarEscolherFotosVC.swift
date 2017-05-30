//
//  TirarEscolherFotosVC.swift
//  Cycle
//
//  Created by Lucas Barcelos on 30/05/17.
//  Copyright © 2017 LucasBarcelos. All rights reserved.
//

import UIKit

class TirarEscolherFotosVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate    {

    //MARK: - Outlets
    @IBOutlet weak var imagePicked: UIImageView!
    
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    //MARK: - Métodos
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            
            guard let imagePicked = self.imagePicked else {
                return
            }
            
            imagePicked.image = image
            imagePicked.contentMode = .scaleAspectFit
            self.dismiss(animated: true, completion: nil)
            return
        }
    }
    
    //MARK: - Actions
    @IBAction func btnVoltar(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnContinuar(_ sender: UIButton) {
        
    }
    
    @IBAction func btnTirarFoto(_ sender: UIButton) {
        
        // Criando alerta
        let alert = UIAlertController(title: "Fotos", message: "Você deseja tirar uma foto agora ou escolher uma da galeria?", preferredStyle: .actionSheet)
        
        // Adicionando botões no alerta
        // Botão Câmera
        alert.addAction(UIAlertAction(title: "Câmera", style: UIAlertActionStyle.default, handler: {action in
            
            if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera)
            {
                let imagePicker = UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.sourceType = UIImagePickerControllerSourceType.camera
                imagePicker.allowsEditing = true
                self.present(imagePicker, animated: true, completion: nil)
            }
            
            
        }))
        // Botão Galeria
        alert.addAction(UIAlertAction(title: "Galeria", style: UIAlertActionStyle.default, handler: {action in
            
            if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary)
            {
                let imagePicker = UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
                imagePicker.allowsEditing = true
                self.present(imagePicker, animated: true, completion: nil)
            }
            
        }))
        // Botão Fechar
        alert.addAction(UIAlertAction(title: "Fechar", style: UIAlertActionStyle.cancel, handler: {_ in alert.dismiss(animated: true, completion: nil)}))
        
        // Exibindo o alerta
        self.present(alert, animated: true, completion: nil)
    }


}
