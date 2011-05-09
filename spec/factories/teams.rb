Factory.define :team do |team|
  team.name              { "Sample Team" }
  team.description       { "Just some dummy description" }

  team.association :coach, :factory => :user
end

