FactoryBot.define do
  factory :word_favorite do
    association :user
    association :positive_word, factory: :positive_word
  end
end
