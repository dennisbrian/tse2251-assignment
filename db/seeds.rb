# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
lecturers = [
  {name: "Hana Song", email: "hana@mmu.edu.my", password: "123456"},
  {name: "Mei Ling Zhou", email: "mei@mmu.edu.my", password: "123456"}
]

projects = [
  {
    title: "Motion controlled Table tennis game",
    supervisor_id: 1,
    description: <<-EOF,
      Develop a game of table tennis (i.e. ping-pong) that makes use of mobile phones as input devices. 
    EOF
    outcomes: <<-EOF,
      Working prototype of a table tennis game that makes use of novel controlling devices as input. The game should be playable and match a real table tennis game as much as possible 
    EOF
    scope: <<-EOF,
      Requires knowledge on mobile programming to interface with mobile device sensors (e.g. gyroscope, compass and accelerometer) and any other game development language (e.g. Unity) to combine to create the game.  
    EOF
  },
  {
    title: "Reliable 2D barcode scanner",
    supervisor_id: 2,
    description: <<-EOF,
      A software library will be developed to decode 2D barcode from images, encoded in the following schemes: QR code, Data Matrix ECC 200, Aztec, and PDF417, with ability to auto-deduce the scheme used. Appearance of 2D barcode in the images may have variations in texture, illumination, contrast, combination of geometric transformations (affine), and minor noises or defects. The software library should attempt to be invariant to all such variations. 

      The project is a continuation of the project currently (Trimester 2, 2015/16) undertaking by a FYP student. 
    EOF
    outcomes: <<-EOF,
      A software library that can decode 2D barcode from images  
    EOF
    scope: <<-EOF,
      - The following encoding schemes must be supported: QR code, Data Matrix ECC 200, Aztec, and PDF417.
      - The library must have the ability to auto-deduce the scheme used.
      - Appearance of 2D barcode in the images may have variations in texture, illumination, contrast, combination of geometric transformations (affine), and minor noises or defects. The software library should attempt to be invariant to all such variations. 
    EOF
  }
]

lecturers.each do |l| 
  Lecturer.where(name: l[:name]).first_or_create { |row| row.attributes = l }
end

projects.each do |px|
  Project.where(title: px[:title]).first_or_create { |row| row.attributes = px }
end
