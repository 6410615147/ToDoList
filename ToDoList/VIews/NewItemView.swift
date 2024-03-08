//
//  NewItemView.swift
//  ToDoList
//
//  Created by นางสาวสุภาพันธ์ หง่อสกุล on 8/3/2567 BE.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewModel()
    @Binding var newItemPresented: Bool
    var body: some View {
        VStack {
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 50)
            
            Form {
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                TLButton(title: "Save", background: .pink) {
                    viewModel.save()
                    newItemPresented = false
                }
            }
                      
                      
        }
                      
                      
    }
}

struct NewItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemView(newItemPresented: .constant(true))
    }
}
