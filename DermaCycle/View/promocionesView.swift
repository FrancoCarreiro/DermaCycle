//
//  promocionesView.swift
//  DermaCycle
//
//  Created by Franco Carreiro Eugenio on 11/08/2023.
//

import SwiftUI


struct promocionesView: View{
    
    @StateObject var datosContacto = promocionesViewModel()
  @StateObject  var promociones = promocionesViewModel()
     
        
        
        var body: some View {
            
     
            
            List(datosContacto.dataContacto){ item in
            
                HStack {
                    Spacer()
                    Image(systemName: "phone.down.circle.fill")
                        .resizable()
                        .contextMenu {
                            Button {
                            } label: {
                                Text(item.Telefono_1!) }
                            Button {
                            } label: {
                                Text(item.Telefono_2!)
                            }
                            Button {
                            } label: {
                                Text(item.Telefono_3!)
                            }
                            
                        }
                    Image(systemName: "envelope.circle.fill")
                        .resizable()
                        .contextMenu {
                            Button {
                            } label : {
                                Text(item.Email!)
                            }
                        }
                   
                    Image(systemName: "phone.circle.fill")
                        .resizable()
                        .contextMenu {
                            Button {
                            } label : {
                                Text(item.Whatsapp!)
                            }
                        }
                    Image(systemName: "paperplane.circle.fill")
                        .resizable()
                        .contextMenu {
                            Button {
                            } label : {
                                Text(item.Direccion!)
                            }
                        }
                    Image(systemName: "person.3.fill")
                        .resizable()
                        .contextMenu {
                            Button {
                            } label: {
                                Text(item.Facbook!) }
                            Button {
                            } label: {
                                Text(item.Instagram!)
                            }
                            Button {
                            } label: {
                                Text(item.Twitter!)
                            }
                        }
                    Spacer()
                } .padding()
                
            } .task {
                await datosContacto.fetchContacto()
            }
            
        }
    }

    
    
struct promocionesView_Previews: PreviewProvider {
    static var previews: some View {
        promocionesView()
    }
}
