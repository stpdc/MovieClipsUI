# MovieClipsUI

## About

The MovieClipsNetworking is a UI toolbox that allows your iOS app:
1. Create and present a view with top and bottom horizontal collectionViews. 
2. Update view contents by updating MCClipsViewModel.
3. Subclass MCCarousel to create cusome horizontal collectionView

## Sample Usage

### MovieClipsViewController
Create MovieClipsViewController: 

```ruby
  let vc = MovieClipsViewController()
  vc.viewModel = MCClipsViewModel(with: <models>)
```

Model Update: 
```ruby
  viewModel.delegate = <target>
  let newModel = MCClipModel()
  let index = <index>
  viewModel.updateImageItem(item: newModel, at: index)
```

### MCCarousel
Initialization: 
```ruby
  init(contentType: MCCarouselContentType)
  
```
Default contentTypes:
```ruby
  enum MCCarouselContentType {
    case video, image
  }
```
Configuration:
```ruby
  MCCarousel().viewModel = MCClipsViewModel()
```

Subclaasing: 

1. number of cells per screen
```ruby
    override var numberOfVisibleCells: Int {
        return 1
    }          
```

2. zoom in and out animation for center cell item
```ruby
    override var zoomAnimation: Bool {
        return false
    }          
```

## Requirements

A deployment target of iOS 11 or higher is required

## Installation

MovieClipsUI is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MovieClipsUI'
```

## Author

stpdc, 43500109+stpdc@users.noreply.github.com

## License

MovieClipsUI is available under the MIT license. See the LICENSE file for more info.

Terms of Service

