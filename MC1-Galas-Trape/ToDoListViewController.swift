//
//  ToDoListViewController.swift
//  MC1-Galas-Trape
//
//  Created by Renzo Alvaroshan on 11/04/22.
//

import UIKit

class ToDoListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBOutlet weak var tableView: UITableView?
    
    var models = [ToDoListItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "To Do List Core Data"
        
        getAllItems()
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.frame = view.bounds
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapAdd))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = model.name
        cell.accessoryType = model.completed ? .checkmark : .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            deleteItem(item: models[indexPath.row])
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let model = models[indexPath.row]
        model.completed = !model.completed
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    @objc private func didTapAdd() {
        let alert = UIAlertController(title: "New Item", message: "Enter New Item", preferredStyle: .alert)
        alert.addTextField(configurationHandler: nil)
        alert.addAction(UIAlertAction(title: "Submit", style: .cancel, handler: { [weak self] _ in
            guard let field = alert.textFields?.first, let text = field.text, !text.isEmpty else { return }
            
            self?.createItem(name: text)
        }))
        
        present(alert, animated: true)
    }
    
    // Core Data
    
    func getAllItems() {
        do {
            models = try context.fetch(ToDoListItem.fetchRequest())
            DispatchQueue.main.async {
                self.tableView?.reloadData()
            }
        } catch {
            print("Error")
        }
    }
    
    func createItem(name: String) {
        let newItem = ToDoListItem(context: context)
        newItem.name = name
        newItem.completed = false
        
        do {
            try context.save()
            getAllItems()
        } catch {
            print("Error")
        }
    }
    
    func deleteItem(item: ToDoListItem) {
        context.delete(item)
        
        do {
            try context.save()
            getAllItems()
        } catch {
            print("Error")
        }
    }
    
    func updateItem(item: ToDoListItem, newName: String) {
        item.name = newName
        
        do {
            try context.save()
            getAllItems()
        } catch {
            print("Error")
        }
    }
    
}

//extension ToDoListViewController: ListTableViewCellDelegate {
//    
//    func checkBoxToggle(sender: ListTableViewCell) {
//        if let selectedIndexPath = tableView?.indexPath(for: sender) {
//            models[selectedIndexPath.row].completed = !models[selectedIndexPath.row].completed
//            tableView?.reloadRows(at: [selectedIndexPath], with: .automatic)
//        }
//    }
//}
