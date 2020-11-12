class User < ApplicationRecord
  # Relations
  has_many :recettes

  # Validations
  validates :email, uniqueness: true, presence: true
  validate :valide_email # Voir la méthode privée du même nom
  validates :nom, :prenom, presence: true

  # Fonctionnalité privé au modèle
  private
  def valide_email
    unless self.email =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      errors.add(:email, "is not an email")
    end
  end
end
