//
//  DetailViewController.swift
//  SimpsonBook
//
//  Created by Rishabh Balani on 1/18/24.
//

import UIKit

class DetailViewController: UIViewController {

  @IBOutlet weak var lblJob: UILabel!

  @IBOutlet weak var simpImage: UIImageView!

    @IBOutlet weak var lbname: UILabel!
    var selectedSimpson: Simpson?
  override func viewDidLoad() {
    super.viewDidLoad()

      lbname.text = selectedSimpson?.name
    lblJob.text = selectedSimpson?.job
    simpImage.image = selectedSimpson?.image
    // Do any additional setup after loading the view.
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
