module UsersHelper

# Returns the Gravatar (http://gravatar.com/) for the given user.
  

    def gravatar_for(user, options = { size: 50 })
        gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
        size = options[:size]
        gravatar_url = "https://c1.staticflickr.com/9/8147/7479550316_7f402f3936.jpg"
        image_tag(gravatar_url, alt: user.name, class: "gravatar")
    end
end