//
//  Login1.swift
//  bachelours kitcheon
//
//  Created by nihaanth reddy on 12/08/21.
//

import SwiftUI

struct Login1: View {
    
    //MARK: - PROPERTIES
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [Color("mintgreen"), Color("blue")]), startPoint: .bottom, endPoint: .top).ignoresSafeArea(.all)
       
            VStack(spacing:30){
                //Logo
                Image("logo")
                    .resizable()
                    .frame(width: 120, height: 110)
                    .padding(.top,10)
                Spacer()
                
                //Form
                VStack(spacing: 25){
                    TextField("Username", text: $username)
                        .padding(10)
                        .font(Font.system(size: 15, weight:.bold, design: .monospaced))
                        .foregroundColor(.primary)
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black,lineWidth: 2).frame(height:45))
                        .multilineTextAlignment(.leading)
                    
                    VStack(spacing: 10){
                        SecureField("Password",text: $password)
                            .padding(10)
                            .font(.system(size: 15,weight: .bold,design: .monospaced))
                            .foregroundColor(.primary)
                            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black,lineWidth: 2).frame(height:45))
                        
                        
                        Button(action: {}){
                            Text("Forgot Password")
                                .modifier(CustomTextM(fontName: "", fontSize: 15, fontColor: Color.white))
                            
                        }
                    }
                }
                
                //signIn
                Button(action: {}){
                    Text("SIGN IN")
                        .modifier(CustomTextM(fontName: "Oxygen-Bold", fontSize: 16, fontColor: Color("blue")))
                }
                .modifier(SFButton())
                .background(Color.black)
                .cornerRadius(10)
                
                Spacer()
                //signUP
                VStack(spacing: 10){
                    Text("Don't have an account?")
                        .modifier(CustomTextM(fontName: "Oxygen-Regular", fontSize: 18, fontColor: Color.red))
                    Button(action: {}){
                        Text("Sign Up")
                            .modifier(CustomTextM(fontName: "Oxygen-Bold", fontSize: 18, fontColor: Color.black))
                    }
                }
                
            }
            .padding(.horizontal,28)
            .padding(.vertical,5)
        }
    }
}

struct ScreenFive_Previews: PreviewProvider {
    static var previews: some View {
        Login1()
    }
}

struct CustomTextM: ViewModifier {
    //MARK:- PROPERTIES
    let fontName: String
    let fontSize: CGFloat
    let fontColor: Color
    
    func body(content: Content) -> some View {
        content
            .font(.custom(fontName, size: fontSize))
            .foregroundColor(fontColor)
    }
}

struct SFButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity)
            .frame(height: 56, alignment: .leading)
    }
}
