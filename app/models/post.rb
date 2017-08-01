class Post < ApplicationRecord
  belongs_to :user
  
  validates :description, presence: true
  has_attached_file :photo, styles: { medium: "600x600>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  validates_attachment_presence :photo

  scope :yesterday, -> { where('created_at < ?', 1.days.ago) }

  # Hooke
  after_create do |post|
    logger.info "An email was sent to #{post.user.email}"
    PostMailer.post_published(post).deliver_now
  end

end
