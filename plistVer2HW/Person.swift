//  Person.swift
//  plistVer2HW
//
//  Created by Richard H Woolley on 6/22/15.
//  Copyright (c) 2015 Bright Quasar Software, R.Woolley.

import UIKit

class Person {

  var firstName : String
  var lastName : String
  var image : UIImage?

  init (first : String, last : String) {
    self.firstName = first
    self.lastName = last
  }
}

