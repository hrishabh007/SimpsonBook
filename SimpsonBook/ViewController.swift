//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Rishabh Balani on 1/18/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  var mySimpsons = [Simpson]()
  var chosensimpson = Simpson()
  @IBOutlet weak var simpTableview: UITableView!

  override func viewDidLoad() {
    super.viewDidLoad()
    simpTableview.dataSource = self
    simpTableview.delegate = self

    let homer = Simpson(
        name: "Homer Simpson", simpSonjob: "Nuclear Safety",
      simpSonImage: UIImage(named: "homer")!)
    let lisa = Simpson(
        name: "Lisa Simpson", simpSonjob: "Student",
      simpSonImage: UIImage(named: "lisa")!)
    let maggie = Simpson(
        name: "Maggie Simpson", simpSonjob: "Baby",
      simpSonImage: UIImage(named: "maggie")!)
    let marge = Simpson(
        name: "Marge Simpson", simpSonjob: "Housewife",
      simpSonImage: UIImage(named: "marge")!)
    let bart = Simpson(
        name: "Bart Simpson", simpSonjob: "Student",
      simpSonImage: UIImage(named: "bart")!)

    mySimpsons.append(homer)
    mySimpsons.append(marge)
    mySimpsons.append(bart)
    mySimpsons.append(lisa)
    mySimpsons.append(maggie)

    // Do any additional setup after loading the view.
  }
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return mySimpsons.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
    cell.textLabel?.text = mySimpsons[indexPath.row].name
    return cell
  }
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    chosensimpson = mySimpsons[indexPath.row]
    performSegue(withIdentifier: "toDetailsVC", sender: nil)
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "toDetailsVC" {
      let destinatuionVC = segue.destination as! DetailViewController
      destinatuionVC.selectedSimpson = chosensimpson
    }
  }

}
