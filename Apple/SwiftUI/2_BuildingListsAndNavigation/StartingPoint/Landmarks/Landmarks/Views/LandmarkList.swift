//
//  LandmarkList.swift
//  Landmarks
//
//  Created by GIPYEONG LEE on 2019/10/20.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData,id:\.id){ landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                    LandmarkRow(landmark: landmark)
                }
            }
        .navigationBarTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }

}
