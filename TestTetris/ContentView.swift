//
//  ContentView.swift
//  TestTetris
//
//  Created by LiJiao on 2023/10/26.
//

import SwiftUI

struct ContentView: View {
    
    let upperHeightRatio: CGFloat = 0.8
    let lowerHeightRatio: CGFloat = 0.2
    
    let upperLeftWidthRatio: CGFloat = 0.8
    let upperRightWidthRatio: CGFloat = 0.2
    
    var body: some View {
        GeometryReader { geometry in
            
            let totalWidth = geometry.size.width
            let totalHeight = geometry.size.height
            

            
            
            let informationGroundWidth = totalWidth * 0.3
            let playGroundWidth=totalWidth * 0.7
            
            
            
            
            VStack(spacing: 0) {
                // 上部区域
                ZStack {
                    // 左边：预览即将下落的方块
                    TetrisBoardView()
                        .frame(width: playGroundWidth , height: upperHeight)
                        .background(Color.red)
                        .position(x: totalWidth*0.15, y: upperHeight / 2)
                    
                    // 右边：显示分数、级别等信息
                    Rectangle()
                        .frame(width: informationGroundWidth , height: upperHeight)
                        .border(Color.white, width: 2)
                        .position(x: totalWidth * 0.85, y: upperHeight / 2)
                    
                }
                
                // 下部区域
                HStack(spacing: 0) {
                    // 左侧：2个长方形按钮和2个圆形按钮
                    ZStack {
                        // 上部分的长方形按钮
                        HStack(spacing: 10) {
                            Button(action: {}) {
                                Text("B1")
                                    .padding(.horizontal, 15)
                                    .padding(.vertical, 10)
                                    .background(Color.red)
                                    .cornerRadius(5)
                            }
                            
                            
                        }
                        .position(x: totalWidth * 0.15, y: lowerHeight * 0.25)
                        
                        // 下部分的圆形按钮
                        HStack(spacing: 20) {
                            Button(action: {}) {
                                Text("C1")
                                    .padding(15)
                                    .background(Color.red)
                                    .clipShape(Circle())
                            }
                            
                        }
                        .position(x: totalWidth * 0.15, y: lowerHeight * 0.75)
                    }
                    .frame(width: totalWidth * 0.3, height: lowerHeight)
                    .border(Color.black, width: 2)
                    
                    
                    // 右边：Gameboy风格的按钮布局
                    ZStack {
                        // 上按钮
                        Button(action: {}) {
                            Text("上")
                                .padding(20)
                                .background(Color.blue)
                                .clipShape(Circle())
                        }.position(x: totalWidth * 0.35, y: lowerHeight * 0.25)
                        
                        // 下按钮
                        Button(action: {}) {
                            Text("下")
                                .padding(20)
                                .background(Color.blue)
                                .clipShape(Circle())
                        }.position(x: totalWidth * 0.35, y: lowerHeight * 0.75)
                        
                        // 左按钮
                        Button(action: {}) {
                            Text("左")
                                .padding(20)
                                .background(Color.blue)
                                .clipShape(Circle())
                        }.position(x: totalWidth * 0.175, y: lowerHeight * 0.5)
                        
                        // 右按钮
                        Button(action: {}) {
                            Text("右")
                                .padding(20)
                                .background(Color.blue)
                                .clipShape(Circle())
                        }.position(x: totalWidth * 0.525, y: lowerHeight * 0.5)
                    }
                    .frame(width: totalWidth * 0.7, height: lowerHeight)
                    .border(Color.black, width: 2)
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
