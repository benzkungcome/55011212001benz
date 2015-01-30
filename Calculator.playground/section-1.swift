//Calculator
class dataCalcultor {
    
    let n1:Double
    let n2:Double
    let ans:Int
    
    init(n1: Double, n2: Double, ans:Int) {
        self.n1 = n1
        self.n2 = n2
        self.ans = ans
    }
    //Check if for cammand on symbol (nymber)
    func cal() -> Double{
        var sum:Double
        sum = 0
        if (ans == 1){
            sum = n1+n2
        }
        else if (ans == 2){
            sum = n1-n2
        }
        else if (ans == 3){
            sum = n1*n2
        }
        else if (ans == 4){
            sum = n1/n2
        }
        else if (ans == 5){
            sum = n1%n2
        }
        else{
            println("Please input only 1-5")
        }

        return sum
    }
}

let answer = dataCalcultor(n1:11, n2:5, ans:6)

println("Your answer is : \(answer.cal())")
