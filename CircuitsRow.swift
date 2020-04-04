//
//  CircuitsRow.swift
//  SwiftUI-MotoGP
//
//  Created by 07 Zhang on 2020/3/31.
//  Copyright © 2020 07 Zhang. All rights reserved.
//

import SwiftUI

struct CircuitsRow: View {
    
    let circuitdata:CircuitData
    var body: some View {
        HStack{
            Image(circuitdata.GPName)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
            VStack(alignment:.leading){
                Text("分站名稱：\(circuitdata.GPName)")
                    .foregroundColor(Color.black)
                Text("賽道名稱：\(circuitdata.circuitName)")
                    .foregroundColor(Color.pink)
            }
            Spacer()
        }.padding(10).background(LinearGradient(gradient: Gradient(colors:[Color.white,Color.blue]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x:1,y:3)))
    }
}

struct CircuitsRow_Previews: PreviewProvider {
    static var previews: some View {
        CircuitsRow(circuitdata: CircuitData( GPName:"卡達站",circuitName:"Losail International Circuit-羅賽爾國際賽車場",Fastlaptimes:"Yamaha YZR-M1 (2019)-Maverick Viñales-1:53.54",Introduction:"羅賽爾國際賽車場是一條位於波斯灣卡達杜哈郊區的賽道。\n卡達位於阿拉伯半島。\n此賽道於2004年開放使用，以短短不到一年的時間，聘請1000位工人，花費5800萬美元的成本建造完畢。\n首次賽事為萬寶路MotoGP卡達站，冠軍為塞特吉伯諾 (Sete Gibernau)。\n此外，此賽道舉辦了2006年的大師賽，由尼格爾·曼塞爾(Nigel Mansell)贏得冠軍。\n此賽道的長度為5.380公里，賽道大直線僅有1068公尺。周圍種以人工草皮，避免太多沙塵覆蓋賽道路面。\n2007年，賽車場針對夜賽增加了戶外照明設備。\n在當時，由馬斯科照明公司所建造的羅賽爾賽道是世界上最大規模的照明設施。\n目前這項殊榮屬於另一個波斯灣的賽車場，阿布達比的Yas Marina賽車場。在MotoGP歷史上首場夜賽為2008年3月在此舉行。\n2009年2月，GP2亞洲系列賽在此舉辦夜賽。最快單圈為尼古拉斯·賀根堡的1'35.741。\n此賽道有10個右彎，6個左彎。6號是全場最低速的彎道，與10號彎道皆為雙Apex點的設計。\n\n目前最快圈速為Maverick Viñales以1:53.54締造的成績。")).previewLayout(.fixed(width:300,height:70))
    }
}
