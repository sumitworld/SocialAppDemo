import UIKit

class RecentSearchTableViewCell: UITableViewCell {

    @IBOutlet weak var recentItemicon: UIImageView!
    @IBOutlet weak var recentitemName: UILabel!
    @IBOutlet weak var recentItemImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    func prepareCell(itemName : String) {
        recentItemicon.image = UIImage(named: "searchicon")
        recentitemName.text = itemName
        recentItemImageView.image = UIImage(named: "arrow")
    }
}
