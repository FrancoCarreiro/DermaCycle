//
//  PromocionesViewModel.swift
//  DermaCycle
//
//  Created by Franco Carreiro Eugenio on 02/10/2023.
//

import Foundation


@MainActor
class promocionesViewModel: ObservableObject {
    
    
    @Published var dataContacto : [Contacto] = []
    @Published var promos : [Promociones] = []
    
    
    func fetchContacto() async {
        
        var request = URLRequest(url: URL(string: "https://api-dermacycle.clearsky.com.ar/Promocion.ashx")!, timeoutInterval: Double.infinity)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("Dermacycle2018", forHTTPHeaderField: "User")
        request.addValue("7c4e22f4-6a6c-48de-b1c9-075979233ce5", forHTTPHeaderField: "Password")
        request.addValue("iPhone 7", forHTTPHeaderField: "Dispositivo")
        request.addValue("iOS 11.2.2", forHTTPHeaderField: "VersionSO")
        request.addValue("1.0.1", forHTTPHeaderField: "VersionAPP")
        
        request.httpMethod = "GET"
        
        do {
            
            
            let (data, _) = try await URLSession.shared.data(for: request)
            let json = try JSONDecoder().decode(responseServicioPromocion.self, from: data)
            //  print(json.Mensaje ?? "sin promociones")
            self.dataContacto = [json.Contacto]
        } catch let error as NSError {
            print("error en la API", error.localizedDescription)
        }
    }
    
}
    
    //  func fetchPromociones() async {
    
    //    var request = URLRequest(url: URL(string: // "https://api-dermacycle.clearsky.com.ar/Promocion.ashx")!, timeoutInterval:  Double.infinity)
    //    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    //    request.addValue("Dermacycle2018", forHTTPHeaderField: "User")
    //    request.addValue("7c4e22f4-6a6c-48de-b1c9-075979233ce5", forHTTPHeaderField: "Password")
    //    request.addValue("iPhone 7", forHTTPHeaderField: "Dispositivo")
    //   request.addValue("iOS 11.2.2", forHTTPHeaderField: "VersionSO")
    //   request.addValue("1.0.1", forHTTPHeaderField: "VersionAPP")
    
    //   request.httpMethod = "GET"
    
    //  do {
    
    
    //       let (data, _) = try await URLSession.shared.data(for: request)
    //     let json = try JSONDecoder().decode(responseServicioPromocion.self, from: data)
    //      print(json.Mensaje ?? "sin promociones")
    //      self.promociones = [json.Promociones]
    //   } catch let error as NSError {
    //     print("sin promociones", error.localizedDescription)
    //  }
    //  }
       
    

