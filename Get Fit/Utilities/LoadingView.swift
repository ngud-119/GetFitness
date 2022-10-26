//
//  LoadingView.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 26/10/22.
//

import UIKit

// Loading view for indication of some loading operation is going on.
class LoadingView: UIView
{
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var loadingMessage:UILabel!
    
    public func showLoadingView(loadingMessage: String)
    {
        
        spinner.startAnimating()
        self.loadingMessage.text = loadingMessage
    }
}
