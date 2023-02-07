import SwiftUI

import PlaygroundSupport

struct ContentView: View {
    //struct refers to something similar to a class; it holds various functions and variables of various datatypes
    //here it is stating the object; struct keyword is "ContentView", structure tag is "View"
    
    
    var width = 300.0;
    var height = 500.0;
    var circleSize = 150.0;
    var rectSize = (x: 250.0, y: 60.0)
    var body: some View {
        //usually, to store in a struct, some datatype would be required. Here by stating "some", there's no requirement to state the specific datatype
        
        ZStack{
            
            //stripes
            HStack(spacing: 0){
            
                HStack(spacing: 0) {
                    //VStack is a vertical stack; there's also HStack (horizontal) and ZStack (Layered stack)
                    //Rectangle()
                    //    .fill(Color.white).frame(width: 100, height: height);
                    Rectangle()
                        .fill(Color.blue).frame(width: 15, height: height);
                    Rectangle()
                        .fill(Color.cyan).frame(width: 20, height: height);
                    Rectangle()
                        .fill(Color.blue).frame(width: 5, height: height);
                    Rectangle()
                        .fill(Color.cyan).frame(width: 20, height: height);
                    Rectangle()
                        .fill(Color.blue).frame(width: 15, height: height);
                }
                HStack(spacing: 0) {
                    Rectangle()
                        .fill(Color.red).frame(width: 50, height: height);
                }
                HStack(spacing: 0) {
                    Rectangle()
                        .fill(Color.blue).frame(width: 15, height: height);
                    Rectangle()
                        .fill(Color.cyan).frame(width: 20, height: height);
                    Rectangle()
                        .fill(Color.blue).frame(width: 5, height: height);
                    Rectangle()
                        .fill(Color.cyan).frame(width: 20, height: height);
                    Rectangle()
                        .fill(Color.blue).frame(width: 15, height: height);
                }
            }
            
            Rectangle()
                .stroke(
                    Color.yellow,
                    lineWidth: 10
                    )
                .frame(width: rectSize.x, height: rectSize.y)
            
            //circles
            ZStack(){
                Circle()
                    .size(width: circleSize, height: circleSize)
                    .fill(Color.red)
                    .offset(x: width/2-circleSize/2, y: height/2-circleSize/2)


                //error here: as it turns out, SwiftUI only allows for either fill or stroke, not both at the same time
                
                
                
                Circle()
                    .size(width: circleSize, height: circleSize)
                    .stroke(
                        Color.yellow,
                        style: StrokeStyle(lineWidth: 5)
                        )
                    .offset(x: width/2-circleSize/2, y: height/2-circleSize/2)
                
                Rectangle()
                    .fill(Color.black)
                    .frame(width: rectSize.x, height: rectSize.y)
                    
                Text("MARTINI")
                    .font(.system(size: 50, weight: .bold))
                    .foregroundColor(.white)
                          //design: .Gillsans)
            }
        
        }
        
        .frame(width: width, height: height);
    }
}

PlaygroundPage.current.setLiveView(
  ContentView()
    .frame(width: 375, height: 812)
)

