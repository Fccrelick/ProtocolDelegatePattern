//
//  ViewController.swift
//  ProtocolViewDelegate
//
//  Created by Fernando Crelick on 02/02/22.
//

import UIKit

class ViewController: UIViewController {

    private let notificationView = NotificationSettingView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(notificationView)

    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        notificationView.frame = CGRect(x: 10, y: view.safeAreaInsets.top,
                                        width: view.frame.size.width-20,
                                        height: view.frame.size.height-view.safeAreaInsets.top-view.safeAreaInsets.bottom)
    }


}

class NotificationSettingView: UIView {
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "bell")
        imageView.tintColor = .systemBlue

        return imageView
    }()

    private let label: UILabel = {
        let label = UILabel()
        label.text = "To stay up-to-date enable Push Notification"
        label.textAlignment = .center

        return label
    }()

    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Enable Notifications", for: .normal)
        button.backgroundColor = .systemGreen
        button.setTitleColor(.white, for: .normal)

        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(imageView)
        addSubview(label)
        addSubview(button)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        let imageSize = bounds.size.width / 2
        imageView.frame = CGRect(x: (bounds.size.width - imageSize)/2, y: 30, width: imageSize, height: imageSize)

        label.frame = CGRect(x: 10, y: 30+imageSize+20, width: frame.size.width-20, height: 100)

        button.frame = CGRect(x: 40, y: 160+imageSize, width: frame.size.width-80, height: 50)
    }
}
