//
//  DetailViewController.swift
//  SimpleHTTPClient1
//
//  Created by ITLoaner on 11/4/20.
//  Copyright © 2020 ITLoaner. All rights reserved.
//

import UIKit

class DetailViewController : ViewController {

    override func refreshScreen(pObj: Claim) {
        //
        detailScreenGenerator.vals[0].text = pObj.date
        detailScreenGenerator.vals[1].text = pObj.title
     //   detailScreenGenerator.vals[2].text = pObj.ssn
        
        // Enable/Disable the button
        detailScreenGenerator.nextBtn.isEnabled = !pClaim.isLastEntry()
        // Change the brightness if needed
        if detailScreenGenerator.nextBtn.isEnabled {
            detailScreenGenerator.nextBtn.backgroundColor = detailScreenGenerator.nextBtn.backgroundColor?.withAlphaComponent(1.0)
        } else {
            detailScreenGenerator.nextBtn.backgroundColor = detailScreenGenerator.nextBtn.backgroundColor?.withAlphaComponent(0.3)
        }
        
    }

    var detailScreenGenerator : PersonDetailScreenGenerator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1. Create screen
        detailScreenGenerator = PersonDetailScreenGenerator(v: view)
        print("Screen generator initialized. ")
        detailScreenGenerator.generate()
        
        // 2. Prepare data
        pClaim = ClaimService(vc : self)
        pClaim.getAll()
        
        // 3. Set the event handling
        let nBtn = detailScreenGenerator.nextBtn
        nBtn?.addTarget(self, action: #selector(goNextClaim(sender:)), for: .touchUpInside)
    }
}
