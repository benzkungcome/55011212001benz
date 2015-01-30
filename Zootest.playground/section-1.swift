class zooTest {
    
    let countZoo :[String] = ["Bird", "Zebra", "Tiger"]
    let countfood :[String] = ["Apple", "Mango", "Orange"]
    
    let zoo: String
    
    init(countZoo2 : String) {
        self.zoo = countZoo2
    }
    func zooTesting() -> String {
        var out:String = ""
        for (var i=0 ; i<countZoo.count ; i++){
            if(zoo==countZoo[i]){
                println("Your animal have eat : \(countfood[i])")
                out=countfood[i]
                break
            }
        }
        return out
    }
}
let answer = zooTest(countZoo2: "Tiger")
answer.zooTesting()
