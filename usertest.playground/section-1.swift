class user{
    var userAndpass : [String:String] = ["Bandit" : "123456"]
    let User:String
    
    init(KeepUser:String){
        self.User = KeepUser
    }
    func process() ->String {
        var word:String = ""
        for (key,value) in userAndpass{
            if(key == User){
                word=value
            }
        }
        return word
    }
    func adU(userAdd:String, passAdd:String){
        userAndpass[userAdd] = passAdd
        
    }
    
    func delU(userdel:String){
        userAndpass[userdel] = nil
        
    }
    
    func eU(useredit:String, passedit:String){
        userAndpass[useredit]=passedit
    }
    
    
}

let processing = user(KeepUser : "BENZ")
processing.process()
processing.adU("come", passAdd: "1234")
processing.delU("Bandit")
processing.eU("comeback", passedit: "kung")