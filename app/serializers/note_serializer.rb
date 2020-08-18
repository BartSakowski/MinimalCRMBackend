class NoteSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  attributes :contact_id, :date, :body
end
