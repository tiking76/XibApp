//
//  SampleView.swift
//  sampleXibApp
//
//  Created by 舘佳紀 on 2020/03/11.
//  Copyright © 2020 yoshiki Tachi. All rights reserved.
//

import UIKit

class SampleView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.nibInit()
    }
    required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            self.nibInit()
        }
        
        // xibファイルを読み込んでviewに重ねる
        fileprivate func nibInit() {
     
            // File's OwnerをXibViewにしたので ownerはself になる
            guard let view = UINib(nibName: "SampleView", bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView else {
                return
            }
            
            view.frame = self.bounds
            
            view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
            
            self.addSubview(view)
        }
     
}

