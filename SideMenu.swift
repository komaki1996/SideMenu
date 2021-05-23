enum menuType {
    case fromLeft
    case fromRight
    case fromTop
    case fromBottom
}
//サイドメニュー
struct SideMenu<Content: View>: View {
    let view: Content //表示させるViewを指定
    let width: CGFloat //メニューの幅を指定
    let height:CGFloat //メニューの高さを指定
    let menuType: menuType //type指定(.fromLeft, .fromRight, .fromTop)
    @Binding var isOpen: Bool //BtnのBoolを引数とする
    
    var body: some View {
        ZStack {
            GeometryReader { _ in
                EmptyView()
            }
            .background(Color.gray.opacity(0.3))
            .opacity(self.isOpen ? 1.0 : 0.0)
            .animation(Animation.easeIn.delay(0.25))
            .onTapGesture {
                self.isOpen.toggle()
            }
            if menuType == .fromTop {
                VStack() {
                    view
                        .frame(width: self.width, height: self.height)
                        .background(Color.white)
                        .animation(.default)
                        .offset(y: self.isOpen ? 0 : -self.height)
                    Spacer()
                }
            } else if menuType == .fromLeft {
                HStack() {
                    view
                        .frame(width: self.width, height: self.height)
                        .background(Color.white)
                        .animation(.default)
                        .offset(x: self.isOpen ? 0 : -self.width)
                    Spacer()
                }
                
            } else if menuType == .fromRight {
                HStack() {
                    Spacer()
                    view
                        .frame(width: self.width, height: self.height)
                        .background(Color.white)
                        .animation(.default)
                        .offset(x: self.isOpen ? 0 : +self.width)
                }
            } else if menuType == .fromBottom {
                VStack() {
                    Spacer()
                    view
                        .frame(width: self.width, height: self.height)
                        .background(Color.white)
                        .animation(.default)
                        .offset(y: self.isOpen ? 0 : +self.height)
                }
            } else {}
        }
    }
}
