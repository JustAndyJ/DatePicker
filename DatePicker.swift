import UIKit  

class ViewController: UIViewController {  

    @IBOutlet weak var inputTextField: UITextField!  

    @IBOutlet weak var datePicker: UIDatePicker!  

    let dateFormatter = DateFormatter()  

    override func viewDidLoad() {  
        super.viewDidLoad()  
        // Do any additional setup after loading the view.  
        dateFormatter.dateFormat = "MM/dd/yyyy"  
        inputTextField.inputView = datePicker  
        datePicker.datePickerMode = .date  
        inputTextField.text = dateFormatter.string(from: datePicker.date)  

    }  

    @IBAction func datePickerValueChanged(_ sender: UIDatePicker) {  

        inputTextField.text = dateFormatter.string(from: sender.date)  
        view.endEditing(true)  
    }  
}  