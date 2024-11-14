//
//  TodoListApp.swift
//  TodoList
//
//  Created by Hatice Çiğdem Karaca on 5.11.2024.
//

import SwiftUI

/*
 
 MVMM Architecture
 
 Model - Data Point
 View - UI
 ViewModel - Manages Models for View
 
 
 */



@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
