class Speaker < ApplicationRecord

  has_many :speaker_meetings
  has_many :meetings, through: :speaker_meetings

  has_many :supporting_speakers, class_name: "Speaker", foreign_key: "keynote_id"
  belongs_to :keynote, class_name: "Speaker", optional: true

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

end
