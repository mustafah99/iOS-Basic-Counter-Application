//
//  ContentView.swift
//  Counter Application
//
//  Created by Mustafa Helal on 2021-01-17.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int = 0
    
    @State var backgroundColor = LinearGradient(gradient: Gradient(colors: [Color.darkBlue, Color.shadeOfBlue]), startPoint: /*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
    
    var body: some View {
        ZStack {
            backgroundColor
            
            VStack(alignment: .center, spacing:25) {
                Spacer()
                
                Text("Current Count: \(count) ")
                    .font(.system(size: 45))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                HStack(spacing: 25) {
                    Button(action: {
                        self.count += 1
                    }) {
                        Image(systemName:"plus")
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                            .padding(/*@START_MENU_TOKEN@*/.all, 30.0/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 40))
                            
                            
                    }
                    .frame(width: 100.0, height: 100.0)
                    .cornerRadius(/*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 3))
                    
                    Button(action: {
                        if self.count >= 1 {
                            self.count -= 1
                        }
                    }) {
                        Image(systemName:"minus")
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                            .padding(/*@START_MENU_TOKEN@*/.all, 15.0/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 40))
                            
                            
                            
                    }
                    .frame(width: 75.0, height: 75.0)
                    .cornerRadius(/*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 3))
                    
                    Button(action: {
                        self.count = 0
                    }) {
                        Image(systemName:"arrow.counterclockwise")
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                            .padding(/*@START_MENU_TOKEN@*/.all, 15.0/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 30))
                            
                            
                    }
                    .frame(width: 75.0, height: 75.0)
                    .cornerRadius(/*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 3))
                    
                }
                
                Spacer()
            }
            
            HStack(spacing: 50) {
                Button(action: {
                    self.backgroundColor = LinearGradient(gradient: Gradient(colors: [Color.darkBlue, Color.red]), startPoint: /*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
                }) {
                    Text("DBR")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 30))
                        
                        
                }
                
                Button(action: {
                    self.backgroundColor = LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: /*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
                }) {
                    Text("RB")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 30))
                        
                        
                }
                
                Button(action: {
                    self.backgroundColor = LinearGradient(gradient: Gradient(colors: [Color.blue, Color.shadeOfBlue]), startPoint: /*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
                }) {
                    Text("LB")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 30))
                        
                        
                }
                
                Button(action: {
                    self.backgroundColor = LinearGradient(gradient: Gradient(colors: [Color.darkBlue, Color.shadeOfBlue]), startPoint: /*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
                }) {
                    Text("DB")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 30))
                        
                        
                }

            }
            .offset(x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/150.0/*@END_MENU_TOKEN@*/)
            
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
