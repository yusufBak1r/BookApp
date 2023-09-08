

import SwiftUI

struct DetailScreen: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
   
    var  modelbook : Book
    var body: some View {
        ZStack {
            Color("Bg")
            ScrollView  {
                //            Product Image
                
                Image(modelbook.imagename)
                        .resizable()
                        .aspectRatio(1,contentMode: .fit)
                        .edgesIgnoringSafeArea(.top)
                
                
                DescriptionView(modelbook:modelbook)
                
            }
            .edgesIgnoringSafeArea(.top)
            
            HStack {
                Text("\(modelbook.price) TL")
                    .font(.title)
                    .foregroundColor(.white)
                Spacer()
                
               
            }
            .padding()
            .padding(.horizontal)
            .background(Color("color3"))
            .cornerRadius(60.0, corners: .topLeft)
            .frame(maxHeight: .infinity, alignment: .bottom)
            .edgesIgnoringSafeArea(.bottom)
            
            
            
            
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackButton(action: {presentationMode.wrappedValue.dismiss()}), trailing: Image("threeDot"))
        
        
        
        
    }
    
  
}


struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen( modelbook: Booklist[1]).environmentObject(CartManager())
    }
}




struct DescriptionView: View {
    var  modelbook : Book
    @EnvironmentObject var cartmanager : CartManager
    var body: some View {
        VStack (alignment: .leading) {
            //                Title
            Text("\(modelbook.bookname)\n\(modelbook.uothorname)")
                .font(.title)
                .fontWeight(.bold).foregroundColor(.black)
            //                Rating
            HStack (spacing: 4) {
                ForEach(0 ..< 5) { item in
                    Image(systemName: "star.fill").foregroundColor(Color.red)
                }
                Text("(4.9)")
                    .opacity(0.5)
                    .padding(.leading, 8)
                    .padding().foregroundColor(Color.red)
                 Button(action: {
                    
                     addtoliked()
                     
                 }, label: {
                     
                     Image(systemName: "heart.fill").resizable().frame(width: 40,height: 35).padding(.leading,100).foregroundColor(isliked() ? .red : .black)
                     
                 })
                
                
                
                
                
                
                
                Spacer()
            }.padding(.bottom,60)
            
            Text("Book About")
                .fontWeight(.medium)
                .padding(.vertical, 8).foregroundColor(.black)
            Text(modelbook.about)
                .lineSpacing(8.0)
                .opacity(0.6).foregroundColor(.black)
            
           
        }
        .padding()
        .padding(.top)
        .background(Color("Bg"))
        .cornerRadius(30, corners: [.topLeft, .topRight])
        .offset(x: 0, y: -30.0)
    }
    func isliked() -> Bool{
        return cartmanager.likedProduct.contains{product in
            return modelbook.id == product.id
        }
    }
    func addtoliked (){
        if  let index = cartmanager.likedProduct.firstIndex(where: { product in
            return self.modelbook.id == product.id
        }){
            cartmanager.likedProduct.remove(at: index)
        }
        else{
            cartmanager.likedProduct.append(modelbook)
        }
    }
}


struct BackButton: View {
    let action: () -> Void
    var body: some View {
        Button(action: action) {
            Image(systemName: "chevron.backward")
                .foregroundColor(.black)
                .padding(.all, 12)
                .background(Color.white)
                .cornerRadius(8.0)
        }
    }
}

