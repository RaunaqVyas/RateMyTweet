// The following model has been commented out due to a Short twitter ban, the API will be reatched upon the completion of the ban

//  TweetApiModel.swift
//  RateMyTweet
//
//  Created by Raunaq Vyas on 2021-01-30.
//

//import Foundation

//import UIKit
//import CoreML


//class ViewController: UIViewController {
    
   // @IBOutlet weak var textField: UITextField!
   // @IBOutlet weak var sentimentLabel: UILabel!
    
   // let tweetCount = 100
    //let sentimentClassifier : tweetClasifier = try! modelName(configuration: MLModelConfiguration.init())
//    guard let model = try? VNCoreMLModel(for: myModel.model) else {fatalError()}
    
   //let swifter = Swifter(consumerKey: "_your_key_here", consumerSecret: "_your_secret_here_")

    //override func viewDidLoad() {
     //   super.viewDidLoad()
    // }

   // @IBAction func predictPressed(_ sender: Any) {
    
    //    fetchTweets()
        
    //}
    
    //func fetchTweets() {
        
        //if let searchText = textField.text {
            
            //swifter.searchTweet(using: searchText, lang: "en", count: tweetCount, tweetMode: .extended, success: { (results, metadata) in
                
               // var tweets = [TweetSentimentClassifierInput]()
                
               // for i in 0..<self.tweetCount {
               //     if let tweet = results[i]["full_text"].string {
                 //       let tweetForClassification = TweetSentimentClassifierInput(text: tweet)
                  //      tweets.append(tweetForClassification)
                 //   }
              //  }
                
               // self.makePrediction(with: tweets)
                
            //}) { (error) in
              //  print("There was an error with the Twitter API Request, \(error)")
           // }
       // }
        
   // }
    
   // func makePrediction(with tweets: [TweetSentimentClassifierInput]) {
        
     //   do {
            
      //      let predictions = try self.sentimentClassifier.predictions(inputs: tweets)
            
  //          var sentimentScore = 0
            
        //    for pred in predictions {
     //           let sentiment = pred.label
                
         //       if sentiment == "Pos" {
          //          sentimentScore += 1
           //     } else if sentiment == "Neg" {
            //        sentimentScore -= 1
            //    }
           // }
            
           // updateUI(with: sentimentScore)
            
       // } catch {
       //     print("There was an error with making a prediction, \(error)")
       // }
        
   // }
    
  //  func updateUI(with sentimentScore: Int) {
        
   //     if sentimentScore > 20 {
        //    self.sentimentLabel.text = "😍"
      //  } else if sentimentScore > 10 {
       //     self.sentimentLabel.text = "😀"
       // } else if sentimentScore > 0 {
       //     self.sentimentLabel.text = "🙂"
       // } else if sentimentScore == 0 {
      //      self.sentimentLabel.text = "😐"
      //  } else if sentimentScore > -10 {
       //     self.sentimentLabel.text = "😕"
       // } else if sentimentScore > -20 {
        //    self.sentimentLabel.text = "😡"
       // } else {
      //      self.sentimentLabel.text = "🤮"
      //  }
   // }
    
//}
