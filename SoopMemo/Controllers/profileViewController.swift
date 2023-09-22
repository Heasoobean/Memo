

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let textLabel = UILabel()
        textLabel.frame = CGRect(x: 0, y: 0, width: 97, height: 25)
        textLabel.textColor = UIColor.white
        textLabel.font = UIFont.systemFont(ofSize: 18)
        textLabel.textAlignment = .center
        textLabel.attributedText = NSMutableAttributedString(string: "nabaecamp", attributes: [NSAttributedString.Key.kern: -1])

        let imageView = UIView()
        imageView.frame = CGRect(x: 0, y: 0, width: 88, height: 88)

        if let image0 = UIImage(named: "Ellipse")?.cgImage {
            let imageLayer = CALayer()
            imageLayer.contents = image0
            imageLayer.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 1, b: 0, c: 0, d: 1.01, tx: 0, ty: -0.01))
            imageLayer.bounds = imageView.bounds
            imageLayer.position = imageView.center
            imageView.layer.addSublayer(imageLayer)
        }

        let label1 = UILabel()
        label1.frame = CGRect(x: 0, y: 0, width: 10, height: 22)
        label1.textColor = UIColor.white
        label1.font = UIFont.systemFont(ofSize: 16.5)
        label1.textAlignment = .center
        label1.text = "7"

        let label2 = UILabel()
        label2.frame = CGRect(x: 0, y: 0, width: 10, height: 22)
        label2.textColor = UIColor.white
        label2.font = UIFont.systemFont(ofSize: 16.5)
        label2.textAlignment = .center
        label2.text = "0"

        let label3 = UILabel()
        label3.frame = CGRect(x: 0, y: 0, width: 10, height: 22)
        label3.textColor = UIColor.white
        label3.font = UIFont.systemFont(ofSize: 16.5)
        label3.textAlignment = .center
        label3.text = "0"

        let label4 = UILabel()
        label4.frame = CGRect(x: 0, y: 0, width: 28, height: 19)
        label4.textColor = UIColor.white
        label4.font = UIFont.systemFont(ofSize: 14)
        label4.textAlignment = .center
        label4.attributedText = NSMutableAttributedString(string: "post", attributes: [NSAttributedString.Key.kern: -0.3])

        let label5 = UILabel()
        label5.frame = CGRect(x: 0, y: 0, width: 51, height: 19)
        label5.textColor = UIColor.white
        label5.font = UIFont.systemFont(ofSize: 14)
        label5.textAlignment = .center
        label5.attributedText = NSMutableAttributedString(string: "follower", attributes: [NSAttributedString.Key.kern: -0.3])

        let label6 = UILabel()
        label6.frame = CGRect(x: 0, y: 0, width: 57, height: 19)
        label6.textColor = UIColor.white
        label6.font = UIFont.systemFont(ofSize: 14)
        label6.textAlignment = .center
        label6.attributedText = NSMutableAttributedString(string: "following", attributes: [NSAttributedString.Key.kern: -0.3])

        var additionalLabel1 = UILabel()
        additionalLabel1.frame = CGRect(x: 0, y: 0, width: 38, height: 19)
        additionalLabel1.textColor = UIColor.white
        additionalLabel1.font = UIFont.systemFont(ofSize: 14)

        additionalLabel1.attributedText = NSMutableAttributedString(string: "르탄이", attributes: [NSAttributedString.Key.kern: -0.5])

        var parent = self.view!
        parent.addSubview(additionalLabel1)
        additionalLabel1.translatesAutoresizingMaskIntoConstraints = false
        additionalLabel1.widthAnchor.constraint(equalToConstant: 38).isActive = true
        additionalLabel1.heightAnchor.constraint(equalToConstant: 19).isActive = true
        additionalLabel1.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 15).isActive = true
        additionalLabel1.topAnchor.constraint(equalTo: parent.topAnchor, constant: 195).isActive = true

        var additionalLabel2 = UILabel()
        additionalLabel2.frame = CGRect(x: 0, y: 0, width: 345, height: 19)
        additionalLabel2.textColor = UIColor.white
        additionalLabel2.font = UIFont.systemFont(ofSize: 14)

        additionalLabel2.attributedText = NSMutableAttributedString(string: "iOS Developer 🍎", attributes: [NSAttributedString.Key.kern: -0.5])

        parent.addSubview(additionalLabel2)
        additionalLabel2.translatesAutoresizingMaskIntoConstraints = false
        additionalLabel2.widthAnchor.constraint(equalToConstant: 345).isActive = true
        additionalLabel2.heightAnchor.constraint(equalToConstant: 19).isActive = true
        additionalLabel2.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 15).isActive = true
        additionalLabel2.topAnchor.constraint(equalTo: parent.topAnchor, constant: 216).isActive = true

    
        var additionalLabel3 = UILabel()
        additionalLabel3.frame = CGRect(x: 0, y: 0, width: 121, height: 19)
        additionalLabel3.textColor = UIColor.white
        additionalLabel3.font = UIFont.systemFont(ofSize: 14)

        additionalLabel3.attributedText = NSMutableAttributedString(string: "spartacodingclub.kr", attributes: [NSAttributedString.Key.kern: -0.5])
        
        

        parent.addSubview(additionalLabel3)
        additionalLabel3.translatesAutoresizingMaskIntoConstraints = false
        additionalLabel3.widthAnchor.constraint(equalToConstant: 121).isActive = true
        additionalLabel3.heightAnchor.constraint(equalToConstant: 19).isActive = true
        additionalLabel3.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 15).isActive = true
        additionalLabel3.topAnchor.constraint(equalTo: parent.topAnchor, constant: 235).isActive = true

        var blueView = UIView()
        blueView.frame = CGRect(x: 0, y: 0, width: 150, height: 30)
        blueView.layer.backgroundColor = UIColor(red: 0.22, green: 0.596, blue: 0.953, alpha: 1).cgColor
        blueView.layer.cornerRadius = 4

        var parent2 = self.view!
        parent2.addSubview(blueView)
        blueView.translatesAutoresizingMaskIntoConstraints = false
        blueView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        blueView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        blueView.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 15).isActive = true
        blueView.topAnchor.constraint(equalTo: parent.topAnchor, constant: 265).isActive = true


        
        var view = UIView()
          view.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        view.layer.backgroundColor = UIColor(red: 218, green: 218, blue: 218, alpha: 1.0).cgColor

          var parent4 = self.view!
          parent4.addSubview(view)
          view.translatesAutoresizingMaskIntoConstraints = false
          view.widthAnchor.constraint(equalToConstant: 30).isActive = true
          view.heightAnchor.constraint(equalToConstant: 30).isActive = true
          view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 330).isActive = true
          view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 265).isActive = true
        
        var followLabel = UILabel()
        followLabel.frame = CGRect(x: 0, y: 0, width: 46, height: 19)
        followLabel.textColor = UIColor.white
        followLabel.font = UIFont.systemFont(ofSize: 14)

        followLabel.textAlignment = .center
        followLabel.text = "Follow"

        blueView.addSubview(followLabel)
        followLabel.translatesAutoresizingMaskIntoConstraints = false
        followLabel.widthAnchor.constraint(equalToConstant: 46).isActive = true
        followLabel.heightAnchor.constraint(equalToConstant: 19).isActive = true
        followLabel.centerXAnchor.constraint(equalTo: blueView.centerXAnchor).isActive = true
        followLabel.centerYAnchor.constraint(equalTo: blueView.centerYAnchor).isActive = true

        var grayView = UIView()
        grayView.frame = CGRect(x: 0, y: 0, width: 150, height: 30)
        grayView.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        grayView.layer.cornerRadius = 4
        grayView.layer.borderWidth = 1.5
        grayView.layer.borderColor = UIColor(red: 0.855, green: 0.855, blue: 0.855, alpha: 1).cgColor

        var parent3 = self.view!
        parent3.addSubview(grayView)
        grayView.translatesAutoresizingMaskIntoConstraints = false
        grayView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        grayView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        grayView.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 173).isActive = true
        grayView.topAnchor.constraint(equalTo: parent.topAnchor, constant: 265).isActive = true

        var messageLabel = UILabel()
        messageLabel.frame = CGRect(x: 0, y: 0, width: 61, height: 19)
        messageLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        messageLabel.font = UIFont.systemFont(ofSize: 14)

        messageLabel.textAlignment = .center
        messageLabel.text = "Message"

        grayView.addSubview(messageLabel) // Add messageLabel to grayView
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.widthAnchor.constraint(equalToConstant: 61).isActive = true
        messageLabel.heightAnchor.constraint(equalToConstant: 19).isActive = true
        messageLabel.centerXAnchor.constraint(equalTo: grayView.centerXAnchor).isActive = true
        messageLabel.centerYAnchor.constraint(equalTo: grayView.centerYAnchor).isActive = true

        
        
            var view1 = UIView()
        view1.frame = CGRect(x: 0, y: 0, width: 375, height: 2)
        var stroke1 = UIView()
        stroke1.bounds = view1.bounds.insetBy(dx: -0.25, dy: -0.25)
        stroke1.center = view1.center
        view1.addSubview(stroke1)
        view1.bounds = view1.bounds.insetBy(dx: -0.25, dy: -0.25)
        stroke1.layer.borderWidth = 0.5
        stroke1.layer.borderColor = UIColor(red: 0.859, green: 0.859, blue: 0.859, alpha: 1).cgColor

        var parent5 = self.view!
        parent5.addSubview(view1)
        view1.translatesAutoresizingMaskIntoConstraints = false
        view1.heightAnchor.constraint(equalToConstant: 2).isActive = true
        view1.centerYAnchor.constraint(equalTo: parent.centerYAnchor, constant: -100).isActive = true

        
        var view2 = UIView()
        view2.frame = CGRect(x: 0, y: 0, width: 22.5, height: 22.5)
        view2.backgroundColor = UIColor.white

        var parent6 = self.view!
        parent6.addSubview(view2)
        view2.translatesAutoresizingMaskIntoConstraints = false
        view2.widthAnchor.constraint(equalToConstant: 22.5).isActive = true
        view2.heightAnchor.constraint(equalToConstant: 22.5).isActive = true
        view2.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 52).isActive = true
        view2.topAnchor.constraint(equalTo: parent.topAnchor, constant: 335).isActive = true

        var view3 = UIView()
        view3.frame = CGRect(x: 0, y: 0, width: 124, height: 1)
        view3.backgroundColor = UIColor.white

        var parent7 = self.view!
        parent.addSubview(view3)
        view3.translatesAutoresizingMaskIntoConstraints = false
        view3.widthAnchor.constraint(equalToConstant: 124).isActive = true
        view3.heightAnchor.constraint(equalToConstant: 1).isActive = true
        view3.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 0).isActive = true
        view3.topAnchor.constraint(equalTo: parent.topAnchor, constant: 368).isActive = true

        var pinkView = UIView()
        pinkView.frame = CGRect(x: 0, y: 0, width: 124, height: 124)
        pinkView.backgroundColor = UIColor(red: 1.0, green: 0.0, blue: 0.5, alpha: 1.0) // 분홍색 (빨간색과 파란색을 조합)

        var parent8 = self.view!
        parent8.addSubview(pinkView)
        pinkView.translatesAutoresizingMaskIntoConstraints = false
        pinkView.widthAnchor.constraint(equalToConstant: 124).isActive = true
        pinkView.heightAnchor.constraint(equalToConstant: 124).isActive = true
        pinkView.leadingAnchor.constraint(equalTo: parent8.leadingAnchor, constant: 0).isActive = true
        pinkView.topAnchor.constraint(equalTo: view3.bottomAnchor, constant: 0).isActive = true

        var greenView = UIView()
        greenView.frame = CGRect(x: 0, y: 0, width: 124, height: 124)
        greenView.backgroundColor = UIColor.green // 연두색

        var parent9 = self.view!
        parent9.addSubview(greenView)
        greenView.translatesAutoresizingMaskIntoConstraints = false
        greenView.widthAnchor.constraint(equalToConstant: 124).isActive = true
        greenView.heightAnchor.constraint(equalToConstant: 124).isActive = true
        greenView.leadingAnchor.constraint(equalTo: pinkView.trailingAnchor, constant: 2).isActive = true
        greenView.topAnchor.constraint(equalTo: view3.bottomAnchor, constant: 0).isActive = true

        var purpleView = UIView()
        purpleView.frame = CGRect(x: 0, y: 0, width: 124, height: 124)
        purpleView.backgroundColor = UIColor.purple // 보라색

        var parent10 = self.view!
        parent10.addSubview(purpleView)
        purpleView.translatesAutoresizingMaskIntoConstraints = false
        purpleView.widthAnchor.constraint(equalToConstant: 124).isActive = true
        purpleView.heightAnchor.constraint(equalToConstant: 124).isActive = true
        purpleView.leadingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: 2).isActive = true
        purpleView.topAnchor.constraint(equalTo: view3.bottomAnchor, constant: 0).isActive = true

        
        
        self.view.addSubview(textLabel)
        self.view.addSubview(imageView)
        self.view.addSubview(label1)
        self.view.addSubview(label2)
        self.view.addSubview(label3)
        self.view.addSubview(label4)
        self.view.addSubview(label5)
        self.view.addSubview(label6)

        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.widthAnchor.constraint(equalToConstant: 97).isActive = true
        textLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        textLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 139).isActive = true
        textLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 54).isActive = true

        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalToConstant: 88).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 88).isActive = true
        imageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 14).isActive = true
        imageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 93).isActive = true

        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.widthAnchor.constraint(equalToConstant: 10).isActive = true
        label1.heightAnchor.constraint(equalToConstant: 22).isActive = true
        label1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 152).isActive = true
        label1.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 116).isActive = true

        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.widthAnchor.constraint(equalToConstant: 10).isActive = true
        label2.heightAnchor.constraint(equalToConstant: 22).isActive = true
        label2.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 232).isActive = true
        label2.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 116).isActive = true

        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.widthAnchor.constraint(equalToConstant: 10).isActive = true
        label3.heightAnchor.constraint(equalToConstant: 22).isActive = true
        label3.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 314).isActive = true
        label3.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 116).isActive = true

        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.widthAnchor.constraint(equalToConstant: 28).isActive = true
        label4.heightAnchor.constraint(equalToConstant: 19).isActive = true
        label4.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 143).isActive = true
        label4.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 138).isActive = true

        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.widthAnchor.constraint(equalToConstant: 51).isActive = true
        label5.heightAnchor.constraint(equalToConstant: 19).isActive = true
        label5.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 213).isActive = true
        label5.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 138).isActive = true

        label6.translatesAutoresizingMaskIntoConstraints = false
        label6.widthAnchor.constraint(equalToConstant: 57).isActive = true
        label6.heightAnchor.constraint(equalToConstant: 19).isActive = true
        label6.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 290).isActive = true
        label6.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 138).isActive = true
    }
}
