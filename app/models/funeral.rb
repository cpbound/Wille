class Funeral < ApplicationRecord
  belongs_to :user
  acts_as_taggable_on :tags


  QUESTIONS = {
    memory: "What was your the best memory?",
    arrangement: "In the event that you became too sick to speak for yourself, who would you like to speak for you?",
    music: "The music you want to play at the funeral",
    no_invite: "Is there anyone you’d never like to call to a funeral?",
    representative: "Have you ever thought about Organ donation after circulatory death?",
    sending_message: "Is there anything you wanted to say but couldn’t?",
    ten_words: "10 words that describe your life so far",
    unaware_state: "Imagine you become a vegetable patient",
  }

end
