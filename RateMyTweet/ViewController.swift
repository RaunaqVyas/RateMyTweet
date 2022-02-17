//
//  ViewController.swift
//  RateMyTweet
//
//  Created by Raunaq Vyas on 2020-10-14.
//

import UIKit
import CoreML

class ViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate {

    @IBOutlet weak var descripTionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var tweetTextField: UITextField!
    
    let sentimentClassifiermodel: tweetClasifier = {
        do {
            let config = MLModelConfiguration()
            return try tweetClasifier(configuration: config)
        } catch {
            print(error)
            fatalError("Couldn't create Classifier")
        }
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tweetTextField.delegate = self
        }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        tweetTextField.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            textField.placeholder = "search"
            return true
        } else{
            textField.placeholder = "Type Something"
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        if let string = tweetTextField.text{
            getSentiment(string: string)
        }
        tweetTextField.text = ""
    }

    
func getSentiment(string:String){
   
        let tweet_sentiment = try! sentimentClassifiermodel.prediction(text: string ?? "Positive")
        updateLabels(sentiment: tweet_sentiment.label )
    }
    
    func updateLabels(sentiment:String){
        if sentiment == "Positive"{
            descripTionLabel.text = "Positive"
            emojiLabel.text = "🙂"
        } else if sentiment == "Negative"{
            descripTionLabel.text = "Negative"
            emojiLabel.text = "🙁"
        } else if sentiment == "Neutral"{
            descripTionLabel.text = "Neutral"
            emojiLabel.text = "😐"
        }
    }
    
    


}


