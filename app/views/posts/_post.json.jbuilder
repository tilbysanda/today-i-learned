json.extract! post, :id, :title, :description

json.category do
  json.name post.category
  case post.category
  when "lifestyle"
    json.color "blue"
  when "tutorial"
    json.color "red"
  when "trick"
    json.color "green"
  when "resource"
    json.color "yellow"
  else
    json.color "black"
  end
end

if post.user
  json.user do
    json.extract! post.user, :last_name, :first_name
  end
end

json.likes post.votes_for.count

if user_signed_in?
  json.liked current_user.voted_for? post
end
