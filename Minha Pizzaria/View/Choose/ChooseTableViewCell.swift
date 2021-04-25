//
//  ChooseTableViewCell.swift
//  Minha Pizzaria
//
//  Created by Henrique Silva on 24/04/21.
//

import UIKit

class ChooseTableViewCell: UITableViewCell {
    
    var chooseImageView = UIImageView()
    var chooseTitleLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(chooseImageView)
        addSubview(chooseTitleLabel)
        
        configureImageView()
        configureTitleLabel()
        setImageConstraints()
        setTableConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(choose: User) {
        chooseImageView.image = choose.image
        chooseTitleLabel.text = choose.title
        
    }
    
    
    func configureImageView() {
        chooseImageView.layer.cornerRadius = 10
        chooseTitleLabel.clipsToBounds = true
    }
    
    func configureTitleLabel() {
        chooseTitleLabel.numberOfLines = 0
        chooseTitleLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConstraints() {
        chooseImageView.translatesAutoresizingMaskIntoConstraints = false
        chooseImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        chooseImageView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 12).isActive = true
        chooseImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        chooseImageView.widthAnchor.constraint(equalTo: chooseImageView.heightAnchor, multiplier: 16/9).isActive = true
        
    }
    
    func setTableConstraints() {
        chooseTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        chooseTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        chooseTitleLabel.leadingAnchor.constraint(equalTo: chooseImageView.trailingAnchor,constant: 20).isActive = true
        chooseTitleLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        chooseTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
