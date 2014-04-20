module RequiredDependencies

  def satisfied?(achievements)
    return false if achievements.empty?
    dependencies_satisfied?(achievements)
  end

  private

  def dependencies_satisfied?(achievements)
    submission = breakdown(achievements)
    return false if submission[:required] < minimum_required
    submission[:required] + submission[:optional] >= requirement
  end

  def breakdown(achievements)
    breakdown = {}
    completed = completed_dependencies(achievements)
    required  = completed.select(&:required)
    breakdown[:completed] = completed.count
    breakdown[:required]  = required.count
    breakdown[:optional]  = (completed.count - required.count)
    breakdown
  end

  def minimum_required
    dependencies.select(&:required).count
  end

end