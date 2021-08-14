//
//  LoginViewModel.swift
//  Bachelor's Kitchen 1
//
//  Created by nihaanth reddy on 07/08/21.
//

import SwiftUI


class LoginViewModel: ObservableObject {
   
    @Published var phNo = ""
    
    //getting country phonr Code ...
    
    func getCountryCode() -> String {
        
        let regionCode = Locale.current.regionCode ?? ""
        return countries[regionCode] ?? ""
    }
 

}



