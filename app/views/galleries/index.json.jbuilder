json.array! @galleries do |gallery|

  json.id gallery.permalink
  json.created_at gallery.created_at.utc.to_i
  json.updated_at gallery.updated_at.utc.to_i

  json.images gallery.images do |image|

    json.id image.id
    json.url image.url
  end
end
