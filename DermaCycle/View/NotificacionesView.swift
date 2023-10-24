//
//  NotificacionesView.swift
//  DermaCycle
//
//  Created by Franco Carreiro Eugenio on 15/10/2023.
//

import SwiftUI

struct NotificacionesView: View {
    
    @StateObject var datosContacto = promocionesViewModel()
    var body: some View {
        VStack{
            Spacer()
            Text("Nuestra forma de comunicarnos con vos")
            
            
            // DATOS DE CONTACTO 
            List(datosContacto.dataContacto){ item in
              Spacer()
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
}
#Preview {
    NotificacionesView()
}
