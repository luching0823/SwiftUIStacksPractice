//
//  ContentView.swift
//  SwiftUIStacksPractice
//
//  Created by 廖昱晴 on 2021/3/2.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                priceView(icon: "person.3.fill", name: "Basic", price: "$9", time: "per month", bgc: .purple, textColor: .white, width: 250, x: 0, y: 180, scale:1)
                priceView(icon: "person.3.fill", name: "Pro", price: "$19", time: "per month", bgc: .orange, textColor: .white, width: 250, x: 0, y: 0, scale:0.95)
                priceView(icon: "person.3.fill", name: "Team", price: "$299", time: "per month", bgc: .black, textColor: .white, width: 250, x: 0, y: -180, scale: 0.9)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct priceView: View {
    
    var icon: String
    var name: String
    var price: String
    var time: String
    var bgc: Color
    var textColor: Color
    var width: CGFloat
    var x: CGFloat
    var y: CGFloat
    var scale: CGFloat
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.title)
                .foregroundColor(textColor)
            Text(name)
                .font(.system(size: 30, design: .rounded))
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(textColor)
            Text(price)
                .font(.system(size: 35, design: .rounded))
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(textColor)
            Text(time)
                .font(.system(size: 15, design: .rounded))
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(textColor)
        }
        .frame(width: width)
        .padding(40)
        .background(bgc)
        .cornerRadius(10)
        .offset(x: x, y: y)
        .scaleEffect(scale)
    }
}
