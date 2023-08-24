//
//  ContentView.swift
//  MyProject
//
//  Created by yusuf bakır on 19.06.2023.
//

import SwiftUI
import FirebaseAuth
import Firebase

struct ContentView: View {
   
    var body: some View {
        
        Home().preferredColorScheme(ColorScheme.dark)
            .environmentObject(CartManager())
    
    }

}


struct ContentView_Previews: PreviewProvider  {
    static var previews: some View {
      ContentView()
        
    }
}
struct Home :View {
    @State var index = 0
    var body: some View {
        GeometryReader {_ in
                
            NavigationStack {
                VStack {
                    Image("Move 1").resizable()
                        .frame(width: 105,height: 105).cornerRadius(25)
                       .padding(.top,40)
                    ZStack{
                        SignUP(index: self.$index)
                            .zIndex(Double(self.index))
                        login(index: self.$index)
                       
                    }
                    HStack(spacing: 15){
                        Rectangle().fill(Color.red).frame(height: 4)
                        Text ("OR")
                        Rectangle().fill(Color.red).frame(height: 4)
                    }
                    .padding(.horizontal,20)
                    .padding(.top,50)
                    HStack(spacing: 25){
                        Button(action: {
                            
                        }){
                            
                            Button(action: {
                                
                            }){
                                Image("facebook").resizable().renderingMode(.original).frame(width: 50,height: 50).clipShape(Circle())
                            }
                            Button(action: {
                                
                            }){
                                Image("apple").resizable().renderingMode(.original).frame(width: 50,height: 50).clipShape(Circle())
                            }
                            Button(action: {
                                
                            }){
                                Image("google").resizable().renderingMode(.original).frame(width: 50,height: 50).clipShape(Circle())
                            }
                        }
                        
                    }.padding(.vertical)
                    
                } .background(Color("color").edgesIgnoringSafeArea(.all))
            }
        }
    }
}
struct CShape :Shape {
    func path (in rect : CGRect ) -> Path  {
        return Path{ path in
            path.move  (to: CGPoint(x: rect.width , y:100))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: 0))
        }
    }
}
struct login:View {
   
    @State  var email:String = ""
    @State  var pass:String = ""
    @Binding  var index :Int
    @State private var showNewPage = false
    @State private var allertMesage:String = ""
    @State private var alert :Bool = false
    var body: some View{
        
        NavigationStack {
            ZStack(alignment: .bottom) {
                
                  VStack {
                    
                    HStack{
                        

                        VStack(spacing: 10){
                           
                            Text("Login").foregroundColor(self.index == 0 ? .white : .gray).font(.title).fontWeight(.bold)
                            
                            Capsule().fill(self.index == 0 ?
                                           Color.blue:    Color.clear).frame(width: 100,height: 5)
                           
                        }
                       
                        Spacer(minLength: 0)
                       
                    }
                     
               
                    .padding(.top ,30)
                    
                    VStack{
                        HStack(spacing:15) {
                            Image(systemName: "envelope.fill")
                                        .foregroundColor(Color("color1"))
                            TextField("Email Addres",text : self.$email)
                            
                        }
                        Divider().background(Color.white.opacity(0.5))
                    }
                    .padding(.horizontal)
                    .padding(.top,30)
                    
                    
                    
                    
                    VStack{
                        HStack(spacing:15) {
                            Image(systemName: "eye.slash.fill")
                                        .foregroundColor(Color("color1"))
                            SecureField("Password",text : self.$pass)
                            
                        }
                        Divider().background(Color.white.opacity(0.5))
                    }
                    .padding(.horizontal)
                    .padding(.top,30)
                    HStack{
                            Spacer(minLength: 0)
                        Button( action:
                                    {
                        })
                        
                        {
                            Text ("Forget Password ?")
                                .foregroundColor(Color.white.opacity(0.6))
                        }
                       
                    }
                    .padding(.horizontal)
                    .padding(.top,30)
                    
                
                }
                .padding()
                .padding(.bottom,65)
                .background(Color("color2"))
                
                .clipShape(CShape())
                .contentShape(CShape())
                .shadow(color: Color.black.opacity(0.3),radius:5,x:0 ,y: -5 )
                .onTapGesture {
                    self.index = 0
                }
                .cornerRadius(35)
                .padding(.horizontal,20)
                
                Button ( action: {
                 showNewPage = true
                })
                {
                   
                        Text("login")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding()
                            .padding(.horizontal,50)
                            .background(Color("color1"))
                            .clipShape(Capsule())
                            .shadow(color: Color.white.opacity(0.7), radius: 5,x:0 ,y: 5).alert(isPresented: $alert){
                                
                                Alert(title: Text("UYARI"),message: Text(allertMesage), dismissButton: .cancel())
                                
                                
                            }.fullScreenCover(isPresented: $showNewPage, content: {
                                HomePage()
                            })
                        
                    }
                .offset(y:25 )
                .opacity(self.index == 0 ? 1 : 0 )
            }
        }
    }
}
struct SignUP :View {
    @State  var email:String = ""
    @State  var pass:String = ""
    @State  var Repass:String = ""
    @Binding  var index  :Int
    @State var alertmessage :String = ""
    @State private var isValidEmail = true
    @State var alert:Bool = false
    var body: some View {
       
        ZStack(alignment: .bottom) {
            
            VStack {
               
                
                HStack{
                   Spacer(minLength: 0)
                    
                    VStack(spacing: 10){
                        
                        Text("Sign Up").foregroundColor(self.index == 1 ? .white : .gray).font(.title).fontWeight(.bold)
                        Capsule().fill(self.index == 1 ? Color.blue:    Color.clear).frame(width: 100,height: 5)
                        
                    }
                    

                }
           
                .padding(.top ,30)
          
                VStack{
                    HStack(spacing:15) {
                        Image(systemName: "envelope.fill")
                                    .foregroundColor(Color("color1"))
                        TextField("Email Addres",text : self.$email).keyboardType(.emailAddress)
                        
                    }
                    Divider().background(Color.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top,40)
                
                
                
                
                VStack{
                    HStack(spacing:15) {
                        Image(systemName: "eye.slash.fill")
                                    .foregroundColor(Color("color1"))
                        SecureField("Password",text : self.$pass)
                       
                        
                    }
                    Divider().background(Color.white.opacity(0.5))
                }
                
                
                
                .padding(.horizontal)
                .padding(.top,30)
//                replacing forget password with renter password...
//                so same height will be maintained...
                VStack{
                    HStack(spacing:15) {
                        Image(systemName: "eye.slash.fill")
                                    .foregroundColor(Color("color1"))
                        SecureField("Password",text : self.$Repass)
                        
                    }
                    Divider().background(Color.white.opacity(0.5))
                }
                
                .padding(.horizontal)
                .padding(.top,30)
           
            }
            .padding()
            .padding(.bottom,65)
            .background(Color("color2"))
            .clipShape(CShape1())
            .contentShape(CShape1())
            .shadow(color: Color.black.opacity(0.3),radius:5,x:0 ,y: -5 )
            .onTapGesture {
                self.index = 1
            }
            .cornerRadius(35)
            .padding(.horizontal,20)
            
            Button ( action: {
                if email.isValidEmail {
                    if email.isEmpty || pass.isEmpty && Repass.isEmpty  {
                        
                        alert = true
                     alertmessage = "E-Posta Ve Parolayı Doldurun! "
                    }
                    
                    if pass != Repass {
                        alert = true
                        alertmessage =  "Oluşturduğunuz parolayı lütfen her iki alana aynı olacak şekilde yazınız."
                    }
                    if pass.isEmpty && Repass.isEmpty {
                     alert = true
                        
                        
                        Auth.auth().createUser(withEmail: email, password: pass) {AuthDataResult,error in
                            if let auth = AuthDataResult {
                                print(auth)
                            }
                            if let error = error {
                                print(error)
                                print("hatta")
                                return
                            }
                            
                        }
                        
                    }
                    
                 
                }else {
                    alert = true
                    alertmessage = "Alanları Doldurunuz !"
                }
          
            }) {
                Text("Sing Up")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal,50)
                    .background(Color("color1"))
                    .clipShape(Capsule())
                    .shadow(color: Color.white.opacity(0.7), radius: 5,x:0 ,y: 5).alert(isPresented: $alert) {
                        Alert(title: Text("UYARI"), message: Text(alertmessage), dismissButton: .default(Text("Tamam")))
                    }
                
            }
            .offset(y:25)
            .opacity(self.index == 1 ? 1 :0)
        }
    }
}
struct CShape1 :Shape {
    func path (in rect : CGRect ) -> Path  {
        return Path{ path in
            path.move  (to: CGPoint(x: 0, y:100))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
        }
    }
}

extension String {
    var isValidEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: self)
    }
}
