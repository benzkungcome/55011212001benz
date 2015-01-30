class user{
    var userName : [String] = ["Bandit"]
    var passWord : [String] = ["123456"]
    let User:String
    
    init(insearch:String){
        self.User = insearch
    }
    func process() ->String {
        var word:String = ""
        for (var i=0 ; i<userName.count && i<passWord.count ; i++){
            if(User == userName[i]){
                println("Your User is : \(userName[i])")
                word=passWord[i]
                break
            }
        }
        return word
    }
    func adU(userAdd:String, passWord:String){
        userName += userName
    }
    
    func delU(userdel:String){
        userName -= nil
        
    }
    
    func eU(useredit:String, passedit:String){
        userName = passedit
    }
    
    
}

let processing = user(insearch : "BENZ")
processing.process()
processing.adU("come", passWord: "1234")
processing.delU("Bandit")
processing.eU("comeback", passedit: "kung")
