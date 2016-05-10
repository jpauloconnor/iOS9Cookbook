//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Exercise from the 1.1 from iOS 9 Swift Programming Cookbook
//: Handling Erors
//: Throw an exception by using throw syntax. do, try, catch

enum Errors : ErrorType {
    case EmptyFirstName
    case EmptyLastName
}

func fullNameFromFirstName(fName: String, lastName: String) throws -> String {
    if fName.characters.count == 0 {
        throw Errors.EmptyFirstName
    }
    
    if lastName.characters.count == 0 {
        throw Errors.EmptyLastName
    }
    return fName + " " + lastName
}


//:Calling the method with the do statement

func example1(){
    do{
        let fullName = try fullNameFromFirstName("Paul", lastName: "O'Connor")
    } catch {
        print("An error has occurred")
    }
}


func example2(){
    do{
        let fullName = try fullNameFromFirstName("Paul", lastName: "O'Connor")
    }
    catch let err as Errors{
        print(err)
    }
    catch let ex as NSException{
        print(ex)
    }
    catch{
        print("otherise do this")
    }
}

