//
//  ValueColumnGenerator.swift
//  SimpleHTTPClient1
//
//  Created by ITLoaner on 10/30/20.
//  Copyright © 2020 ITLoaner. All rights reserved.
//

import UIKit

class ValueColumnGenerator {
    func generate() -> UIStackView {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 5
        //stackView.alignment = .fill
        //
        var lbl = UITextField()
        lbl.text = "First Name"
        lbl.backgroundColor = UIColor.lightGray
        lbl.sizeToFit()
        stackView.addArrangedSubview(lbl)
        lbl = UITextField()
        lbl.text = "Last Name"
        lbl.backgroundColor = UIColor.lightGray
        lbl.sizeToFit()
        stackView.addArrangedSubview(lbl)
        lbl = UITextField()
        lbl.text = "SSN"
        lbl.backgroundColor = UIColor.lightGray
        lbl.sizeToFit()
        stackView.addArrangedSubview(lbl)
        return stackView
    }
}
