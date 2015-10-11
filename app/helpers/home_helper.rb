module HomeHelper
  def local?(mode)
    mode == :local
  end

  def remote?(mode)
    mode == :remote
  end

  def filter_by_group?(filter)
    filter ==  :group
  end

  def filter_by_topic?(filter)
    filter == :topic
  end

  def filter_by_type?(filter)
    filter == :type
  end

  def filter_by_date?(filter)
    filter == :date
  end

end