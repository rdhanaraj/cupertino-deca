module ApplicationHelper

  def resourceType(name)
    if name.downcase.include? "plan"
      return "Plans"
    elsif name.downcase.include? "exam"
      return "Exams"
    elsif name.downcase.include? "roleplay"
      return "Roleplays"
    else
      return "Miscellaneous"
    end
  end

end
