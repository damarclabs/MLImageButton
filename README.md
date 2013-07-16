# MLImageButton

OS X 自定义控制，实现自定义图片按钮，通过设置 imageName 自动实现 normal, hover, down, on 的几个状态，只需要把文件名按照特定的规定命名就能搞定。

<img src='https://raw.github.com/MacLabs/MLImageButton/master/MLImageButtonDemo/btn_normal.png' width='75px' /> / <img src='https://raw.github.com/MacLabs/MLImageButton/master/MLImageButtonDemo/btn_hover.png' width='75px' /> / <img src='https://raw.github.com/MacLabs/MLImageButton/master/MLImageButtonDemo/btn_down.png' width='75px' />
## 功能说明

做好几张图片，并加到项目中: 

* `like_normal.png`, `like_normal@2x.png`
* `like_hover.png`, `like_hover@2x.png`
* `like_down.png`, `like_down@2x.png`
* `like_on.png`, `like_on@2x.png`

```objective-c
MLImageButton *btn1 = [[MLImageButton alloc] init];
btn1.imageName = 'like'
```

这么一来，界面上显示的按钮就会实现鼠标经过、按下、开启的状态，并用对应的图片显示。

## 安装

使用 Cocoapods, 在 Podfile 里面加入

```ruby
pod 'MLImageButton', github: 'MacLabs/MLImageButton'
```
