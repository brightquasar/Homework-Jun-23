//
//  DetailViewController.swift
//  plistVer2HW
//
//  Created by Richard H Woolley on 6/22/15.
//  Copyright (c) 2015 Bright Quasar Software, R.Woolley. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
/*
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var firstNameTextField: UITextField!
  @IBOutlet weak var lastNameTextField: UITextField!
*/
  @IBOutlet weak var firstNameTextField: UITextField!
  @IBOutlet weak var lastNameTextField: UITextField!
  @IBOutlet weak var imageView: UIImageView!

  var selectedPerson : Person!

  override func viewDidLoad() {
    super.viewDidLoad()
    self.setupTextFields()
  }

  private func setupTextFields() {
    self.firstNameTextField.delegate = self
    self.lastNameTextField.delegate = self
    self.firstNameTextField.tag = 0
    self.lastNameTextField.tag = 1
    //self.firstNameTextField.text = self.selectedPerson.firstName
    //self.lastNameTextField.text = self.selectedPerson.lastName
  }

  func textFieldShouldReturn(textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return false
  }

  func textFieldDidEndEditing(textField: UITextField) {
    switch textField.tag {
    case 0:
      self.selectedPerson.firstName = textField.text
    case 1:
      self.selectedPerson.lastName = textField.text
    default:
      break
    }
  }

  @IBAction func photoButtonPressed(sender: AnyObject) {
    let imagePickerController = UIImagePickerController()
    imagePickerController.delegate = self
    imagePickerController.sourceType = UIImagePickerControllerSourceType.Camera
    imagePickerController.allowsEditing = true

    if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera) {
      self.presentViewController(imagePickerController, animated: true, completion: nil)
    }
  }

  func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
    let image = info[UIImagePickerControllerEditedImage] as! UIImage
    self.imageView.image = image
    picker.dismissViewControllerAnimated(true, completion: nil)
  }
}
