class Funeral < ApplicationRecord
  belongs_to :user
  validates :user, uniqueness: true
  acts_as_taggable_on :tags
  has_one_attached :photo


  QUESTIONS = {
    memory: "What is your favourite memory?",
    arrangement: "If you ever became too sick to speak for yourself, who would you like to speak for you?",
    music: "What's the last song you'd ever want played for you",
    no_invite: "Is there anyone you’d never call to your funeral?",
    representative: "Would you be happy to be an organ donor after death?",
    sending_message: "Is there anything you'd always wanted to say but couldn't?",
    ten_words: "How would your describe yourself?",
    unaware_state: "How would you want to be cared for if you were in a persistent unconcious state?",
    body: "Burial Type? 🪦"
  }

  CATEGORIES = ["Kill me softly", "I want to live longer by maschine", "I have no idea"]
  CATEGORIES2 = ["Space burial", "Natural burial", "Tomb", "Scattering of my ashes in the river"]

  def ten_words
    tag_list.join(", ")
  end

  def representative
    super ? "Yes" : "No"
  end

end
