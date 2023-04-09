import SwiftUI

struct ContentView : View {
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(Color(red: 220/255, green: 220/255, blue: 220/255))
            
            VStack {
                Spacer().frame(height: 32).edgesIgnoringSafeArea(.top)
                
                HStack(alignment: .top) {
                    Spacer().frame(width: 32)
                    Rectangle()
                        .fill(Color.white)
                        .frame(minWidth: 400, idealWidth: 400, maxWidth: 400, minHeight: 770, idealHeight: 770, maxHeight: nil, alignment: .top)
                        .edgesIgnoringSafeArea(.all)
                        .overlay(
                            VStack (alignment: .leading) {
                                Rectangle().fill(Color(red: 220/255, green: 220/255, blue: 220/255)).frame(height: 552).padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
                                Text("NameofArtist \nThisIs TheTitleOfArt(1919)").font(.headline).bold().padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                                Text("Oil paint on canvas").font(.body).padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                                Spacer()
                                HStack(alignment: .bottom) {
                                    Spacer()
                                    Button("Previous"){ }.buttonStyle(.bordered).controlSize(.large).font(.system(size: 16, weight: Font.Weight.bold)).foregroundColor(Color.black).padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
                                    Button("Next"){ }.buttonStyle(.bordered).controlSize(.large).font(.system(size: 16, weight: Font.Weight.bold)).foregroundColor(Color.black).padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 16))
                                }
                            })
                    Spacer().frame(width: 32)
                    
                    VStack {
                        Spacer().frame(height: 332)
                        RoundedRectangle(cornerRadius: 24)
                            .fill(Color.white)
                            .frame(minWidth: 698, idealWidth: 698, maxWidth: nil, minHeight: 438, idealHeight: 438, maxHeight: nil, alignment: .bottomTrailing)
                            .overlay(
                                HStack(alignment: .top) {
                                    
                                    VStack(alignment: .leading) {
                                        Text("Drawing Board")
                                            .font(.headline)
                                        RoundedRectangle(cornerRadius: 16)
                                            .fill(Color(red: 220/255, green: 220/255, blue: 220/255))
                                        Spacer().frame(height: 16)
                                        
                                        HStack (alignment: .bottom) {
                                            Button("Reset"){ }.buttonStyle(.bordered).controlSize(.large).font(.system(size: 16, weight: Font.Weight.bold)).foregroundColor(Color.black)
                                            Button("Submit"){ }.buttonStyle(.bordered).controlSize(.large).font(.system(size: 16, weight: Font.Weight.bold)).foregroundColor(Color.black)
                                        }
                                    }
                                    Spacer().frame(width: 16)
                                    
                                    VStack(alignment: .leading) {
                                        Text("Match Color")
                                            .font(.headline)
                                        RoundedRectangle(cornerRadius: 12)
                                            .fill(Color(red: 220/255, green: 220/255, blue: 220/255))
                                            .frame(width: 140)
                                        Text("Mix Color")
                                            .font(.headline)
                                        Button("Cyan"){ }.buttonStyle(.bordered).controlSize(.regular).font(.system(size: 12, weight: Font.Weight.bold)).foregroundColor(Color.black)
                                        Button("Magenta"){ }.buttonStyle(.bordered).controlSize(.regular).font(.system(size: 12, weight: Font.Weight.bold)).foregroundColor(Color.black)
                                        Button("Yellow"){ }.buttonStyle(.bordered).controlSize(.regular).font(.system(size: 12, weight: Font.Weight.bold)).foregroundColor(Color.black)
                                        Button("Black"){ }.buttonStyle(.bordered).controlSize(.regular).font(.system(size: 12, weight: Font.Weight.bold)).foregroundColor(Color.black)
                                        Text("Mix Count")
                                            .font(.headline)
                                        RoundedRectangle(cornerRadius: 12)
                                            .fill(Color(red: 220/255, green: 220/255, blue: 220/255))
                                            .frame(width: 140, height: 32)
                                        
                                    }
                                }.padding()
                            )
                    }
                    Spacer().frame(width: 32)
                }
                Spacer().frame(height: 32).edgesIgnoringSafeArea(.bottom)
            }
            
            VStack {
                Spacer().frame(height: 32).edgesIgnoringSafeArea(.top)
                
                HStack(alignment: .top){
                    Rectangle()
                        .fill(Color.clear)
                        .frame(minWidth: 464, idealWidth: 464, maxWidth: 464, minHeight: 770, idealHeight: 770, maxHeight: nil, alignment: .top)
                    Rectangle()
                        .fill(Color.clear)
                        .frame(minWidth: 698, idealWidth: 698, maxWidth: nil, minHeight: 300, idealHeight: 300, maxHeight: 300, alignment: .top)
                        .background(RoundedCorners(color: .white, tl: 150, tr: 0, bl: 150, br: 0))
                        .shadow(color: .black.opacity(0.5), radius: 10, x: 10, y: 10)
                        .overlay(
                            HStack(alignment: .bottom) {
                                Circle().fill(Color.yellow).frame(width: 268, height: 268).padding()
                                
                                VStack(alignment: .leading) {
                                    Text("This is The Title").font(.largeTitle).bold().padding(EdgeInsets(top: 32, leading: 0, bottom: 0, trailing: 32))
                                    Spacer()
                                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas consectetur lorem at consequat porttitor. Nam auctor turpis et purus cursus vehicula quis et magna. Sed non risus nec quam molestie congue eu et neque. Suspendisse ipsum est, maximus a luctus vel, maximus vel libero. Nullam malesuada fringilla massa, a pellentesque tellus tristique at. Sed a facilisis dolor.").font(.body).lineLimit(8).padding(EdgeInsets(top: 0, leading: 0, bottom: 32, trailing: 16))
                                }
                            })
                }
            }
        }
        
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
