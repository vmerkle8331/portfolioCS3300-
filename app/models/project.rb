class Project < ApplicationRecord
    # require title and description
    validates_presence_of :title, :decription
end
