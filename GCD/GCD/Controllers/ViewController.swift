//
//  ViewController.swift
//  GCD
//
//  Created by osmar.alan.hernandez on 12/05/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // TODO: - DispatchQueue
    // TODO: - Show Image
    // TODO: - Network Layer
    // TODO: - Delegate Object

    private var imageUrl: URL {
        return URL(string: "https://images.dog.ceo/breeds/hound-afghan/n02088094_1003.jpg")!
    }
    
    private var houndURL: URL {
        return URL(string: "https://dog.ceo/api/breed/hound/images")!
    }
    
    func getDogImages(from url: URL) {
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { print(error!.localizedDescription); return }
            
        }
    }
    
    func fetchImageFromNetwork(with url: URL) {
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { print(error!.localizedDescription); return }
            if let downloadedImage = UIImage(data: data) {
                DispatchQueue.main.async {

                }
            }
        }
        task.resume()
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 255
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageTableViewCell") as! ImageTableViewCell
        
        return cell
    }
}
