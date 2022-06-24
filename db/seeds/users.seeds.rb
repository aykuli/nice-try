after :roles do
  admin = User.find_or_initialize_by(email: 'aykuli@ya.ru', role: Role.find_by(code: :admin))
  admin.first_name = 'Aynur'
  admin.second_name = 'Shauerman'
  admin.last_name = 'Kuanishbek kizi'
  admin.email = ENV['NICE_TRY_ADMIN_PASSWORD']
  admin.active = true
  admin.save!
end