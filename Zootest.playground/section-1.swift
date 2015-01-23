class zooTest {
    
    let countZoo :[String] = ["Bird", "Zebra", "Tiger"]
    let foodAnimal:[String] = ["Apple", "Mango", "Orange"]
    
    let zoo: String
    
    init(countZoo2 : String) {
        self.zoo = countZoo2
    }
    func zooTesting() -> String {
        var out:String = ""
        for (var i=0 ; i<countZoo.count ; i++){
            if(countZoo[i]==zoo){
                out = foodAnimal[i]
            }
        }
        return out
    }
}
let answer = zooTest(countZoo2: "Zebra")
answer.zooTesting()