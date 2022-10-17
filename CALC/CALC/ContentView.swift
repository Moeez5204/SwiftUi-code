import SwiftUI
import Foundation

struct ContentView :View{
    
    let grid = [["AC","del","","*"],
                ["7","8","9","/"],
                ["4","5","6","+"],
                ["1","2","3","-"],
                ["0","%",".","="]]
    
    let opearators = ["*","/","+","AC"]
    
    
    @State var Workings = ""
    @State var Results = ""
    @State var showAlert = false
    
    
    var body :some View
    {
        VStack
        {
            HStack{
                Spacer()
                Text(Workings)
                    .padding()
                    .foregroundColor(Color.white)
                    .font(.system(size:30,weight:.heavy))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            HStack{
                Spacer()
                Text(Results)
                    .padding()
                    .foregroundColor(Color.white)
                    .font(.system(size:50,weight:.heavy))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            
            ForEach(grid,id: \.self)
            {
               row in
                HStack{
                    ForEach(row,id: \.self)
                    {
                        cell in
                        
                        Button(action: { buttonPressed(cell: cell )}, label: {
                            Text(cell)
                                .foregroundColor(buttonColor(cell))
                                .font(.system(size: 35,
                                              weight: .heavy))
                                .frame(maxWidth : .infinity , maxHeight: .infinity)
            
                        })
                    }
                }
                
            }

        }
        .background(Color.black.ignoresSafeArea())
        .alert(isPresented: $showAlert)
        {
            Alert(
                title: Text("Invalid Input"),
                message: Text(Workings),
                dismissButton: .default(Text("Okay"))
            
            
            )
            
        }
    }
    
    func buttonColor(_ cell: String) ->  Color
    {
        if (cell == "AC" || cell ==  "del" || cell == "Enter" )
        {
            return .white
        }
        if (cell == "+" || cell == "-" || cell == "=")
        {
            return .white
        }
        if (cell == "*" || cell ==  "/" )
        {
            return .white
        }
        
        if (cell == "-" || opearators.contains(cell))
        {
            return .white
        }
        
        return   .orange
        
        
        
        
    }
    
    func buttonPressed(cell :String)
    {
        switch (cell) {
        case  "AC":
            Workings = ""
            Results = ""
            
        case "del":
            Workings = String(Workings.dropLast())
            
        case "=":
            Results = CalcResults()
            
        case "-":
            addminus()
        
        case "*","/","%","+":
           addOperator(cell)
            
            
        default:
            Workings += cell
        }
    }
    
    
    
    
    func addOperator(_ cell : String)
    {
        
        if !Workings.isEmpty{
            let last = String(Workings.last!)
            if opearators.contains(last) || last == "-"
            {
                Workings.removeLast()
            }
        Workings += cell
        }
        
        
        
    }
    
    func addminus()
    
    {
        
        if (Workings.isEmpty || Workings.last! != "-")
        {
            Workings += "-"
            
        }
        

    }
    

    
    func CalcResults() -> String
    {
        if (validInput())
        {
            
            //var Nworkings = Workings.replacingOccurrences(of: "%"  ,with: "*0.01")
            //Nworkings = Workings.replacingOccurrences(of: "*"  ,with: "*")
            //let experression = NSExpression(format: Nworkings)
            //let result = experression.expressionValue(with :nil, context: nil) as! Double
            //return formatResults(val: result)
            
            if ()
            
            
            
        }
        showAlert = true
     
     return ""
    }
    
    func formatResults (val : Double) ->  String
    {
        if (val.truncatingRemainder(dividingBy: 1) == 0)
        {
            return String(format: "%.0f", val)
        }
        
        return String (format: "%.2f", val)
        
    }
    
    func validInput() -> Bool
    {
        if(Workings.isEmpty)
        {
            return false
        }
        let last = String(Workings.last!)
        
        if (opearators.contains(last) || last == "-")
        {
            return false
        }
        
        return true
        
        
    }
    
    func Calcultor(inside) -> Float
    {
        
        var this
        results  = inside
        
        while inside != "Enter"
        {
            
            this = this + inside
            
            
        }
        
        let ARR : [String] = this.components(separatedBy: " ")
        
        for i in Range(ARR.count)
        {
            var currentStart = Arr[0]
            
            if(ARR[i] == "+" || ARR[i] == "-" || ARR[i] == "/" || ARR[i] == "*")
            {
                
                
                for j in Range()
                {
                    
                    
                    
                }
                    
                
                currentStart = Arr[i+1]
                        
                        
                        
                        
                
                
            }
            
            
            
        }
        
        
        //split string until operators and make into intergers
        // make last result into first number
            
                
                
        
            
     
     
      

        
        
        
        
    
    
    
    
     }
struct ContentView_Previews : PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}
