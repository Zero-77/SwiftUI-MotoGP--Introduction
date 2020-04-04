//
//  Riderslist.swift
//  SwiftUI-MotoGP
//
//  Created by 07 Zhang on 2020/3/21.
//  Copyright © 2020 07 Zhang. All rights reserved.
//

import SwiftUI

struct Riderslist: View {
    var body: some View {
        NavigationView{//分類呈現列表
            List{
                Section(header: Text("MotoGP-Photo")){
                    ScrollView(.horizontal){
                        HStack(spacing:20){
                           
                            ForEach(0..<26){(item) in
                                VStack{
                                Image("Itemss\(item)")
                                    
                                .resizable()
                                .scaledToFit()
                                    .frame(width:400)
                                .clipped()
                                .cornerRadius(30)
                                .padding()
                               
                            }
                                .background(Color(hue: 0.526, saturation: 0.824, brightness: 0.973))
                            .cornerRadius(30)
                          }
                         
                        }.frame(height:350)
                    }
                }
                
                Section(header: Text("Rider-共22位")){
                    ForEach(Rider.indices){
                        (item) in
                        NavigationLink(destination: RiderDetail(Riders:Rider[item])){
                            RiderRow(Riders :Rider[item])
                        }
                    }
                }
            }.listStyle(GroupedListStyle())
                .navigationBarTitle("Rider列表")
                .onAppear{UITableView.appearance().separatorColor = .clear}//消除間隔
            
            
        }
    }
}

struct Riderslist_Previews: PreviewProvider {
    static var previews: some View {
        Riderslist()
    }
}
