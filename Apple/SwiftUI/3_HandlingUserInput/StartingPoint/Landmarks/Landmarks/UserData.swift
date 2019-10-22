//
//  UserData.swift
//  Landmarks
//
//  Created by GIPYEONG LEE on 2019/10/23.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject  {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
