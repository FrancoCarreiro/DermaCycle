//
//  SplashScreenView.swift
//  DermaCycle
//
//  Created by Franco Carreiro Eugenio on 13/08/2023.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
      Image("Dermacycle Logo 2")
               .resizable()
               .interpolation(.none)
               .ignoresSafeArea()
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
