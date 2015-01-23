class zooTest {
    
    let countZoo :[String:String] = ["Bird":"Apple", "Zebra":"Mango", "Tiger":"Orange"]
    
    let zoo: String
    
    init(countZoo2 : String) {
        self.zoo = countZoo2
    }
    func zooTesting() -> String {
        var out:String = ""
        for (key, value) in countZoo{
            if(key==zoo){
                out = value
            }
        }
        return out
    }
}
let answer = zooTest(countZoo2: "Tiger")
answer.zooTesting()