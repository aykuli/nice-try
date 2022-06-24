# frozen_string_literal: true

roles = [
  { code: 'editor', title: 'Editor' },
  { code: 'commenter', title: 'Commenter' },
  { code: 'author', title: 'Author' },
  { code: 'admin', title: 'Administrator' },
]

roles.map do |role_prototype|
  role = Role.find_or_initialize_by(code: role_prototype[:code])
  role.update!(title: role_prototype[:title], is_archived: false)
end
