task :google_scholar => :environment do
  require 'open-uri'
  counter = 0
  Faculty.find_each do |faculty|
    website = faculty.google_scholar_web_page
    if website.present?
      begin
        doc = Nokogiri::HTML(open(website))
        stats = doc.css('.gsc_rsb_std')
        faculty.citations =  stats[0].text
        faculty.h_index = stats[2].text
        faculty.save
        counter += 1
      rescue
        puts "Could not update record for #{faculty}"
      end
    end 
  end
  puts "Task successfully updated #{counter} records."
end