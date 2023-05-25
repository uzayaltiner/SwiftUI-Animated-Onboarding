//
//  AudioPlayer.swift
//  SliderButton
//
//  Created by Uzay Altıner on 25.05.2023.
//

import AVFoundation
import Foundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let soundURL = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundURL))
            audioPlayer?.play()
        } catch {
            print(NSError(domain: "Couldn't play sound.", code: 0))
        }
    }
}
