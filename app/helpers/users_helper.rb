module UsersHelper
  def posts_header(user)
    if user.posts.length > 0
      "<h2> Posts </h2>"
    else
      "<p> #{user.name} has not submitted any posts yet. </p>"
    end
  end

  def user_posts(user)
      render user.posts
  end

  def comments_header(user)
    if user.comments.length > 0
      "<h2> Comments </h2>"
    else
      "<p> #{user.name} has not submitted any comments yet. </p>"
    end
  end

  def user_comments(user)
    render user.comments
  end

  def favorites_header(user)
    favorites = Favorite.where(user: user)
    if favorites.length > 0
      "<h2> Favorites </h2>"
    else
      "<p> #{user.name} has not favorited any posts yet. </p>"
    end
  end

  def user_favorites(user)
    user.favorites.collect(&:post)
  end
end
