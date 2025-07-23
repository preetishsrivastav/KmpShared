//
//  ViewController.swift
//  Kmp Demo
//
//  Created by Preetish Srivastav on 23/07/25.
//

import UIKit
import sharedKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         let swiftUIView = CowBoyAnimation()

let hostingController = UIHostingController(rootView: swiftUIView)
    addChild(hostingController)
    hostingController.view.frame = view.bounds
    view.addSubview(hostingController.view)
    hostingController.didMove(toParent: self)

       let myName = BaseClass().printMyName()
       print(myName)
    }


}

struct CowBoyAnimation: View {
  @State private var animate = false
  var body: some View {
    ZStack {
      Color.black.ignoresSafeArea()
      VStack(alignment: .center, spacing: 24) {
        Image("bicycle")
          .resizable()
          .scaledToFit()
          .frame(width: 300)
          .offset(y: animate ? 0 : 20)
          .opacity(animate ? 1 : 0)
          .animation(.easeOut(duration: 0.7), value: animate)
        Text("Ride into the Future")
          .font(.title)
          .foregroundColor(.white)
          .opacity(animate ? 1 : 0)
          .offset(y: animate ? 0 : 20)
          .animation(.easeOut(duration: 0.7).delay(0.3), value: animate)
      }
    }
    .onAppear {
      animate = true
    }
  }
}
#Preview {
  CowBoyAnimation()
}

