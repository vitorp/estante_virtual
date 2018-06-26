# frozen_string_literal: true

# Classe model base do sistema da qual todos models herdam
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
