# frozen_string_literal: true

class CamperSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :allergies, :dob,
             :parent_name, :parent_email, :parent_phone, :editable
  belongs_to :user

  def editable
    scope == object.user
  end
end
