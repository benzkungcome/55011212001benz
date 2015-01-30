class zooTest {
    
    //FreeArray
    var countZoo :[String] = ["Bird", "Zebra", "Tiger"]
    var countfood :[String] = ["Apple", "Mango", "Orange"]
    
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
    
    
    func editAnimal(animal:String, newanimal:String){
        for(var i=0 ; i<countZoo.count ; i++){
            if (animal==countZoo[i]){
            countZoo[i]=newanimal
            break
            }
        }
    }
    
}
let answer = zooTest(countZoo2: "Tiger")
println("Your Animal eat : \(answer.zooTesting())")

answer.editAnimal("Snake", newanimal:"Eggs")
