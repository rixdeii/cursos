import UIKit





/**    typeAlias with Closures     */ typealias SimpleClosure = ()-> Void /**    typeAlias with Closures     */


//func someFunctionwithSipleClosure(x:Int, y: Int, completion: @escaping ()-> Void){  //closure en el cuerpo de la funcion
func someFunctionwithSipleClosure(x:Int, y: Int, completion: @escaping SimpleClosure ){  //closure cambia por typeAlias
    completion()
}


/**    typeAlias with Protocols     */
//Podemos agrupar protocolos
typealias protocols = FirstSomeProtocol & SecondSomeProtocol & ExampleProtocol

typealias CountProtocols = FirstSomeProtocol & SecondSomeProtocol

//ejemplode uso
typealias TableViewMethods = UITableViewDelegate & UITableViewDataSource
/**    typeAlias with Protocols     */

protocol FirstSomeProtocol{
    func firstProtocolFucntion()
}

protocol SecondSomeProtocol{
    func secondPprotocolFucntion()
}
protocol ExampleProtocol{
    func examplemethod()
}

class SomeClass {

}


extension SomeClass : protocols{
    func examplemethod() {
        //implement method
    }
    
    func firstProtocolFucntion() {
        // implement method
    }
    
    func secondPprotocolFucntion() {
        // implement method
    }
    
   
}


/**    typeAlias with Delcare type     */  typealias TextType = String   /**    typeAlias with Delcare type     */ 


//func exampleMethod(with text: String){ // Tenemos el typo String Declarado
func exampleMethod(with text: TextType){ // podemos darle un nombre mas significativo al tipo de dato   y evitamos confuciones
    print(text)
}

exampleMethod(with: "Hola")


