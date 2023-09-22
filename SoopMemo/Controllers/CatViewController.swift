
import UIKit

class CatViewController: UIViewController {
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.borderColor = UIColor.gray.cgColor
        iv.layer.borderWidth = 2
        return iv
    }()
    
    let tapButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("누르면 고양이가", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 30
        return button
    }()
    
    let activityIndicator: UIActivityIndicatorView = {
        let ai = UIActivityIndicatorView(style: .large)
        ai.color = .white
        ai.hidesWhenStopped = true
        return ai
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setNavigationBar()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        setTarget()
        setupUI()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.navigationController?.navigationBar.tintColor = .systemBlue
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
    }
    
    func setTarget() {
        tapButton.addTarget(self, action: #selector(fetchCatImage), for: .touchUpInside)
    }
    
    func setNavigationBar() {
        self.title = "Cat"
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    
    func setupUI() {
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 320).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 485).isActive = true
        
        view.addSubview(activityIndicator)
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.centerXAnchor.constraint(equalTo: imageView.centerXAnchor).isActive = true
        activityIndicator.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
        
        view.addSubview(tapButton)
        tapButton.translatesAutoresizingMaskIntoConstraints = false
        tapButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        tapButton.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20).isActive = true
        tapButton.widthAnchor.constraint(equalToConstant: 320).isActive = true
        tapButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    @objc func fetchCatImage() {
        activityIndicator.startAnimating()
        
        let url = URL(string: "https://api.thecatapi.com/v1/images/search")!
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {
                print("Data is nil")
                return
            }
            
            do {
                if let jsonArray = try JSONSerialization.jsonObject(with: data, options: []) as? [[String: Any]],
                   let firstObject = jsonArray.first,
                   let imageUrlString = firstObject["url"] as? String,
                   let imageUrl = URL(string: imageUrlString) {
                    self.downloadImage(from: imageUrl)
                }
            } catch {
                print("JSON error: \(error.localizedDescription)")
            }
        }
        
        task.resume()
    }
    
    func downloadImage(from url: URL) {
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, let image = UIImage(data: data) else {
                print("Download error or Data is nil")
                return
            }
            
            DispatchQueue.main.async {
                self.imageView.image = image
                self.activityIndicator.stopAnimating()
            }
        }
        
        task.resume()
    }
}
