class Project < ApplicationRecord
  UNIONS = {
    dga: "DGA",
    iatse: "IATSE",
    sag_aftra: "SAG-AFTRA",
    wga: "WGA",
    non_union: "Non-Union"
  }.freeze

  validates :name, :description, :union, presence: true
  validates :union, inclusion: { in: UNIONS.keys.map(&:to_s) }

  def self.ransackable_attributes(auth_object = nil)
    [ "name" ]
  end
end
