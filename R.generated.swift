//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try intern.validate()
  }
  
  /// This `R.file` struct is generated, and contains static references to 3 files.
  struct file {
    /// Resource file `Actions.sks`.
    static let actionsSks = Rswift.FileResource(bundle: R.hostingBundle, name: "Actions", pathExtension: "sks")
    /// Resource file `GameScene.sks`.
    static let gameSceneSks = Rswift.FileResource(bundle: R.hostingBundle, name: "GameScene", pathExtension: "sks")
    /// Resource file `Level1.txt`.
    static let level1Txt = Rswift.FileResource(bundle: R.hostingBundle, name: "Level1", pathExtension: "txt")
    
    /// `bundle.url(forResource: "Actions", withExtension: "sks")`
    static func actionsSks(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.actionsSks
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "GameScene", withExtension: "sks")`
    static func gameSceneSks(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.gameSceneSks
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "Level1", withExtension: "txt")`
    static func level1Txt(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.level1Txt
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 2 images.
  struct image {
    /// Image `block_05`.
    static let block_05 = Rswift.ImageResource(bundle: R.hostingBundle, name: "block_05")
    /// Image `door`.
    static let door = Rswift.ImageResource(bundle: R.hostingBundle, name: "door")
    
    /// `UIImage(named: "block_05", bundle: ..., traitCollection: ...)`
    static func block_05(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.block_05, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "door", bundle: ..., traitCollection: ...)`
    static func door(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.door, compatibleWith: traitCollection)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 1 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 2 localization tables.
  struct string {
    /// This `R.string.launchScreen` struct is generated, and contains static references to 0 localization keys.
    struct launchScreen {
      fileprivate init() {}
    }
    
    /// This `R.string.localizable` struct is generated, and contains static references to 4 localization keys.
    struct localizable {
      /// ru translation: Ошибка
      /// 
      /// Locales: ru, en
      static let error = Rswift.StringResource(key: "Error", tableName: "Localizable", bundle: R.hostingBundle, locales: ["ru", "en"], comment: nil)
      /// ru translation: Ошибка при загрузки сцены
      /// 
      /// Locales: ru, en
      static let errorLoadLevel = Rswift.StringResource(key: "ErrorLoadLevel", tableName: "Localizable", bundle: R.hostingBundle, locales: ["ru", "en"], comment: nil)
      /// ru translation: Ошибка при создании сцены
      /// 
      /// Locales: ru, en
      static let errorCreateScene = Rswift.StringResource(key: "ErrorCreateScene", tableName: "Localizable", bundle: R.hostingBundle, locales: ["ru", "en"], comment: nil)
      /// ru translation: Уровень
      /// 
      /// Locales: ru, en
      static let level = Rswift.StringResource(key: "level", tableName: "Localizable", bundle: R.hostingBundle, locales: ["ru", "en"], comment: nil)
      
      /// ru translation: Ошибка
      /// 
      /// Locales: ru, en
      static func error(_: Void = ()) -> String {
        return NSLocalizedString("Error", bundle: R.hostingBundle, comment: "")
      }
      
      /// ru translation: Ошибка при загрузки сцены
      /// 
      /// Locales: ru, en
      static func errorLoadLevel(_: Void = ()) -> String {
        return NSLocalizedString("ErrorLoadLevel", bundle: R.hostingBundle, comment: "")
      }
      
      /// ru translation: Ошибка при создании сцены
      /// 
      /// Locales: ru, en
      static func errorCreateScene(_: Void = ()) -> String {
        return NSLocalizedString("ErrorCreateScene", bundle: R.hostingBundle, comment: "")
      }
      
      /// ru translation: Уровень
      /// 
      /// Locales: ru, en
      static func level(_: Void = ()) -> String {
        return NSLocalizedString("level", bundle: R.hostingBundle, comment: "")
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    try storyboard.validate()
  }
  
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      try launchScreen.validate()
    }
    
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      static func validate() throws {
        if #available(iOS 11.0, *) {
        }
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}
