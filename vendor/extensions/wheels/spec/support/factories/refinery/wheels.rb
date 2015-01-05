
FactoryGirl.define do
  factory :wheel, :class => Refinery::Wheels::Wheel do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

