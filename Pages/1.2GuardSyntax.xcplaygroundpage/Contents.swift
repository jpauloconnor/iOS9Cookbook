//: [Previous](@previous)

import Foundation

//Method takes an optional piece of data as the NSData type and turns it inot a String only if the string has some characters in it and is not empty
func stringFromData(data: NSData?) -> String? {
    guard let data = data,
    let str = NSString(data: data, encoding: NSUTF8StringEncoding)
        where data.length > 0 else{
            return nil
    }
    return String(str)
}

//Pass nil to this method for now & trigger the failure block.

func example() {
    if let _ = stringFromData(nil)
    {
        print("Got the string")
    } else {
        print("No string came back")
    }
}

example()

//If we passed valid data.

func example2() {
    guard let data = NSString(string: "Yo").dataUsingEncoding(NSUTF8StringEncoding) where data.length > 0 else{
        return
    }
    if let str = stringFromData(data) {
        print("Got the string \(str)")
    } else {
        print("no string came back")
    }
}

example2()

func example3(firstName firstName: String?, lastName: String?, age: UInt8?){
    
    guard let first = firstName, let last = lastName , _ = age where
        first.characters.count > 0 && last.characters.count > 0 else{
            return
    }
    
    print(first, " ", last)
    
}
//: [Next](@next)

