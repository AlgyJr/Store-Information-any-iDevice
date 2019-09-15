//
//  InfoTableViewController.swift
//  Login
//
//  Created by ALgy Aly on 9/6/19.
//  Copyright © 2019 ALgy Aly. All rights reserved.
//

import UIKit

class InfoTableViewController: UITableViewController {
    
    //MARK: Properties
    var infos = [Information]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad()")
        //Load the sample data
//        if let savedInfo = reference!.getSavedInfo() {
//            print("Carregado")
//            infos = savedInfo
//        } else {
//            print("Não carregou")
//            loadSampleInfos()
//        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("Adding identifier")
        let cellIndentifier = "InfoTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIndentifier, for: indexPath) as? InfoTableViewCell else {
            fatalError("The dequeued Cell is not an instance of InfoTableViewCell")
        }
        print("Adding Rows")
        
        let info = infos[indexPath.row]
        
        print("Nothing")
        cell.lblName.text = info.name
        cell.lblEmail.text = info.email
        cell.lblNr.text = info.number
        print("Added Rows")
        return cell
    }
    
    //MARK: Private Methods
    private func loadSampleInfos() {
        print("Criação")
//        guard let info1 = Information(name: "Algy", email: "algymussa@icloud.com", number: "+258-849022333") else {
//            fatalError("Incapaz de instanciar a informação")
//        }
//        guard let info2 = Information(name: "Victoria", email: "victoriabila.009@gmail.com", number: "+258-828719070") else {
//            fatalError("Incapaz de instanciar a informação")
//        }
//        infos += [info1, info2]
        print("Armazenado")
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
