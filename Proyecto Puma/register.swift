//
//  register.swift
//  Proyecto Puma
//
//  Created by stranger on 29/10/23.
//

import SwiftUI

struct register: View {
    @State var Correo:String=""
    @State var Contrasena:String=""
    @State var Telefono:String=""
    @State var Nombre:String=""
    var body: some View {
        
        VStack{
            Text("AREA DE REGISTRO")
                .font(.title3)
                .foregroundColor(.white)
                .bold()
            Image("logo")
                .resizable()
                .frame(width: 140, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
 Text("Rellene los datos")
    .foregroundColor(.white)
    .font(.title2)
    .bold()
            TextField("",text:$Nombre)
                .background(Color.clear)
                .keyboardType(.emailAddress)
                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color.white, lineWidth: 2)
                    
                                )
                .overlay(
                    Group{
                        if Nombre.isEmpty{
                            Text("Nombre Completo")
                             .bold()
                             .foregroundColor(.white)
                             .font(.subheadline)
                        }
                    }
                   
                )
                .foregroundColor(.blue)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Color.clear)
                .ignoresSafeArea(.all)
                .foregroundColor(.white)
            TextField("",text:$Correo)
                .background(Color.clear)
                .keyboardType(.alphabet)
                .overlay(
                   
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color.white, lineWidth: 2)
                    
                                )
                .overlay(
                    Group{
                        if Correo.isEmpty{
                            Text("Correo Electronico")
                             .bold()
                             .foregroundColor(.white)
                             .font(.subheadline)
                        }
                    }
                   
                )
                .foregroundColor(.blue)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Color.clear)
                .ignoresSafeArea(.all)
                .foregroundColor(.white)
                
            TextField("",text:$Telefono)
                .overlay(
                 RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.white,lineWidth: 2)
                )
                .overlay(
                    Group{
                        if Telefono.isEmpty{
                            Text("Telefono")
                             .bold()
                             .foregroundColor(.white)
                             .font(.subheadline)
                        }
                    }
                   
                )
                .foregroundColor(.white)
                .font(.title)
                .padding()
                .keyboardType(.numberPad)
            SecureField("",text:$Contrasena)
                .overlay(
                 RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.white,lineWidth: 2)
                )
                .overlay(
                    Group{
                        if Contrasena.isEmpty{
                            
                            
                           Text("Paasword")
                            .bold()
                            .foregroundColor(.white)
                            .font(.subheadline)
                        }
                    }
                )
                .foregroundColor(.white)
                .font(.title)
                .padding()
            Button(action: {
                            // Acción a realizar cuando se presione el botón
                            print("Botón presionado")
                        }) {
                            Text("Registrarse")
                                .foregroundColor(.white)
                                .padding()
                                .background(Color("celestoso"))
                                .cornerRadius(8)
                        }
            
        }
        .padding()
               .frame(maxWidth: .infinity, maxHeight: .infinity)
               .background(Color("background")) // Cambia el color de fondo aquí
               .edgesIgnoringSafeArea(.all)
    }
}

struct register_Previews: PreviewProvider {
    static var previews: some View {
        register()
    }
}
