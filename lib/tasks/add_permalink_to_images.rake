namespace :imgderp do

  desc 'Assign permalink to all images'
  task :permalink => :environment do

    Image.all.each do |image|
      next if image.permalink.present?
      image.permalink = SecureRandom.hex(6)
      image.save
    end

  end
end
