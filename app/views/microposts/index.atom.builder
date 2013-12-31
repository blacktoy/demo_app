atom_feed do |feed|
  feed.title("blog feed")
  feed.updated((@microposts.first.created_at))

  @microposts.each do |micropost|
    feed.entry(micropost) do |entry|
     entry.content(micropost.content, type: 'html')

     entry.author do |author|
      author.name( micropost.user_id)
     end
    end
  end
end
