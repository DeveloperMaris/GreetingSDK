//
//  Greeting.swift
//  GreetingSDK
//
//  Created by Maris Lagzdins on 25/08/2020.
//  Copyright © 2020 Maris Lagzdins. All rights reserved.
//

import Foundation

public enum Greeting {
    public static func hey(_ name: String) {
        print("Hey \(name)")
    }

    public static func bye(_ name: String) {
        print("Bye \(name)")
    }
}
