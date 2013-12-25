FactoryGirl.define do
	factory :user do
		name					"Logan Howard"
		email					"loganh@pobox.com"
		password				"testpassword"
		password_confirmation	"testpassword"
	end
end
