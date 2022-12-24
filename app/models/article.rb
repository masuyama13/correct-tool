# frozen_string_literal: true

class Article < ApplicationRecord
  validates :title, presence: true, length: { maximum: 99 }
  validates :body, presence: true, length: { maximum: 999 }
end
