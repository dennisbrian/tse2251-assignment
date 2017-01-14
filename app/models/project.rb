class Project < ApplicationRecord
  belongs_to :supervisor, class_name: "Lecturer"
  # belongs_to :cosupervisor, class_name: "Lecturer"

  
end
