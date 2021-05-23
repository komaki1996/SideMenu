README

# SideMenu - SwiftUI

## 機能
・左右上下からのメニュー表示に対応


## 実装方法
SideMenu.swiftをプロジェクト内に保存し参照

以下パラメータ入力で実装

### 左から右
```Swift
 SideMenu(view:testView(), //表示したいViewを指定
          width: UIScreen.main.bounds.width/2, //メニュー横幅
          height:UIScreen.main.bounds.height, //メニュー縦幅
          menuType:.fromLeft, //メニュータイプ (.fromLeft, .fromRight, .fromTop, .fromBottom)
          isOpen: self.$isOpen //@StateのBool
          )
                                 
```

### 右から左
```Swift
 SideMenu(view:testView(), //表示したいViewを指定
          width: UIScreen.main.bounds.width/2, //メニュー横幅
          height:UIScreen.main.bounds.height, //メニュー縦幅
          menuType:.fromRight, //メニュータイプ (.fromLeft, .fromRight, .fromTop, .fromBottom)
          isOpen: self.$isOpen //@StateのBool
          )
                                 
```

### 上から下
```Swift
 SideMenu(view:testView(), //表示したいViewを指定
          width: UIScreen.main.bounds.width, //メニュー横幅
          height:UIScreen.main.bounds.height/2, //メニュー縦幅
          menuType:.fromTop, //メニュータイプ (.fromLeft, .fromRight, .fromTop, .fromBottom)
          isOpen: self.$isOpen //@StateのBool
          )
                                 
```
### 下から上
```Swift
 SideMenu(view:testView(), //表示したいViewを指定
          width: UIScreen.main.bounds.width, //メニュー横幅
          height:UIScreen.main.bounds.height/2, //メニュー縦幅
          menuType:.fromBottom, //メニュータイプ (.fromLeft, .fromRight, .fromTop, .fromBottom)
          isOpen: self.$isOpen //@StateのBool
          )
                                 
```

