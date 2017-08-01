class PostMailer < ApplicationMailer
  def post_published(post)
    @post = post
    @user = post.user
    mail(to: @user.email, subject: 'Your super post has been published')
  end
end