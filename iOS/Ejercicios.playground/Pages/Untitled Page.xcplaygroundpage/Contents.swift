import UIKit
import Foundation


let remainder = 2 % 5


print(remainder)

var a = 3
a += 3

print(a)


//one side range

let names = ["Frida","Fernanda","David","Baloo"]

for name in names[2...] {
    
    print(name)
}

let enteredDoorCode = false
let passedRetinaScan = true
let hasDoorKey = false
let knowsOverridePassword = false

if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

let multilineString = """


    Hola
mundo
   cruel


"""
print(multilineString)


let threeDoubleQuotationMarks = """
Escaping the first quotation mark \"""
Escaping all three quotation marks \"\"\"
"""

print(threeDoubleQuotationMarks)

var myName = "Ing."

let infoRicardo = [" Ricardo "," David ", " Rojas ", " de ", " la ", " Rosa "]
print(myName)
for info in infoRicardo{
    myName.append(info)
}
print(myName)
//evita el salto de linea imprime : example\none
let scapingLiteralString = #"example\none"#


print(scapingLiteralString)

let segment = "trasferencia:"
let message = "este es el log de la trasfer"

let saludo  = "\(segment)\n\t\(message)"

print(saludo)


struct LogModel{
    let title: String
    let message: String
    let mark : Bool
    func printCustomLog(){
        if mark {
            print("\n\n************")
        }
        print("""

\n\(title)\n\t\(message)

""")
        if mark{
            print("\n\n************")
        }
    }
}

LogModel(title: "https:wueryiwue", message: "some message", mark: true).printCustomLog()

let escalrunicode = "\u{1F436}"
print(escalrunicode)


let dogString = "Dog‼🐶"

for scalar in dogString.unicodeScalars {
    print("\(scalar.value) ", terminator: "")
}


/*for scalar in dogString.unicodeScalars {
    print("\(scalar) ")
}*/


///Collections

//set
var collectionSet = Set<String>()
collectionSet.insert("a")
collectionSet.insert("c")

collectionSet.insert("b")

print(collectionSet)

collectionSet.contains("c")

collectionSet.count

for object in  collectionSet{
    
    print(object)
}


//Array

var arr = [String]()

var arrOtherDeclaration = Array<String>()

var arrtype : [String]
var arrTypeDeclaratoion : Array<String>

arr.append("uno")
arrOtherDeclaration.append("1")

//Empty array
let emprtyArr : [Int] = []

//crea un array con 3 veces el contenido //print ["uno", "uno", "uno"]
var threeDoubles = Array(repeating: "uno", count: 3)
print(threeDoubles)

//iterate with index enumerated()

for (index, value) in threeDoubles.enumerated(){
    
    if index == 1 {
        print("""

\(value)


""")
    }
}

//Set
var letters = Set<Character>()

letters.insert("a")


var favoriteGeners : Set<String> = ["Rock","clasical","Hip Hop","jazz"]
var shortWayfavoriteGeners : Set = ["Rock","clasical","Hip Hop","jazz"]

favoriteGeners.count

for genre in favoriteGeners {
    print("\(genre)")
}
for genre in favoriteGeners.sorted() {
    print("\(genre)")
}


let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]


houseAnimals.isSubset(of: farmAnimals)
// true
farmAnimals.isSuperset(of: houseAnimals)
// true
farmAnimals.isDisjoint(with: cityAnimals)
// true


//Dictionaries
print("""




""")

var score = 1
if score < 10 {
    defer {
        print(score)
    }
    score += 5
    defer {
        print(score)
    }
    
    score += 2
}




if score < 100 {
    score += 100
    
    defer {
        print(score)
    }
    
    defer {
        score -= 100
        
    }
  
    // Other code that uses the score with its bonus goes here.
    print(score)
}


if #available(iOS 10, macOS 10.12, *) {
    // Use iOS 10 APIs on iOS, and use macOS 10.12 APIs on macOS
} else {
    // Fall back to earlier iOS and macOS APIs
}


func getting(description other:String  )->String{
    "Hola"
}


func someFunc(first:String){
    
}

someFunc(first: "")

func othersomefunc(_ first:String){
    
}
othersomefunc("")


func someFuncDEfalultParameter(some param:String = ""){
    
}
someFuncDEfalultParameter


func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
// returns 3.0, which is the arithmetic mean of these five numbers
arithmeticMean(3, 8.25, 18.75)
// returns 10.0, which is the arithmetic mean of these three numbers


func multipleString(arrayof strings:String... ){
    for string in strings{
        
    }
}

multipleString(arrayof: "uno","dos")


func testinOutFunc(tyest param: inout String){
    
    param = "otra cosa "
    
}

var input = "una cosa"
print(input)
testinOutFunc(tyest: &input)

print(input)


func addTwoInts(_ x:Int, _ y: Int)-> Int { x+y }

func multiplyTwoInts(_ x:Int, _ y: Int)-> Int { x * y }

var opertaion : (Int, Int) ->Int = addTwoInts

print("Result " + String(opertaion(2,3)))

//inferencia
var operationInferencia = opertaion

print("Result " + String(operationInferencia(2,3)))

//funcion como parametro

func printMathResult(_ mathFunc: (Int, Int)->Int, _ a:Int, _ b: Int){
    print("Result : \(mathFunc(a, b))")
}

printMathResult(addTwoInts, 4, 4)
printMathResult(multiplyTwoInts, 4, 4)


//return type
func stepForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}


func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)


print("Counting to zero:")
// Counting to zero:
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")

//array sorted()
let namesExample = ["Chris", "Caris", "Alex", "Ewa", "Barry", "Daniella"]
print(namesExample.sorted())



func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = namesExample.sorted(by: backward)


let boolfFromString :Bool = "A" < "a"

//closure 
reversedNames = namesExample.sorted(by: { (s1: String, s2: String)-> Bool in
    return s1 > s2
    
})

//inferencia; ya no se dicen los tipos ni el valor de retorno ya que la funcion sorted tiene la estructura de datos
reversedNames = namesExample.sorted(by: { s1, s2 in  s1 > s2 } )
//shordhand

reversedNames = namesExample.sorted(by: { $0 > $1} )

//mas corto
reversedNames = namesExample.sorted(by: >)




func someFucntionThatTakesAClosure(closure:(_ s: String)-> Void){
    closure("closure")
}

someFucntionThatTakesAClosure {
   print($0)
}


let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}



func parentFunc(){
    func instedChindFunc(){
        
    }
    
    instedChindFunc()
}

let remainder2 = 9 % 18
print(remainder2)


func somefuncclosure(completion:(_ param:Bool)->Void)-> String{
    completion(true)
    return "was called"
}
somefuncclosure { param in
    if param{
        print("success")
    }
}

var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}


func someFunctionWithNonescapingClosure(closure: () -> Void) {
    closure()
}


class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure { self.x = 100 }
        
        someFunctionWithEscapingClosure { [self] in x = 100 }
        
        someFunctionWithNonescapingClosure { x = 200 }
    }
}


enum Dogs: CaseIterable{
    case Labrador
    case chiuagua
    case pastor
    
}

for dog in  Dogs.allCases{
    if dog == .Labrador{
        print("chalala")
    }
}

class someClassTest{
    
    var value1 : String?
    var value2 : String?
    
}

struct someStructTest{
    var value1 : String?
    var value2 : String?
}


var  wrapperClass = someClassTest()

var wrapperStruct = someStructTest()



wrapperClass.value1 = "fisrtFalue"
let otherwrapperClass = wrapperClass
print(wrapperClass.value1!)
otherwrapperClass.value1 = "otherValue"
print(wrapperClass.value1!)

if otherwrapperClass === wrapperClass{
    print("is same reference")
}


wrapperStruct.value1 = "fisrtStructFalue"
var otherwrapperStruct = wrapperStruct
print(wrapperStruct.value1!)
otherwrapperStruct.value1 = "otherValue"
print(wrapperStruct.value1!)
print(otherwrapperStruct.value1)



struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}
var square = Rect(origin: Point(x: 0.0, y: 0.0),
    size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
// initialSquareCenter is at (5.0, 5.0)
square.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
// Prints "square.origin is now at (10.0, 10.0)"


struct CompactRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            Point(x: origin.x + (size.width / 2),
                  y: origin.y + (size.height / 2))
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}


class StepCounter {
    var totalSteps: Int = 0 {
        willSet(mycustomValue) {
            print("About to set totalSteps to \(mycustomValue)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}


let stepCounter = StepCounter()
stepCounter.totalSteps = 200

stepCounter.totalSteps = 150
stepCounter.totalSteps = 50



@propertyWrapper
struct TwelveOrLess {
    private var number = 0
    var wrappedValue: Int {
        get { return number }
        set { number = min(newValue, 12) }
    }
}


struct SmallRectangle {
    @TwelveOrLess var height: Int
    @TwelveOrLess var width: Int
}

var rectangle = SmallRectangle()
print(rectangle.height)
// Prints "0"


rectangle.height = 10
print(rectangle.height)
// Prints "10"


rectangle.height = 24
print(rectangle.height)
// Prints "12"


struct someStruct{
    var x = 0.0

    mutating func changeX(x:Double){
        self = someStruct(x: x)
    }
    
}

enum complexityPerformance{
    case easy, medium, hard
    
   mutating func doSomethingWithComplexitySelected(){
        
        switch self{
        
        case .easy:
            self = .easy
            print("Selected easy type")
        case .medium:
            self = .medium
            print("Selected medium type")
        case .hard:
            self = .hard
            print("Selected hard type")
        }
    }
}


var complexity = complexityPerformance.hard
complexity.doSomethingWithComplexitySelected()


class ClassToDemostrateClassMethodsAndStaticMetods{
    var exampleVariable : String = ""
    class func classMethod(){
        //self.exampleVariable = "ClassMethod"
        print("ClassMethod Called")
    }
    
    static func staticMethod(){
       // self.exampleVariable = "staticMethod"
        print("static Method Called")
    }
    
    func instanceMethod(){
        self.exampleVariable = "instanceMethod"
        print("instance method Called")
    }
    
    
}


ClassToDemostrateClassMethodsAndStaticMetods.classMethod()
ClassToDemostrateClassMethodsAndStaticMetods.staticMethod()
//need to create instance
ClassToDemostrateClassMethodsAndStaticMetods().instanceMethod()


//Subscribes

struct TimesTable{
    
    var multiPlayer: Int

    subscript(index: Int)-> Int{
        
        return index * multiPlayer
    }
    
}

let TT = TimesTable(multiPlayer: 3)

print("TimeTables result: \(TT[6])")


struct SubscriptName{
   
    var getting = "Saludos "
    
    subscript(name: String)->String{
        return getting + name
    }
}


SubscriptName()["Ricardo"]


class SubscriptClass{
    var subscribContstant: String{  return  "nothing"}
    subscript(name: String)-> String{
        return name
    }
    
    func startClass(){
        print("Superlcass startClass")
    }
    // clave "final" perminte no sobreescribir el metodo
    final func methodAvoidOverRidden(){
        
    }
}

SubscriptName()["Hola"]


class SubscriptClasssubClass: SubscriptClass{
    override var subscribContstant : String { return "Other thing" }
    override func startClass() {
        
        
        super.subscribContstant
        
        super.startClass()
        print("SubClass startClass")
    }
}

SubscriptClasssubClass().startClass()

class SuperClassToDemostrateDisignatedAndconvenient{
    
    var someProperty: String = "cadena ejemplo"
    
    init(){
        print("Super.designated")
    }
}

class ClassToDemostrateDisignatedAndconvenient: SuperClassToDemostrateDisignatedAndconvenient{
    
    override init(){
        super.init()
        print("designated")
    }
    //este es otro tipo de init
    convenience init(some: String){
        
        print("convenience")
        self.init()
    }
}


ClassToDemostrateDisignatedAndconvenient(some: "que pasa")


class OtherSuperClassToDemostrateDisignatedAndconvenientExample: SuperClassToDemostrateDisignatedAndconvenient{
    
    override init() {
        print ("start Class")
        //Si voy a usar una propiedad de la superclasse se necesita llamar al super.init ejemplo someProperty, si no, no es nceesario llamar al super.init()
        super.init()
        someProperty = "hola"
    }
    
}

class Food {
    var name : String
    init(name: String) {
        self.name = name
    }
    
    convenience init(){
        self.init(name: "[Unnamed]")
        
    }
}



let food = Food()
food.name
let bacon = Food(name: "Bacon")
bacon.name


class RecipeIngredient:Food{
    var quantity :Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
    
}

let misteryIngredient = RecipeIngredient()
let onebacon = RecipeIngredient(name: "Bacon")
let sixEggs = RecipeIngredient(name: "Eggs", quantity: 6)


class ShoppingListItem: RecipeIngredient {
    var purchased = false
    var description: String {
        var output = "\(quantity) x \(name)"
        output += purchased ? " ✔" : " ✘"
        return output
    }
}


var breakfastList = [
    ShoppingListItem(),
    ShoppingListItem(name: "Bacon"),
    ShoppingListItem(name: "Eggs", quantity: 6),
]
//breakfastList[0].name = "Orange juice"
//breakfastList[0].purchased = true
for item in breakfastList {
    print(item.description)
}


let int = Int(exactly: 3.1)
print("\(String(describing: int))")


struct Animals{
    let species: String
    init?(species: String) {
        if species.isEmpty{ return nil }
        self.species = species
    }
}

let oso = Animals(species: "")


oso?.species


class  requiredMetodClassinit{
   
    required init(name:String) {
        print(name)
        

    }
   
}

requiredMetodClassinit(name: "hola")







// test await & async let 

//Macros

func myMacroFunction() {
    print("Actuamente corriendo \(#function)")
    #warning("Algo falló")
}

myMacroFunction()

func repeatFunc(name :String){
    print("Hola \(name)")
    #function
}
repeatFunc(name: "repeat")

/*public macro OptionSet<RawType>() =
#externalMacro(module: "SwiftMacros", type: "OptionSetMacro")


    @OptionSet<Int>
    struct SundayToppings{
        
        private enum Options: Int{
            case nuts
            case cherry
            case fudge
        }
    }*/






/*func myMacroFuncExample(){
    #myMacro("Hello")
}*/

extension Double{
    
    var Kilometers: Double { return self*1_000.0 }
}

var distance = 3.5
print("\(distance.Kilometers)")


extension Int {
    func repetitions(task: (_ str: String) -> Void) {
        for _ in 0..<self {
            task("some")
        }
    }
}


3.repetitions {str in 
    print(str)
}


func testInoutFuncion(name: inout String){
    
    name = "otra cosa"
}

var str = "test"

testInoutFuncion(name: &str)

print(str)


protocol testProtocolDelegate{
    var name: String { get set }// computed Property
    var fullName: String { get }
    func funcInProtocol()
}

protocol testProtocolInit{
    init(someParamenther: Int)
}

class InterfasOne: testProtocolDelegate{
    var fullName: String = ""
    
    var name: String = ""
    
    func funcInProtocol() {
        print("func protocolOne")
    }

}
class InterfasTwo: testProtocolDelegate, testProtocolInit{
    required init(someParamenther: Int) {
        
    }
    
    var name: String = ""
    var fullName: String = ""
    func funcInProtocol() {
        print("func protocoltwo")
    }

}






func implementProtocol(delegate: testProtocolDelegate){
    delegate.funcInProtocol()
}

let delegate = InterfasTwo(someParamenther: 2)
implementProtocol(delegate: delegate)


final class testFinalClass: testProtocolInit {
    init(someParamenther: Int) {
        
    }
    
    
}


protocol SomeProtocol {
    init()
}


class SomeSuperClass {
    init() {
        // initializer implementation goes here
    }
}


class SomeSubClass: SomeSuperClass, SomeProtocol {
    // "required" from SomeProtocol conformance; "override" from SomeSuperClass
    required override init() {
        // initializer implementation goes here
    }
}


// Protocols as Types

protocol testProtocolOnlyForClasess: AnyObject{
    
    func onlyForClasess()
}

/*struct testProtocolOnlyForclassessStruct :testProtocolOnlyForClasess{
    
}*/ //show us error

class testProtocolOnlyForclassessClass : testProtocolOnlyForClasess{
    func onlyForClasess() {
        
    }
    
    
}

// optional Protocol

@objc protocol optionalProtoicol{
    @objc optional func optionalFunction()
}


class teststructoptional : optionalProtoicol{
    
}


func testGeneric<T>(value: T, value2: T){
    
    print("\(T.self)")
    
}

let genericString = "oneThing"
let intValuetest = "44"

testGeneric(value: genericString, value2: intValuetest)


func genericWithPlaceHolder<cosas>(nombres: cosas){
    
}

struct stackGeneric<T>{
    var items : [T] = []
}

let stackStrings = stackGeneric<String>()
let stackInt = stackGeneric<Int>()

let stk = stackGeneric(items: ["","",""])


extension stackGeneric{
    var topItem : T? {
        return items.first
    }
}


protocol Container{
    
    associatedtype Item
    mutating func append(item:Item)
    var count: Int { get }
    subscript(i: Int) -> Item { get }

}

func allItemsMatch<C1: Container, C2: Container>
        (_ someContainer: C1, _ anotherContainer: C2) -> Bool
        where C1.Item == C2.Item, C1.Item: Equatable {


    // Check that both containers contain the same number of items.
    if someContainer.count != anotherContainer.count {
        return false
    }


    // Check each pair of items to see if they're equivalent.
    for i in 0..<someContainer.count {
        if someContainer[i] != anotherContainer[i] {
            return false
        }
    }


    // All items match, so return true.
    return true
}



extension stackGeneric where T:Equatable{
    func someEquableStuff(){
        //do something
    }
}


let number:UInt64  = 11111111
print("bits: \(number.nonzeroBitCount)")
var number16 = UInt8(199)



print("this is the number \(number16)")



class Customer{
    
    var name: String?
    var account:Account
    init(name: String? = nil, account: Account) {
        self.name = name
        self.account = account
    }
}

class Account{
    
    
}
var stepSize = 1


func increment(_ number: inout Int) {
    number += stepSize
}


//increment(&stepSize) // crash


let initialBits: UInt8 = 200
print("\(initialBits.byteSwapped)")
let invertedBits = ~initialBits  // equals 11110000
print("\(invertedBits)")


/*var potentialOverflow = Int16.max
potentialOverflow += 1


var unsignedOverflow = UInt8.max
// unsignedOverflow equals 255, which is the maximum value a UInt8 can hold
unsignedOverflow = unsignedOverflow &+ 1
// unsignedOverflow is now equal to 0*/


struct customAOClass {
    var some = String()
}

prefix operator =/
extension customAOClass {
    static prefix func =/ (vector: inout customAOClass) -> String {
        //vector += vector
        return vector.some
    }
}


var cc = customAOClass(some: "Hola")

let wrap = =/cc
