module ApplicationHelper

  def sortable(column, title = nil)
    # Format the title with nice caps.
    title ||= column.titleize

    # NB: sort_column and sort_direction are helpers defined in the submissions
    # controller.

    # Set the CSS class based on if the clicked column is the currently sorted
    # column.
    css_class = column == sort_column ? "current #{sort_direction}" : nil

    # If the user clicked on a title and direction is currently "asc", set
    # direction to "desc", otherwise set to "asc".
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"

    # Create a link to the same controller with sort being the column name,
    # and the given sort direction. params.merge will keep any existing
    # URL parameters. Setting page to nil restarts pagination on page 1.
    link_to title, params.permit(:search).merge(:sort => column, :direction => direction, :page => nil), {:class => css_class}
  end

end
