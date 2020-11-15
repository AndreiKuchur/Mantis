//
//  CropTopViewProtocol.swift
//  Mantis
//
//  Created by Андрей Кучур on 11/15/20.
//

import Foundation
import UIKit

public protocol CropTopViewDelegate {
    func didSelectBack()
    func didSelectNext()
}

public protocol CropTopViewProtocol: UIView {
    var heightForVerticalOrientationConstraint: NSLayoutConstraint? {get set}
    var cropTopViewDelegate: CropTopViewDelegate? { get set }

    func createToolbarUI()
    func initConstraints(heightForVerticalOrientation: CGFloat)
    func adjustLayoutConstraints()
}

public extension CropTopViewProtocol {
    func initConstraints(heightForVerticalOrientation: CGFloat) {
        heightForVerticalOrientationConstraint = heightAnchor.constraint(equalToConstant: heightForVerticalOrientation)
    }
}
