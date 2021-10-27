#  SmartUIKit
### Installation
   ### Cocoapods

`
pod 'SmartUIKit', :podspec => 'https://raw.githubusercontent.com/ranvirp/SmartUIKit/master/SmartUIKit-Pod/SmartUIKit.podspec'
`

### Usage
  Please see examples in ViewController under SmartUIKit folder
  
####  Create View with Position
  Each screen is conisdered a 16x9 screen. 16 rows is equivalent to UIScreen.main.bounds.height. 9 cols
     is equivalent to UIScreen.main.bounds.width. Rows begin from 1 and it can have fractional values. Cols
     are -4.5-4.5 to cover entire screen. Value of 0 means center of screen. If a view is subview of another 
     view then 16x9 screen would be equivalent to heightxwidth of *that* view.
     Using this, we can create and position view in one step as follows: 

     let textView = UITextView(mTag:"text1", pos:.abs(row:2, col:2, rows:2, cols:2), superView:view) #Absolute Positioning

     let imgView = UIImageView(mTag:"img1", pos:.abs(row:2, col:2, rows:2, cols:2), superView:view) #Absolute Positioning
     
     let btn = UIButton(mTag:"view1",pos:.rel(posTag:"ttll",viewVert:view1,offsetVert:0, viewHor:view2, offsertHor:0, rows:2, cols:3),superView:view) # relative positioning with height and width specified. 
     
     let btn = UIButton(superView:view,pos:.reln(viewTop:viewTop,offsetTop:0, viewBottom:view2, offsertBottom:0, viewLeft:viewLeft, offsetLeft:0,
                        viewRight:viewRight, offsetRight:0), superView:view) # relative positioning without height and width specified. 
                        
     Note: if nil is given for any reference view then that reference is not set
     
   For example, copy paste the following code in viewDidLoad of UIViewController:
   
     let text = UITextView(mTag: "test1", pos: .abs(row: 1, col: -4, rows: -1, cols: 8), superView: view)
        text.applyString(string: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, ")
        CommonStyles.txtStyle().applyOnView(view: text)

        let img1 = UIImageView(mTag: "img1", pos: .rel(posTag: "tbll", horRefView: text, vertRefView: text, offsetVert: 0.5, offsetHor: 0, rows: 2, cols: 2), superView: view)
        img1.applyString(string: "https://homepages.cae.wisc.edu/~ece533/images/airplane.png")
        let caption = UITextView(mTag: "caption1", pos: .rel(posTag: "ttlr", horRefView: img1, vertRefView: img1, offsetVert: 0, offsetHor: 0.2, rows: 2, cols: 6), superView: view)
        caption.applyString(string: " This is an aeroplane ")
        var s = CommonStyles.txtStyle()
        s.fontSize = 40
        s.applyOnView(view: caption)
        let text1 = UITextView(mTag: "text1", pos: .rel(posTag: "tbll", horRefView: img1, vertRefView: img1, offsetVert: 0.5, offsetHor: 0, rows: -1, cols: 8), superView: view)
        text1.applyString(string: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, ")
        CommonStyles.txtStyle().applyOnView(view: text1)

![Output of the above code](https://user-images.githubusercontent.com/304673/120379694-c1656080-c33d-11eb-94b1-607d1ff6c045.png)

#### Set values to views
      btn.applyString("Submit")

      imgView.applyString("http://someurl")
      
      imgView.applyString("nameOfImageinAssets")
      
      textView.applyString("Text String")
      
      
#### Style
     Views can be styled by applying a style object
     
#### Creating Table View declarative manner

#### Creating Collection View declarative manner

#### Create standard viewcontroller transitions in a jiffy

#### Using standard textstyles easy
              

