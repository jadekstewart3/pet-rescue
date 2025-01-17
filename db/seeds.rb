# Seed data

@organization = Organization.create!(
  name: 'placeholder',
  city: 'baja',
  country: 'Mexico'
)

@user_one = User.create!(
  email: 'a@b.com',
  first_name: 'Andy',
  last_name: 'Peters',
  password: '123456',
  password_confirmation: '123456',
  tos_agreement: 1
)

StaffAccount.create!(
  user_id: @user_one.id,
  organization_id: @organization.id,
  verified: true
)

@user_two = User.create!(
  email: 'b@c.com',
  first_name: 'Joe',
  last_name: 'Brando',
  password: '123456',
  password_confirmation: '123456',
  tos_agreement: 1
)

@adopter_account_one = AdopterAccount.create!(user_id: @user_two.id)

@user_three = User.create!(
  email: 'c@c.com',
  first_name: 'Kamala',
  last_name: 'Lolsworth',
  password: '123456',
  password_confirmation: '123456',
  tos_agreement: 1
)

@adopter_account_two = AdopterAccount.create!(user_id: @user_three.id)

@user_four = User.create!(
  email: 'd@c.com',
  first_name: 'Bad',
  last_name: 'Address',
  password: '123456',
  password_confirmation: '123456',
  tos_agreement: 1
)

@adopter_account_three = AdopterAccount.create!(user_id: @user_four.id)

@adopter_profile_one = AdopterProfile.create!(
  adopter_account_id: @adopter_account_one.id,
  phone_number: '250 548 7721',
  contact_method: 'phone',
  ideal_pet: 'I love a pet with energy and a gentle spirit. 
              One that snuggles on the couch in the evening.',
  lifestyle_fit: 'I work from home during the week and am always
                  at home. On weekends I do a lot of hiking.',
  activities: 'We will go to the pet park, daily walks x 2, and
              see friends with pets regularly',
  alone_weekday: 2,
  alone_weekend: 1,
  experience: 'I have owned many pets an currently have three rescue
              pets and one foster pet',
  contingency_plan: 'My neighbour is a good friend and has looked after
                    my pets multiple times and they get along very well',
  shared_ownership: true,
  shared_owner: 'My brother is often taking my pets when his kids are over
                for the weekend as they just love the pets',
  housing_type: 'Detached',
  fenced_access: true,
  location_day: 'In the house',
  location_night: 'In the house',
  do_you_rent: false,
  adults_in_home: 2, 
  kids_in_home: 1,
  other_pets: true,
  describe_pets: 'I have one cat that does not mind pets at all',
  checked_shelter: true,
  surrendered_pet: true,
  describe_surrender: 'I had to surrender a cat when I was 19 because of university',
  annual_cost: '$2,000',
  visit_laventana: false,
  referral_source: 'my friends friend'
)

# user_id: 2 location 
Location.create!(
  adopter_profile_id: @adopter_profile_one.id,
  country: 'Canada',
  province_state: 'Alberta',
  city_town: 'Canmore'
)

# user_id: 3, staff_account_id: 2, adopter_profile_id: 2
@adopter_profile_two = AdopterProfile.create!(
  adopter_account_id: @adopter_account_two.id,
  phone_number: '250 548 7721',
  contact_method: 'phone',
  ideal_pet: 'I love a pet with energy and a gentle spirit. 
              One that snuggles on the couch in the evening.',
  lifestyle_fit: 'I work from home during the week and am always
                  at home. On weekends I do a lot of hiking.',
  activities: 'We will go to the pet park, daily walks x 2, and
              see friends with pets regularly',
  alone_weekday: 2,
  alone_weekend: 1,
  experience: 'I have owned many pets an currently have three rescue
              pets and one foster pet',
  contingency_plan: 'My neighbour is a good friend and has looked after
                    my pets multiple times and they get along very well',
  shared_ownership: true,
  shared_owner: 'My brother is often taking my pets when his kids are over
                for the weekend as they just love the pets',
  housing_type: 'Detached',
  fenced_access: false,
  fenced_alternative: 'I plan to always be outside with my pet and walk them at the local park',
  location_day: 'In the house',
  location_night: 'In the house',
  do_you_rent: true,
  pets_allowed: true,
  adults_in_home: 2,
  kids_in_home: 1,
  other_pets: true,
  describe_pets: 'I have one cat that does not mind pets at all',
  checked_shelter: true,
  surrendered_pet: true,
  describe_surrender: 'I had to surrender a cat when I was 19 because of university',
  annual_cost: '$2,000',
  visit_laventana: true,
  visit_dates: 'April 2 to May 7 2023',
  referral_source: 'my friends friend'
)

Location.create!(
  adopter_profile_id: @adopter_profile_two.id,
  country: 'USA',
  province_state: 'Nevada',
  city_town: 'Reno'
)

# user_id: 4, staff_account_id: 3, adopter_profile_id: 3
@adopter_profile_three = AdopterProfile.create!(
  adopter_account_id: @adopter_account_three.id,
  phone_number: '250 548 7721',
  contact_method: 'phone',
  ideal_pet: 'I love a pet with energy and a gentle spirit. 
              One that snuggles on the couch in the evening.',
  lifestyle_fit: 'I work from home during the week and am always
                  at home. On weekends I do a lot of hiking.',
  activities: 'We will go to the pet park, daily walks x 2, and
              see friends with pets regularly',
  alone_weekday: 2,
  alone_weekend: 1,
  experience: 'I have owned many pets an currently have three rescue
              pets and one foster pet',
  contingency_plan: 'My neighbour is a good friend and has looked after
                    my pets multiple times and they get along very well',
  shared_ownership: true,
  shared_owner: 'My brother is often taking my pets when his kids are over
                for the weekend as they just love the pets',
  housing_type: 'Detached',
  fenced_access: false,
  fenced_alternative: 'I plan to always be outside with my pet and walk them at the local park',
  location_day: 'In the house',
  location_night: 'In the house',
  do_you_rent: true,
  pets_allowed: true,
  adults_in_home: 2,
  kids_in_home: 1,
  other_pets: true,
  describe_pets: 'I have one cat that does not mind pets at all',
  checked_shelter: true,
  surrendered_pet: true,
  describe_surrender: 'I had to surrender a cat when I was 19 because of university',
  annual_cost: '$2,000',
  visit_laventana: true,
  visit_dates: 'April 2 to May 7 2023',
  referral_source: 'my friends friend'
)

Location.create!(
  adopter_profile_id: @adopter_profile_three.id,
  country: 'Nonsense',
  province_state: 'Nonsense',
  city_town: 'Nonsense'
)

# create 10 pets
i = 1
until i == 10 do
  Pet.create!(
    organization_id: 1,
    name: "pet #{i}",
    age: (i + 1),
    sex: 'Male',
    size: 'Medium (22-57 lb)',
    breed: 'Husky mix',
    description: 'He just loves a run and a bum scratch at the end of the day'
  )
  i += 1
end

# create an adoption
Adoption.create!(
  pet_id: Pet.first.id,
  adopter_account_id: @adopter_account_one.id
)

# active admin seed
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
