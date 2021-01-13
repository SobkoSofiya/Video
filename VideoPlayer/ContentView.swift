//
//  ContentView.swift
//  VideoPlayer
//
//  Created by Sofi on 13.01.2021.
//

import SwiftUI
import UIKit
import AVKit
import YouTubePlayer



struct ContentView: View {
    @ObservedObject var obs = observal()
    var body: some View {
        ScrollView {
            VStack (spacing: (UIScreen.main.bounds.height / 3)+25) {
                ForEach(obs.data) { stroke in
                    testYoutubeView(urlString: stroke.urlVideo)
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





struct testYoutubeView: UIViewControllerRepresentable {
    @State var urlString : String
    func makeUIViewController(context: UIViewControllerRepresentableContext<testYoutubeView>) -> UIViewController {
        let vc = UIViewController()
        let videoPlayer = YouTubePlayerView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 3))
        let url = URL(string: urlString)
        videoPlayer.loadVideoURL(url!)
        vc.view.addSubview(videoPlayer)
        return vc
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<testYoutubeView>) {
        
    }
    
}


