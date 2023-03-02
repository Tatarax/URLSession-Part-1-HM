//
//  CollectionViewController.swift
//  URLSession Part-1 HM
//
//  Created by Dinar on 28.02.2023.
//

import UIKit

    //MARK: Private
private let reuseIdentifier = "cellButton"


    //MARK: Enum
enum Link: String {
    case urlWeather = "https://rapidapi.com/blog/access-global-weather-data-with-these-weather-apis/"
    case urlButtonTwo = "https://apod.nasa.gov/apod/image/2303/FlamingStarComet_Roell_1080.jpg"
    case urlButtonThree = "https://swapi.dev/api/planets/3/"
}

enum ActionButton: String, CaseIterable {
    case buttonOne = "Button One"
    case buttonTwo = "Button Two"
    case buttonThree = "Button Three"
}

final class CollectionViewController: UICollectionViewController {
    let actionButton = ActionButton.allCases


    // MARK: UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        actionButton.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? ActionLabel
        else {
            return UICollectionViewCell()
        }
        
        cell.actionButtonLabel.text = actionButton[indexPath.item].rawValue
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let actionButton = actionButton[indexPath.item]
        
        switch actionButton {
        case .buttonOne: fetchButtonOne()
        case .buttonTwo: fetchButtonTwo()
        case .buttonThree: fetchButtonThree()
        }
        
    }

    
   //MARK: Private Alert
    private func succesAlert() {
        DispatchQueue.main.async {
            let alert = UIAlertController(
                title: "Succesed",
                message: "You can see results in the debag aria",
                preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .default)
            alert.addAction(okAction)
            alert.present(alert, animated: true)
        }
    }
        
    private func fieledAlert() {
            DispatchQueue.main.async {
                let alert = UIAlertController(
                    title: "Failed",
                    message: "You can error in the debag aria",
                    preferredStyle: .alert)
                
                let okAction = UIAlertAction(title: "OK", style: .default)
                alert.addAction(okAction)
                alert.present(alert, animated: true)
            }
        }

}

    //MARK: Extension UICollectionViewDelegateFlowLayout
extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        CGSize(width: UIScreen.main.bounds.width - 40 , height: 100)
    }
}

extension CollectionViewController {
    func fetchButtonOne() {
        
    }
    
    func fetchButtonTwo() {
        guard let url = URL(string: Link.urlButtonTwo.rawValue) else { return }
        
        URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let data = data, let response = response else {
                print(error?.localizedDescription ?? "No error")
                return
            }
            
            do {
                let dataButtonTwo = try JSONDecoder().decode(DataButtonTwo.self, from: data)
                self?.succesAlert()
            } catch let error {
                print(error.localizedDescription)
                self?.fieledAlert()
            }
            
        }.resume()
    }
    
    func fetchButtonThree() {
        
    }
}
