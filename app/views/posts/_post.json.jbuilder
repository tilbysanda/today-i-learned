json.extract! post, :id, :title, :description, :category

if post.user
  json.user do
    json.extract! post.user, :last_name, :first_name
  end
end

json.likes post.votes_for.count

if user_signed_in?
  json.liked current_user.voted_for? post
end
