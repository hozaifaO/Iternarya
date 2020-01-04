//
//  TripFunctions.swift
//  Iternarya
//
//  Created by Hozaifa Owaisi on 1/4/20.
//  Copyright © 2020 Hozaifa. All rights reserved.
//

import Foundation

class TripFunctions {
    
    static func createTrip(tripModel: TripModel){
        
    }
    
    static func readTrip(complection: @escaping ()-> ()){
        DispatchQueue.global(qos: .userInteractive).async {
            if Data.tripModel.count == 0 {
                Data.tripModel.append(TripModel(title: "Bali Trip"))
                Data.tripModel.append(TripModel(title: "Japan Trip"))
                Data.tripModel.append(TripModel(title: "New York Trip"))
                Data.tripModel.append(TripModel(title: "Mexico"))
            }
            DispatchQueue.main.async {
                complection()
            }
        }
    }
    
    static func UpdateTrip(tripModel: TripModel){
        
    }
    
    static func DeleteTrip(tripModel: TripModel){
        
    }
}
