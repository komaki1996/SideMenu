import SwiftUI

struct ContentView: View {
  @State private var isOpen:Bool = false
  
  var body: some View {
    ZStack() {
      VStack() {
        Text("")
      }
      
      SideMenu(view:testView(),
               width: UIScreen.main.bounds.width,
               height:UIScreen.main.bounds.height/2,
               menuType:.fromTop,
               isOpen: self.$isOpen
              )
    }
  }
}
