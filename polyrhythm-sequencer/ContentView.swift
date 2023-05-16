import SwiftUI

struct ContentView: View {
    // adjust these values to change the grid size
    @State public var hcolumns = 5
    @State public var vrows = 5
    
    var body: some View {
        
        HStack {
            Button("ADD \n COLUMN") {
                hcolumns += 1
                print("column added")
            }
            
            VStack {
                Button("ADD \n ROW") {
                    vrows += 1
                    print("column added")
                }
                ForEach(0..<vrows, id: \.self) { row in
                    
                    HStack {
                        ForEach(0..<hcolumns, id: \.self) { column in
                            Button(action: {
                                print("Button at row \(row) and column \(column) tapped")
                            }) {
                                Text("Button \(row),\(column)")
                                    .frame(width: 60, height: 60)
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(5)
                            }
                        }
                    }
                }
                
                Button("SUBTRACT \n ROW") {
                    vrows -= 1
                    print("column added")
                }
            }
            
            Button("SUB \n COLUMN") {
                hcolumns -= 1
                print("column added")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
