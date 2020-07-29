//
//  HomeKitWrapper.swift
//  Runner
//
//  Created by Bruno Pastre on 29/07/20.
//

import Foundation
import HomeKit


class HomeKitWrapper: NSObject, HMHomeManagerDelegate {
    static let instance = HomeKitWrapper()
    let manager = HMHomeManager()
    
    var hasLoaded: Bool = false
    
    override init() {
        super.init()
        manager.delegate = self
    }
    
    func homeManagerDidUpdateHomes(_ manager: HMHomeManager) {
        
        self.hasLoaded = true
    }
    
    func getHomes() -> [HMHome] { self.manager.homes }
    
    func getTransformedHomes() -> String {
        let result: [AEHome] = self.manager.homes.map { AEHome($0) }
        print("Result is", result)
        
        return String(data: try! JSONEncoder().encode(result), encoding: .utf8)!
    }
}

class AEHome: Codable {
    
    var accessories: [AEAccessory]
    var rooms: [AERoom]
    var isPrimary: Bool
    var name: String
    var uniqueIdentifier: String
    
    init(_ home: HMHome) {
        accessories = home.accessories.map { AEAccessory($0) }
        rooms = home.rooms.map { AERoom($0) }
    
        isPrimary = home.isPrimary
        name = home.name
        uniqueIdentifier = home.uniqueIdentifier.uuidString
        
    }
}


class AEAccessory: Codable {
    
    var category: String
    var identifier: String
    var model: String?
    var name: String
    var roomId: String?
    
    init(_ accessory: HMAccessory) {
        
        category = accessory.category.categoryType
        identifier = accessory.identifier.uuidString
        model = accessory.model
        name = accessory.name
        
        if let room = accessory.room?.uniqueIdentifier.uuidString {
            roomId = room
        }
    }
    
}

class AERoom: Codable {
    
    var accessories: [AEAccessory]
    var name: String
    var uuid: String
    
    init(_ room: HMRoom) {
        
        name = room.name
        uuid = room.uniqueIdentifier.uuidString
        
        self.accessories = []
    }
    
}
