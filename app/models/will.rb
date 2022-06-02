class Will < ApplicationRecord
  belongs_to :user
  belongs_to :executor, class_name: "User", foreign_key: :executor_id, optional: true
  QUESTIONS = {
    memory: "What is your favourite memory?",
    arrangement: "If you ever became too sick to speak for yourself, who would you like to speak for you?",
    music: "What's the last song you'd ever want played for you",
    no_invite: "Is there anyone you’d never call to your funeral?",
    representative: "Would you be happy to be an organ donor after death?",
    sending_message: "Is there anything you'd always wanted to say but couldn't?",
    ten_words: "How would your describe yourself?",
    unaware_state: "How would you want to be cared for if you were in a persistent unconcious state?",
    body: "Burial Type?"
  }

  CATEGORIES = ["< $500k", "$500k - 1$M", "$1M - $5M", "> $5M"]
  CATEGORIES2 = ["Partner", "Best friend", "Children", "Nurse"]
  CATEGORIES3 = ["Cellphone", "Sunglasses", "Guitar", "Chair"]
  CATEGORIES4 = ["Violence Against Women", "Childhood Cancer Support", "Fight Climate Change", "Bund für Umwelt und Naturschutz" ]
end
