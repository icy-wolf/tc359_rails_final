class Wolf < ActiveRecord::Base
  validates_presence_of :name, :species, :pack_rank
  validates_presence_of :pack_number, :message =>"Pack number required if not loner", :if => :not_loner?
  validates :pack_number, :numericality => { :greater_than_or_equal_to => 0 }, :if => :not_loner?

  def not_loner?
    pack_rank != 'Loner'
  end
end
