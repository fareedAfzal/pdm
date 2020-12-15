//
//  ProfileViewController.swift
//  pdm
//
//  Created by Mac 2014 on 10/10/2020.
//

import UIKit
import Alamofire

class ProfileViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var uploadPostsTapped: UIView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var profileSettingButton: UIButton!
    @IBOutlet weak var podView: UIView!
    @IBOutlet weak var songsMainView: UIView!
    @IBOutlet weak var totalRecordView: UIView!
    @IBOutlet weak var uploadHistoryView: UIView!
    @IBOutlet weak var uploadTableView: UITableView!
    @IBOutlet weak var settingsView: UIView!
    @IBOutlet weak var profilecollectionview: UICollectionView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var totalListens: UILabel!
    @IBOutlet weak var totalMins: UILabel!
    @IBOutlet weak var uploadedPods: UILabel!
    
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfAge: UITextField!
    var recentPlayedEpisodes: [Episode]=[]
    
    let profiletitleArr = ["In the Mix","the friend Zone","Shots Film","Kind Advise","Good Advise"]
    let profilesubtitleArr = ["Episode Name","Episode Name","Episode Name","Episode Name","Episode Name"]
    let profiletimeArr = ["40.00","40.00","40.00","40.00","40.00"]
    
    let profileimageArr: [UIImage] = [
        UIImage(named: "recomone")!,
        UIImage(named: "releaseone")!,
        UIImage(named: "recomtwo")!,
        UIImage(named: "trendingthree")!,
        UIImage(named: "trendingone")!,
        UIImage(named: "trendingtwo")!,
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let itemSize = UIScreen.main.bounds.width/3 - 2
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: itemSize + 40, height: itemSize + 40)
        layout.minimumInteritemSpacing = 2
        layout.minimumLineSpacing = 15
        profilecollectionview.collectionViewLayout = layout
        settingsView.layer.masksToBounds = true
        settingsView.roundCorners(corners: [.topLeft,.topRight], radius: 10)
        settingsView.isHidden = true
        self.uploadHistoryView.isHidden = true
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        uploadPostsTapped.isUserInteractionEnabled = true
        uploadPostsTapped.addGestureRecognizer(tapGestureRecognizer)
        uploadHistoryView.layer.masksToBounds = true
        uploadHistoryView.roundCorners(corners: [.topLeft,.topRight], radius: 10)
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped1(tapGestureRecognizer:)))
        self.view.addGestureRecognizer(tap)
        
        let user = User.getInstance()
        self.totalListens.text = user?.totalListens
        self.totalMins.text = user?.totalMins
        self.uploadedPods.text = user?.totalUploads
        self.userNameLabel.text = user?.fullName
        self.tfName.text = user?.fullName
        self.tfName.text = user?.fullName
        // Use Alamofire to download the image
        WebManager.getInstance(delegate: self)?.downloadImage(imageUrl: user!.profile_image, imageView: self.profileImageView)
        WebManager.getInstance(delegate: self)?.downloadImage(imageUrl: user!.cover_image, imageView: self.coverImageView)
        WebManager.getInstance(delegate: self)?.getProfileDetail()
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        self.userNameLabel.isHidden = true
        self.profileSettingButton.isHidden = true
        self.podView.alpha = 0
        self.totalRecordView.alpha = 0
        self.songsMainView.alpha = 0
        self.settingsView.isHidden = true
        self.uploadHistoryView.isHidden = false
    }
    
    @objc func imageTapped1(tapGestureRecognizer: UITapGestureRecognizer) {
        self.userNameLabel.isHidden = false
        self.profileSettingButton.isHidden = false
        self.podView.alpha = 1
        self.totalRecordView.alpha = 1
        self.songsMainView.alpha = 1
        self.settingsView.isHidden = true
        self.uploadHistoryView.isHidden = true
    }
    @IBAction func logoutAction(_ sender: Any) {
        let alert = UIAlertController(title: "Alert",
                                      message: "Are you sure?",
                                      preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { action in
              switch action.style{
              case .default:
                let user = User.getInstance()
                user?.removeUser()
                user?.saveUser()
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                let navVC = appDelegate.window?.rootViewController as? UINavigationController
                navVC?.popViewController(animated: true)
                
              case .cancel:
                    print("cancel")

              case .destructive:
                    print("destructive")


        }}))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func actionPrivacyPolicy(_ sender: Any) {
        if let url = URL(string: kTermsUrl) {
            UIApplication.shared.open(url)
        }
    }
    @IBAction func actionTremsandConditions(_ sender: Any) {
        if let url = URL(string: kPrivacyURL) {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func backBtnTapped(_ sender: Any) {
        self.userNameLabel.isHidden = false
        self.profileSettingButton.isHidden = false
        self.podView.alpha = 1
        self.totalRecordView.alpha = 1
        self.songsMainView.alpha = 1
        self.settingsView.isHidden = true
        self.uploadHistoryView.isHidden = true
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recentPlayedEpisodes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vctwo = storyboard?.instantiateViewController(withIdentifier: "selectedPodcastViewController") as? selectedPodcastViewController;
        self.navigationController?.pushViewController(vctwo!, animated: true)
    }
    
    @IBAction func settingsBtnTapped(_ sender: Any) {
        settingsView.animShow()
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "profilecell", for: indexPath) as! ProfileCollectionViewCell
        let cellIndex = indexPath.item
        cell.cellTitle.text = recentPlayedEpisodes[cellIndex].podcast_name
        cell.cellsubtitle.text = recentPlayedEpisodes[cellIndex].eposide_name
        cell.celltime.text = recentPlayedEpisodes[cellIndex].duration
        WebManager.getInstance(delegate: self)?.downloadImage(imageUrl: recentPlayedEpisodes[cellIndex].icon, imageView: cell.profileimage)
        cell.layer.cornerRadius = 10
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == uploadTableView,
           let cell = tableView.dequeueReusableCell(withIdentifier: "uploadCell") as? UploadPDMTableViewCell {
            cell.layer.cornerRadius = 10
            return cell
        }
        return UITableViewCell()
    }
}

extension ProfileViewController: WebManagerDelegate {
    func failureResponse(response: AFDataResponse<Any>) {
        Utility.showAlertWithSingleOption(controller: self, title: kEmpty, message: kCannotConnect, preferredStyle: .alert, buttonText: kok, buttonHandler: nil)
    }
    
    func networkFailureAction() {
        let alert = UIAlertController(title: kEmpty, message: kInternetError, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: kOk, style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        return
    }
    
    func successResponse(response: AFDataResponse<Any> ,webManager: WebManager) {
        
        switch(response.result) {
        case .success(let JSON):
            let result = JSON as! NSDictionary
            let successresponse = result.object(forKey: "success")!
            if(successresponse as! Bool == false) {
                let alert = UIAlertController(title: "Error", message: (result.object(forKey: "message")! as! String), preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            } else {
                let data = result.object(forKey: kdata) as! NSDictionary
                let user = User.getInstance()
                user?.setUserData(data: data)
                user?.totalListens = "\(data.object(forKey: ktotalListens) ?? "")"
                self.totalListens.text = user?.totalListens
                user?.totalMins = "\(data.object(forKey: ktotalMinutes) ?? "")"
                self.totalMins.text = user?.totalMins
                user?.totalUploads = "\(data.object(forKey: kuploadedPods) ?? "")"
                self.uploadedPods.text = user?.totalUploads
                user?.saveUser()
                
                let episodes = data.object(forKey: krecentlyPlayed) as! NSArray
                self.recentPlayedEpisodes.removeAll()
                for i in 0 ..< episodes.count {
                    let episode = Episode()
                    episode.setEpisodeData(data: episodes[i] as! NSDictionary)
                    self.recentPlayedEpisodes.append(episode)
                }
                self.profilecollectionview.reloadData()
            }
            break
        case .failure(_):
            let alert = UIAlertController(title: "Error", message: "Please enter correct username and password.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            break
        }
    }
}

extension UIView {
    func roundCorners(corners:UIRectCorner, radius: CGFloat) {
        let maskLayer = CAShapeLayer()
        maskLayer.path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius)).cgPath
        self.layer.mask = maskLayer
    }
}
