import SwiftUI

struct ContentView : View {
    
    @State var selectedColor: Color = .red
    
    
    var body: some View {
        
        HStack {
          
            //이미지 버튼
            Button(action: {
                
            }) {
                Image("IMG_001")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 400, height: 700)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 10))
            }
            
            
            //Color Picker 기능
            ColorPicker(" ", selection: $selectedColor)
                .frame(width: 200, height: 200)
                .background(RoundedCorners(color: selectedColor, tl: 200, tr: 200, bl: 200, br: 200))
            
            
            
            //텍스트
            Text("Import Image")
                .foregroundColor(.black).font(.title).padding(15)
                .background(RoundedCorners(color: .green, tr: 30, bl: 30))
            
            Text("Oreo")
                .foregroundColor(.black).font(.title).padding(15)
                .background(RoundedCorners(color: .blue, tl: 30, br: 30))
            
        }.padding(20).border(Color.gray).shadow(radius: 3)
    }
}

//코너 라운드 기능

struct RoundedCorners: View {
    var color: Color = .black
    var tl: CGFloat = 0.0 // top-left radius parameter
    var tr: CGFloat = 0.0 // top-right radius parameter
    var bl: CGFloat = 0.0 // bottom-left radius parameter
    var br: CGFloat = 0.0 // bottom-right radius parameter
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                
                let w = geometry.size.width
                let h = geometry.size.height
                
                // We make sure the radius does not exceed the bounds dimensions
                let tr = min(min(self.tr, h/2), w/2)
                let tl = min(min(self.tl, h/2), w/2)
                let bl = min(min(self.bl, h/2), w/2)
                let br = min(min(self.br, h/2), w/2)
                
                path.move(to: CGPoint(x: w / 2.0, y: 0))
                path.addLine(to: CGPoint(x: w - tr, y: 0))
                path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: w, y: h - br))
                path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                path.addLine(to: CGPoint(x: bl, y: h))
                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: tl))
                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
            }
            .fill(self.color)
            
        }
    }
}


/* Geometry 개념 익히기
 
 struct ContentView: View {
 var body: some View {
 VStack {
 Text("Hello")
 RightView()
 }.frame(width: 150, height: 100).border(Color.black)
 .frame(width: 170, height: 120).border(Color.black)
 }
 }
 
 struct RightView: View {
 var body: some View {
 GeometryReader { geometry in
 VStack {
 Rectangle()
 .path(in: CGRect(x: geometry.size.width + 0, y:0, width: geometry.size.width / 2.0, height: geometry.size.height / 2.0))
 .foregroundColor(.blue)
 }
 }
 }
 }
 
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 
 */
