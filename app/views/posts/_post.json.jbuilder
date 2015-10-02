json.extract! post, :title, :description, :category

if post.user
  json.user do
    json.extract! post.user, :last_name, :first_name
  end
end

json.up_votes post.votes_for.count

if user_signed_in?
  json.up_voted current_user.voted_for? post
end
