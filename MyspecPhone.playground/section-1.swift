class telephone{
    //FreeStyle
    
    var specPhone : [String:String] = ["Imobile" : "50", "Motololra" : "70", "Asus" : "90", "Acer" : " 120"]
    
    func addGenphone(gen:String, cpu:String) -> String{
        if(specPhone[gen] != nil){
            specPhone[gen] = cpu
            return "Cannot Added"
        }
        else {
            return "Added Complete"
        }
    }
    func DeleteGen(gen:String){
        specPhone[gen] = nil
        
    }
    func editOnGenPhone(gen:String, cpu:String){
        specPhone[gen]=cpu
    }
    
}

let answer = telephone()
answer.addGenphone("Samsung", cpu: "130")

let answer2 = telephone()
answer.DeleteGen("Imobile")

print("You Edit : \(answer.editOnGenPhone)")
answer.editOnGenPhone("Imobile", cpu: "800")
