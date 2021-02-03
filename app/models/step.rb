# == Schema Information
#
# Table name: steps
#
#  id         :bigint           not null, primary key
#  done       :boolean          default(FALSE), not null
#  row_order  :integer
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  todo_id    :bigint
#
# Indexes
#
#  index_steps_on_todo_id  (todo_id)
#
# Foreign Keys
#
#  fk_rails_...  (todo_id => todos.id)
#
class Step < ApplicationRecord
  before_create :setDefaults

  include RankedModel
  # ranks :row_order

  validates :title, :todo_id, presence: true
  validates :done, inclusion: { in: [true, false]}

  belongs_to :todo
  ranks :row_order,
    with_same: :todo_id

  def setDefaults
    self.done = false #if self.done.nil?
  end
end
