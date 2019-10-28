//
//  PageViewController.swift
//  Landmarks
//
//  Created by Андрей Понамарчук on 28.10.2019.
//  Copyright © 2019 Андрей Понамарчук. All rights reserved.
//

import SwiftUI
import UIKit

struct PageViewController: UIViewControllerRepresentable {
    var controllers: [UIViewController]
    
    func makeUIViewController(context: Self.Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal)

        return pageViewController
    }
    
    func updateUIViewController(_ pageViewController: UIPageViewController,
                                context: UIViewControllerRepresentableContext<PageViewController>) {
        pageViewController.setViewControllers([controllers[0]], direction: .forward,
                                              animated: true)
    }
}

//struct PageViewController_Previews: PreviewProvider {
//    static var previews: some View {
//        PageViewController()
//    }
//}
