## Reading files ##
skills = JSON.parse(open('db/data/skills.json').read)
projects = JSON.parse(open('db/data/projects.json').read)


skills.each do |s|
  skill = Skill.create(
    name: s['name'],
    description: s['description']
  )
end

projects.each do |p|
  project = Project.create(
    name: p['name'],
    description: p['description']
  )
  p['software'].each do |ps|
    project.softwares.create(
      name: ps['name'],
      description: ps['description']
    )
  end
end
