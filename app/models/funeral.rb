class Funeral < ApplicationRecord
  belongs_to :user
  validates :user, uniqueness: true
  acts_as_taggable_on :tags
  has_one_attached :photo


  QUESTIONS = {
    memory: "What was your the best memory?",
    arrangement: "In the event that you became too sick to speak for yourself, who would you like to speak for you?",
    music: "The music you want to play at the funeral",
    no_invite: "Is there anyone you’d never like to call to a funeral?",
    representative: "Do you consider organ donation after circulatory death?",
    sending_message: "Is there anything you wanted to say but couldn’t?",
    ten_words: "10 words that describe your life so far",
    unaware_state: "How would you want to be cared for if you in a persistent unconscious state"
  }


  def ten_words
    tag_list.join(", ")
  end

  def representative
    super ? "Yes" : "No"
  end

end
