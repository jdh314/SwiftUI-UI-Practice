//
//  ContentView.swift
//  SwiftUI UI Practice
//
//  Created by Jonathan Hogue on 10/26/21.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightTeal")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 8){
                    Image(systemName: "cloud.sun.fill")
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: .center)
                    Text("81°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                        padding(.bottom, 40)

//                    HStack(spacing: 8){
//                        WeekDayWeather(dayOfWeek: "Tue", imageName: "sun.dust.fill", temp: 76)
//                        WeekDayWeather(dayOfWeek: "Wed", imageName: "cloud.fog.fill", temp: 67)
//                        WeekDayWeather(dayOfWeek: "Thu", imageName: "cloud.bolt.rain.fill", temp: 100)
//                        WeekDayWeather(dayOfWeek: "Fri", imageName: "cloud.drizzle.fill", temp: 78)
//                        WeekDayWeather(dayOfWeek: "Sat", imageName: "smoke.fill", temp: 78)
//                    }

                }

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeekDayWeather: View {

    var dayOfWeek: String
    var imageName: String
    var temp: Int
    
    var body: some View {
        
        VStack(spacing: 5){
            Text(dayOfWeek)
                .font(.system(size: 28, weight: .light))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temp)°")
                .font(.system(size: 30, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
