//
//  TLButton.swift
//  ToDoList
//
//  Created by นางสาวสุภาพันธ์ หง่อสกุล on 8/3/2567 BE.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    var body: some View {
        Button{
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(.white)
                    .bold()
                    .padding(5)
            }
        }
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(
            title: "Button",
            background: .blue,
            action: {}
        )
    }
}
