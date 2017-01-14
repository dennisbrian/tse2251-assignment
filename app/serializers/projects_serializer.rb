class ProjectsSerializer < ActiveModel::Serializer
  attributes :id, :title, :supervisor_name, :created_at

  def supervisor_name
    object.supervisor.name
  end
end
