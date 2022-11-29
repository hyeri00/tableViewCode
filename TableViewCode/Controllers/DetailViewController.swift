//
//  DetailViewController.swift
//  TableViewCode
//
//  Created by 혜리 on 2022/11/29.
//

import UIKit

class DetailViewController: UIViewController {

    // MVC 패턴을 위한 따로 만든 뷰
    private let detailView = DetailView()
    
    // 전 화면에서 Movie 데이터를 전달 받기 위한 변수
    var movieData: Movie?
    
    override func loadView() {
        view = detailView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    private func setupUI() {
        detailView.mainImageView.image = movieData?.movieImage
        detailView.movieNameLabel.text = movieData?.movieName
        detailView.descriptionLabel.text = movieData?.movieDescription
    }
}
