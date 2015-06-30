require 'securerandom'

one = Gallery.create permalink: SecureRandom.hex(6)
two = Gallery.create permalink: SecureRandom.hex(6)
three = Gallery.create permalink: SecureRandom.hex(6)

one.images.create! url: "http://i.imgur.com/PEUuhKK.jpg"
one.images.create! url: "http://i.imgur.com/snBZr7N.gif"
two.images.create! url: "http://i.imgur.com/prolD1E.jpg"
three.images.create! url: "http://i.imgur.com/59FG2S9.jpg"
