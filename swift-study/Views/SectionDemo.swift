import SwiftUI

struct ListBootcamp: View {
    @State var fruits: [String] = ["apple", "orange", "banana", "peach"]
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.description)
                    }.onMove(perform: move)
                        .onDelete(perform: { indexSet in
                            fruits.remove(atOffsets: indexSet)
                        })
                } header: {
                    Text("fruits")
                }
                
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.description)
                    }.onMove(perform: move)
                        .onDelete(perform: { indexSet in
                            fruits.remove(atOffsets: indexSet)
                        })
                } header: {
                    Text("fruits")
                }
            }
            .listStyle(SidebarListStyle())
//            .listStyle(.sidebar)
//            .navigationTitle("Grocery List")
//            .toolbar {
//                EditButton()
//             }
        }
        .navigationBarItems(trailing: EditButton())
    }
    
    func move(from source: IndexSet, to destination: Int) {
        fruits.move(fromOffsets: source, toOffset: destination)
    }
}

#Preview {
    ListBootcamp()
}
