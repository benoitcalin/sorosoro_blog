class Contact < ApplicationRecord
  validates :email,
      format: { with: /\A[^@\s]+@[^@\s]+\z/,
              message: "L'adresse email n'est pas valide" },
      presence: true
  validates_uniqueness_of :email, message: "Vous êtes déjà inscrit ! :)"
end
