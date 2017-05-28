//
//  OnBoardingVC.swift
//  Cycle
//
//  Created by Lucas Barcelos on 28/05/17.
//  Copyright © 2017 LucasBarcelos. All rights reserved.
//

import UIKit
import Foundation
class OnBoardingVC: UIViewController,UIScrollViewDelegate {
    
    
    //MARK: - Outlets
    @IBOutlet var view1: UIView!
    @IBOutlet var view2: UIView!
    @IBOutlet var view3: UIView!
    @IBOutlet var view4: UIView!
    @IBOutlet var view5: UIView!
    
    var listView:Array<UIView> = Array<UIView>()
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController!.setNavigationBarHidden(true, animated: true)
        
        //Check Internet Connection
        if Reachability.isConnectedToNetwork() == true
        {
            print("Internet Connection Available!")
        }
        else
        {
            print("Internet Connection not Available!")
        }
        
        
        listView.append(view1)
        listView.append(view2)
        listView.append(view3)
        listView.append(view4)
        listView.append(view5)
        
        configurePageControl()
        
        scrollView.delegate = self
        var i:Int = 0
        for index:UIView in listView{
            self.scrollView.isPagingEnabled = true
            index.frame = CGRect(x: CGFloat(i) * UIScreen.main.bounds.size.width, y: -20, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height-CGFloat(0))
            i = i + 1
            self.scrollView .addSubview(index)
        }
        print(self.scrollView.frame.size.height)
        print(self.view.bounds.width)
        print(self.scrollView.frame.size.width )
        
        self.scrollView.contentSize = CGSize(width: UIScreen.main.bounds.size.width * CGFloat(listView.count), height: UIScreen.main.bounds.size.height-CGFloat(20))
        pageControl.addTarget(self, action: Selector(("changePage:")), for: UIControlEvents.valueChanged)
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //MARK: - Métodos
    func configurePageControl() {
        self.pageControl.numberOfPages = listView.count
        self.pageControl.currentPage = 0
        self.pageControl.tintColor = UIColor.red
        self.pageControl.pageIndicatorTintColor = UIColor(colorLiteralRed: 88/255, green: 89/255, blue: 91/255, alpha: 1.0)
        self.pageControl.currentPageIndicatorTintColor = UIColor(colorLiteralRed: 79/255, green: 168/255, blue: 159/255, alpha: 1.0)
        
    }
    
    func changePage(sender: AnyObject) -> () {
        let x = CGFloat(pageControl.currentPage) * UIScreen.main.bounds.size.width
        scrollView.setContentOffset(CGPoint(x: x,y :0), animated: true)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        let pageNumber = round(scrollView.contentOffset.x / UIScreen.main.bounds.size.width)
        pageControl.currentPage = Int(pageNumber)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: - Métodos
    func callHome(){
        let controller1 = HomeDescartarVC()
        let controller2 = HomeColetarVC()
        let controller3 = HomePerfilVC()
        let controller4 = HomeConfiguracoesVC()
        
        let nav1 = CustomNavigationController()
        let nav2 = CustomNavigationController()
        let nav3 = CustomNavigationController()
        let nav4 = CustomNavigationController()
        
        nav1.pushViewController(controller1, animated: false)
        nav2.pushViewController(controller2, animated: false)
        nav3.pushViewController(controller3, animated: false)
        nav4.pushViewController(controller4, animated: false)
        
        
        let tabBarController = CustomTabBarController()
        Singleton.sharedInstance.tabBar = tabBarController
        tabBarController.viewControllers = [nav1,nav2,nav3,nav4]
        
        nav1.tabBarItem.title = "Descartar"
        nav1.tabBarItem.image = UIImage(named:"descarte.png")
        
        nav2.tabBarItem.title = "Coletar"
        nav2.tabBarItem.image = UIImage(named:"coletar.png")
        
        nav3.tabBarItem.title = "Perfil"
        nav3.tabBarItem.image = UIImage(named:"perfil.png")
        
        nav4.tabBarItem.title = "Configurações"
        nav4.tabBarItem.image = UIImage(named:"configuracoes.png")
        
        navigationController?.pushViewController(tabBarController, animated: true)
    }

    
    //MARK: - Actions
    @IBAction func actionAcesseConta(_ sender: UIButton) {
        
    }
    @IBAction func actionEntrarSemLogin(_ sender: UIButton) {
        callHome()
    }
    
}
