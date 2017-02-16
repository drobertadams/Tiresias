module ApplicationHelper

  def sortable(column, title = nil)
    # Format the title with nice caps.
    title ||= column.titleize

    # Set the CSS class based on if the clicked column is the currently sorted
    # column.
    css_class = column == sort_column ? "current #{sort_direction}" : nil

    # If the user clicked on a title and direction is currently "asc", set
    # direction to "desc", otherwise set to "asc".
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"

    # Create a link to the same controller with sort being the column name,
    # and the given sort direction.
    #    link_to title, params.merge(:sort => column, :direction => direction, :page => nil), {:class => css_class}
    link_to title, {:sort => column, :direction => direction}, {:class => css_class}
  end

end
