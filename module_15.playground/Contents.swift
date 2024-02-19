import UIKit

//1
enum ServerError: Error {
    case error400
    case error404
    case error500
}

var error: ServerError = ServerError.error500

do {
    if error == ServerError.error400 {
        throw ServerError.error400
    }
    if error == ServerError.error404 {
        throw ServerError.error404
    }
    if error == ServerError.error500 {
        throw ServerError.error500
    }
}   catch ServerError.error400 {
    print("Bad Request")
}   catch ServerError.error404 {
    print("Not Found")
}   catch ServerError.error500 {
    print("Internal Server Error")
}
//2
var error400: Bool = true
var error404: Bool = false
var error500: Bool = false

func serverError() throws { if error400 {throw ServerError.error400};   if error404 { throw ServerError.error404 };   if error500 { throw ServerError.error500 } }
do {
    try serverError()
} catch ServerError.error400{
    print("Bad Request")
}   catch ServerError.error404 {
    print("Not Found")
}   catch ServerError.error500 {
    print("Internal Server Error")
}
//3
func comparisonTypes <T,D> (_ a: T,_ b: D) {
    if type(of: a) == type(of: b) {
        print("Yes")
    } else {
        print("No")
    }
}
comparisonTypes(3, "F")
//4
enum TypesError: Error {
    case different
    case same
}
func comparisonTypesError <T,D> (_ a: T,_ b: D) throws -> TypesError{
    if type(of: a) == type(of: b) {
        throw TypesError.same
    } else {
        throw TypesError.different
    }
}
do {
    try comparisonTypesError(5, 6)
} catch TypesError.same {
    print("Yes")
}   catch TypesError.different {
    print("No")
}
//5
func comparison <T: Equatable> (_ a: T,_ b: T) -> Bool {
    return a==b ? true : false
}
comparison(3,3)
