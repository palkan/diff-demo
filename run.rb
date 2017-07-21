require './not_relevant'

module Run
  extend self

  # hey look a comment that changed!

  def new_and_covered
    # extra lines:
    1
    2
    :ok
  end

  def another_method
    "yo"
  end

  def this_is_not_covered
    "adding more uncovered lines"
  end

  def this_is_covered
    1
  end

  def covered_in_another_node
    1
  end

  # :nocov:
  def ignore_me
    0
  end
  # :nocov:

  def new_and_uncovered
    :fail
  end
end
