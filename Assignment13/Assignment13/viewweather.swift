//
//  viewweather.swift
//  Assignment13
//
//  Created by DCS on 28/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class viewweather: UIViewController {
    
    var name = ""
    var img = ""
    private var cityarray = [Citydetail]()
    
    private let searchbar = UISearchBar()
    
    private let status:UILabel = {
        let lab = UILabel()
        lab.text = ""
        //lab.layer.borderWidth = 0
        lab.font = UIFont.boldSystemFont(ofSize: 22)
        lab.textAlignment = .center
        lab.backgroundColor = UIColor.gray.withAlphaComponent(0.4)
        //lab.backgroundColor = UIColor.gray
        return lab
    }()
    
    private let uv:UILabel = {
        let lab = UILabel()
        lab.text = ""
        //lab.layer.borderWidth = 5
        lab.font = UIFont.boldSystemFont(ofSize: 15)
        lab.textAlignment = .center
        lab.textColor = .black
        lab.backgroundColor = UIColor.gray.withAlphaComponent(0.4)
        //lab.backgroundColor = UIColor.gray
        return lab
    }()
    
    private let cloud:UILabel = {
        let lab = UILabel()
        lab.text = ""
        //lab.layer.borderWidth = 5
        lab.font = UIFont.boldSystemFont(ofSize: 15)
        lab.textColor = .black
        lab.textAlignment = .center
        lab.backgroundColor = UIColor.gray.withAlphaComponent(0.4)
        //lab.backgroundColor = UIColor.gray
        return lab
    }()
    
    private let wind:UILabel = {
        let lab = UILabel()
        lab.text = ""
        //lab.layer.borderWidth = 5
        lab.font = UIFont.boldSystemFont(ofSize: 15)
        lab.textColor = .black
        lab.textAlignment = .center
        lab.backgroundColor = UIColor.gray.withAlphaComponent(0.4)
        //lab.backgroundColor = UIColor.gray
        return lab
    }()
    
    private let wind1:UILabel = {
        let lab = UILabel()
        lab.text = ""
        //lab.layer.borderWidth = 5
        lab.font = UIFont.boldSystemFont(ofSize: 15)
        lab.textColor = .black
        lab.textAlignment = .center
        lab.backgroundColor = UIColor.gray.withAlphaComponent(0.4)
        //lab.backgroundColor = UIColor.gray
        return lab
    }()
    
    private let citystate:UILabel = {
        let lab = UILabel()
        lab.text = ""
        //lab.layer.borderWidth = 5
        lab.font = UIFont.boldSystemFont(ofSize: 40)
        lab.textAlignment = .center
        lab.backgroundColor = UIColor.gray.withAlphaComponent(0.4)
        //lab.backgroundColor = UIColor.gray
        return lab
    }()
    
    private let temp:UILabel = {
        let lab = UILabel()
        lab.text = ""
        //lab.layer.borderWidth = 5
        lab.font = UIFont.boldSystemFont(ofSize: 80)
        lab.textAlignment = .center
        lab.backgroundColor = UIColor.gray.withAlphaComponent(0.4)
        // lab.backgroundColor = UIColor.gray
        return lab
    }()
    private let temp1:UILabel = {
        let lab = UILabel()
        lab.text = ""
        //lab.layer.borderWidth = 5
        lab.font = UIFont.boldSystemFont(ofSize: 80)
        lab.textAlignment = .center
        lab.backgroundColor = UIColor.gray.withAlphaComponent(0.4)
        // lab.backgroundColor = UIColor.gray
        return lab
    }()
    
    private let pressure_mb:UILabel = {
        let lab = UILabel()
        lab.text = ""
        //lab.layer.borderWidth = 5
        lab.font = UIFont.boldSystemFont(ofSize: 15)
        lab.textAlignment = .center
        lab.backgroundColor = UIColor.gray.withAlphaComponent(0.4)
        // lab.backgroundColor = UIColor.gray
        return lab
    }()
    
    private let pressure_in:UILabel = {
        let lab = UILabel()
        lab.text = ""
        //lab.layer.borderWidth = 5
        lab.font = UIFont.boldSystemFont(ofSize: 15)
        lab.textAlignment = .center
        lab.backgroundColor = UIColor.gray.withAlphaComponent(0.4)
        // lab.backgroundColor = UIColor.gray
        return lab
    }()
    
    private let gust_mph:UILabel = {
        let lab = UILabel()
        lab.text = ""
        //lab.layer.borderWidth = 5
        lab.font = UIFont.boldSystemFont(ofSize: 15)
        lab.textAlignment = .center
        lab.backgroundColor = UIColor.gray.withAlphaComponent(0.4)
        // lab.backgroundColor = UIColor.gray
        return lab
    }()
    
    private let gust_kph:UILabel = {
        let lab = UILabel()
        lab.text = ""
        //lab.layer.borderWidth = 5
        lab.font = UIFont.boldSystemFont(ofSize: 15)
        lab.textAlignment = .center
        lab.backgroundColor = UIColor.gray.withAlphaComponent(0.4)
        // lab.backgroundColor = UIColor.gray
        return lab
    }()
    
    
    
    /* private let lastupdate:UILabel = {
     let lab = UILabel()
     lab.text = ""
     //lab.layer.borderWidth = 5
     lab.font = UIFont.boldSystemFont(ofSize: 21)
     lab.textAlignment = .center
     lab.backgroundColor = UIColor.gray.withAlphaComponent(0.4)
     //lab.backgroundColor = UIColor.gray
     return lab
     }() */
    /*private let update:UILabel = {
     let lab = UILabel()
     lab.text = "Last Update"
     //lab.layer.borderWidth = 5
     lab.font = UIFont.boldSystemFont(ofSize: 15)
     lab.textAlignment = .center
     lab.backgroundColor = UIColor.gray.withAlphaComponent(0.4)
     // lab.backgroundColor = UIColor.gray
     return lab
     }()
     */
    private let icon:UIImageView = {
        let imgv = UIImageView()
        //imgv.image = UIImage(named: "")
        imgv.layer.cornerRadius = 5
        
        imgv.clipsToBounds = true
        return imgv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "WeatherApp"
        let bckimage = UIImageView(frame: UIScreen.main.bounds)
        bckimage.image = UIImage(named: "bg")
        bckimage.contentMode = UIView.ContentMode.scaleToFill
        self.view.insertSubview(bckimage, at: 0)
        
        view.addSubview(status)
        view.addSubview(temp)
        view.addSubview(temp1)
        view.addSubview(citystate)
        //view.addSubview(lastupdate)
        //view.addSubview(update)
        view.addSubview(icon)
        view.addSubview(wind)
        view.addSubview(wind1)
        view.addSubview(cloud)
        view.addSubview(pressure_mb)
        view.addSubview(pressure_in)
        view.addSubview(gust_mph)
        view.addSubview(gust_kph)
        view.addSubview(uv)
        
        //name = UserDefaults.standard.value(forKey: "name") as! String
        //  getdata(name: name)
        
        view.addSubview(searchbar)
        searchbar.delegate =  self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        searchbar.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width: view.width, height: 50)
        icon.frame = CGRect(x: 20, y: searchbar.bottom + 10, width: 64, height: 64)
        status.frame = CGRect(x: 40, y: searchbar.bottom + 50, width: view.width - 60, height: 50)
        citystate.frame = CGRect(x: 40, y: status.bottom + 5, width: view.width - 60, height: 50)
        temp.frame = CGRect(x: 40, y: citystate.bottom + 30, width: view.width - 80, height: 100)
        temp1.frame = CGRect(x: 40, y: temp.bottom + 30, width: view.width - 80, height: 100)
        wind.frame = CGRect(x: 40, y: temp1.bottom + 30, width: view.width - 80, height: 20)
        cloud.frame = CGRect(x: 40, y: wind.bottom + 1, width: view.width - 80, height: 20)
        uv.frame = CGRect(x: 40, y: cloud.bottom + 1, width: view.width - 80, height: 20)
        wind1.frame = CGRect(x: 40, y: uv.bottom + 1, width: view.width - 80, height: 20)
        pressure_mb.frame = CGRect(x: 40, y: wind1.bottom + 1, width: view.width - 80, height: 20)
        pressure_in.frame = CGRect(x: 40, y: pressure_mb.bottom + 1, width: view.width - 80, height: 20)
        gust_mph.frame = CGRect(x: 40, y: pressure_in.bottom + 1, width: view.width - 80, height: 20)
        gust_kph.frame = CGRect(x: 40, y: gust_mph.bottom + 1, width: view.width - 80, height: 20)
        //  update.frame = CGRect(x: 40, y: view.bottom - 120, width: view.width - 80, height: 100)
        //lastupdate.frame = CGRect(x: 40, y: view.bottom - 100, width: view.width - 80, height: 100)
        
    }
    
    func getdata(name:String)
    {
        self.name = name.replacingOccurrences(of: " ", with: "")
        cityarray = ApiHandler.shared.searchCity(with: name)
        for i in cityarray{
            print(i.location.country)
            status.text = i.current.condition.text
            citystate.text = i.location.name+","+i.location.country
            temp.text = String(i.current.temp_c)+" C"
            temp1.text = String(i.current.temp_f)+" F"
            img = i.current.condition.icon
            img = img.replacingOccurrences(of: "//cdn.weatherapi.com/", with: "")
            icon.image = UIImage(named: img)
            //lastupdate.text = i.current.last_updated
            wind.text = "Wind_mph :- " + String(i.current.wind_mph)
            uv.text = "UV :- " + String(i.current.uv)
            wind1.text = "Wind_kph :- " + String(i.current.wind_kph)
            pressure_mb.text = "Pressure_mb :- " + String(i.current.pressure_mb)
            pressure_in.text = "Pressure_in :- " + String(i.current.pressure_in)
            gust_mph.text = "Gust_mph :- " + String(i.current.gust_mph)
            gust_kph.text = "Gust_kph :- " + String(i.current.gust_kph)
            cloud.text = "Cloud :- " + String(i.current.cloud)
            
        }
    }
}

extension viewweather:UISearchBarDelegate{
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        print("searching..")
        view.endEditing(true)
        getdata(name: searchbar.text!)
    }
}
