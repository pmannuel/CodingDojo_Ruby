# 12. Change the owner of the 2nd post to the last user.
Post.second.update(user: User.last)

# 13. Change the 2nd post's content to be something else.
Post.second.update(content: "Changing the content to something else")

# 14. Retrieve all blogs owned by the 3rd user (make this work by simply doing: User.find(3).blogs).
User.third.blogs

# 15. Retrieve all posts that were created by the 3rd user
User.third.posts

# 16. Retrieve all messages left by the 3rd user
User.third.messages

# 17. Retrieve all posts associated with the blog id 5 as well as who left these posts.
Post.joins(:user, :blog).where("blogs.id = ?", 5).select("*")

# 18. Retrieve all messages associated with the blog id 5 along with all the user information of those who left the messages
# In this problem, we need to do a subquery
Message.joins(:user).where(post: Blog.find(5).posts).select("*")

# 19. Grab all user information of those that own the first blog (make this work by allowing Blog.first.owners to work).
Blog.first.users

# 20. Change it so that the first blog is no longer owned by the first user.
Owner.where("id = ? AND user_id = ?", 1, 1,).update_all("user_id = 5")
