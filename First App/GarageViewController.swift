import UIKit

class GarageViewController: UIViewController {

    var st: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("- - - - - - - - START - - - - - - - -")
        

//        var str: String = getNameFromServer()
//        print(str)
//        var x = str.count
//        print(x)
                
        
        
        let c: Int = st.count
        st = "Guy"
        
        var str = getNameFromServer();

        if (str != nil) {
            let tempStr: String! = str
            var x1 = tempStr.count
            var x2 = tempStr.capitalized
            var x3 = tempStr.lowercased()
        }

        
        if let tempStr = str {
            var x1 = tempStr.count
            var x2 = tempStr.capitalized
            var x3 = tempStr.lowercased()
        }
        
        
        var c1: Car? = nil
        c1?.drive()
        
        //var c2 = Car(model: "Mitsubishi", engine: 1.6)
        var c2 = Car(model: "Ferrari", engine: 1.6)
        c2.toString()
        
        
        var p1 = P(x: 2, y: 444)
        var p2 = P(y: 5)

        print("- - - - - - - - END - - - - - - - -")
    }

    
    func getNameFromServer() -> String! {
        
        
        return "Alon"
    }
}


struct P {
    var x: Int?
    var y: Int
}

struct Car {
    
    var model: String
    var engine: Double
    var km: Int = 0
    
    mutating func drive() {
        km += 100;
        print("driving")
    }
    
    func toString() {
        print("\(model): \(engine) liter")
    }
    
}
