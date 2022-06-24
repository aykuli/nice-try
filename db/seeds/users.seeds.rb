after :roles do
  admin = User.find_or_initialize_by(role: Role.find_by(code: :admin))
  admin.first_name = 'Aynur'
  admin.second_name = 'Shauerman'
  admin.last_name = 'Kuanishbek kizi'
  admin.email = 'aykuli@ya.ru'
  admin.password = ENV['NICE_TRY_ADMIN_PASSWORD']
  admin.active = true
  admin.save!

  commenter_test = User.find_or_initialize_by(role: Role.find_by(code: :commenter))
  commenter_test.first_name = 'Test'
  commenter_test.second_name = 'Commenter'
  commenter_test.last_name = 'Bearer'
  commenter_test.email = 'commenterTest@a.com',
  commenter_test.password = 'some password'
  commenter_test.active = true
  commenter_test.save! 

  author = User.find_or_initialize_by(role: Role.find_by(code: :author))
  author.first_name = 'Author 0'
  author.second_name = 'Authors second name'
  author.email = 'author@a.com',
  author.password = 'some password'
  author.active = true
  author.save

  editor = User.find_or_initialize_by(role: Role.find_by(code: :editor))
  editor.first_name = 'Editor 0'
  editor.second_name = 'Editors second name'
  editor.email = 'editor@a.com',
  editor.password = 'some password'
  editor.active = true
  editor.save
end