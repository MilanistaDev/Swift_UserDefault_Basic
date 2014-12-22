// Playground - noun: a place where people can play

import UIKit

// UserDefaults Test

// 値生成(任意)
var name = "Milanista"
var array = ["Milan", "Inter", "Juventus"]
var i = 3
var d = 1.1
var b:Bool = true

// インスタンス生成
let defaults = NSUserDefaults.standardUserDefaults()

// キーに値をそれぞれ保存
defaults.setObject(name, forKey:"String")
defaults.setObject(array, forKey:"Array")
defaults.setInteger(i, forKey:"Integer")
defaults.setDouble(d, forKey:"Double")
defaults.setBool(b, forKey:"Bool")

// すぐに値を反映
defaults.synchronize()

// 値読み込み
let name2 = defaults.objectForKey("String") as? String
let array2 = defaults.objectForKey("Array") as? [String]
let i2 = defaults.integerForKey("Integer")
let d2 = defaults.doubleForKey("Double")
let b2 = defaults.boolForKey("Bool")

// すぐに値を反映
defaults.synchronize()

// KEYの削除
defaults.removeObjectForKey("String")
defaults.removeObjectForKey("Array")
defaults.removeObjectForKey("Integer")
defaults.removeObjectForKey("Double")
defaults.removeObjectForKey("Bool")

defaults.synchronize()
