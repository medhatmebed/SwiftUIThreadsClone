//
//  CircularImageView.swift
//  SwiftUIThreadsClone
//
//  Created by Medhat Mebed on 2/8/24.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("malcolmx")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
