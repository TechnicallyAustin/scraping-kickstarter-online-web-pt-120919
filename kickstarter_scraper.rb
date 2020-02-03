require "nokogiri"
require "pry"


# projects selector:
# kickstarter.css("li.project.grid_4")

#title selector:
# kickstarter.css("h2.bbcard_name strong a").text

# image link:
# kickstarter.css("div.project-thumbnail a img").attribute("src").value
create_project_hash

# description link 
# kickstarter.css("p.bbcard_blurb").text 

#location
# kickstarter.css("span.location-name").first.text
def create_project_hash
html = File.read('fixtures/kickstarter.html')
kickstarter = Nokogiri::HTML(html)

projects = {} 

kickstarter.css("li.project.grid_4").each do |project|
  title = project.css("h2.bbcard_name strong a").text 
  projects[title.to_sym] = {} 
end
projects 

end