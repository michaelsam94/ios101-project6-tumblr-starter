//
//  PostDetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Michael on 26/06/2024.
//

import UIKit
import Nuke

class PostDetailViewController: UIViewController {

    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var contentTextView: UITextView!
    
    
    var post: Post!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure(with: post)

    }
    
    private func configure(with post: Post) {
        Nuke.loadImage(with: post.photos[0].originalSize.url, into: postImage)
        contentTextView.text =  post.caption
    
    }
 

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
