import SwiftUI

struct ColorPalleteView1: View {
    
    @EnvironmentObject var globalStore: GlobalStore
    let radius: CGFloat = 100
    var diameter: CGFloat {
        radius * 2
    }
    
    @State private var startLocation: CGPoint?
    @State private var location: CGPoint?
    @Binding var indexNum: Int
    
    var body: some View {
            ZStack {
                //ColorPicker Circle
                if startLocation != nil {
                    
                    Circle()
                        .fill(
                            AngularGradient(gradient: Gradient(colors: [
                                Color(hue: 1.0, saturation: 1, brightness: globalStore.changeBrightness(currentIndex: indexNum)[0]),
                                Color(hue: 0.9, saturation: 1, brightness: globalStore.changeBrightness(currentIndex: indexNum)[0]),
                                Color(hue: 0.8, saturation: 1, brightness: globalStore.changeBrightness(currentIndex: indexNum)[0]),
                                Color(hue: 0.7, saturation: 1, brightness: globalStore.changeBrightness(currentIndex: indexNum)[0]),
                                Color(hue: 0.6, saturation: 1, brightness: globalStore.changeBrightness(currentIndex: indexNum)[0]),
                                Color(hue: 0.5, saturation: 1, brightness: globalStore.changeBrightness(currentIndex: indexNum)[0]),
                                Color(hue: 0.4, saturation: 1, brightness: globalStore.changeBrightness(currentIndex: indexNum)[0]),
                                Color(hue: 0.3, saturation: 1, brightness: globalStore.changeBrightness(currentIndex: indexNum)[0]),
                                Color(hue: 0.2, saturation: 1, brightness: globalStore.changeBrightness(currentIndex: indexNum)[0]),
                                Color(hue: 0.1, saturation: 1, brightness: globalStore.changeBrightness(currentIndex: indexNum)[0]),
                                Color(hue: 0.0, saturation: 1, brightness: globalStore.changeBrightness(currentIndex: indexNum)[0]),
                            ]), center: .center))
                        .frame(width: diameter, height: diameter)
                        .overlay(
                            Circle()
                                .fill(
                                    RadialGradient(gradient: Gradient(colors: [
                                        Color.white.opacity(globalStore.changeBrightness(currentIndex: indexNum)[0]), Color.white.opacity(0.000001)
                                    ]), center: .center, startRadius: 0, endRadius: radius)
                                )
                                .overlay(
                                    Circle()
                                        .strokeBorder(Color.white, lineWidth: 5))
                                .frame(width: diameter + 10, height: diameter + 10)
                        )
                        .position(startLocation!)
                        .shadow(color: Color.black.opacity(0.1), radius: 6, y: 8)
                    
                    
                    Circle()
                        .frame(width: 15, height: 15)
                        .position(location!)
                        .foregroundColor(.black)
                    
                }
                
            }//ZStack
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(RoundedCorners(color: globalStore.bgColor1, tl: 24, tr: 24, bl: 90, br: 24))
            .gesture(dragGesture)
            .overlay(
            Text(globalStore.score[0])
                .font(.largeTitle.bold())
                .foregroundColor(Color.black)
                .offset(y: 50))

        
    }
    
    
    
    
    
    var dragGesture: some Gesture {
        DragGesture(minimumDistance: 0)
            .onChanged { val in
                if startLocation == nil {
                    startLocation = val.location
                }
                
                let distanceX = val.location.x - startLocation!.x
                let distanceY = val.location.y - startLocation!.y
                
                let dir = CGPoint(x: distanceX, y: distanceY)
                var distance = sqrt(distanceX * distanceX + distanceY * distanceY)
                
                if distance < radius {
                    location = val.location
                    
                } else {
                    let clampedX = dir.x / distance * radius
                    let clampedY = dir.y / distance * radius
                    location = CGPoint(x: startLocation!.x + clampedX, y: startLocation!.y + clampedY)
                    distance = radius
                }
                
                if distance == 0 { return }
                
                var angle = Angle(radians: -Double(atan(dir.y / dir.x)))
                if dir.x < 0 {
                    angle.degrees += 180
                }
                else if dir.x > 0 && dir.y > 0 {
                    angle.degrees += 360
                }
                
                let hue = angle.degrees / 360
                let saturation = Double(distance / radius)
                globalStore.bgColor1 = Color(hue: hue, saturation: saturation, brightness: globalStore.changeBrightness(currentIndex: indexNum)[0])
            }
        
            .onEnded { val in
                startLocation = nil
                location = nil
                print("globalStore.bgColor1 = \(globalStore.bgColor1)")
                print(indexNum)
                
            }
    }
    
}
//struct ColorPalleteView1_Previews: PreviewProvider {
//
//
//
//    static var previews: some View {
//        ColorPalleteView1(indexNum: $indexNum).environmentObject(GlobalStore())
//    }
//}
