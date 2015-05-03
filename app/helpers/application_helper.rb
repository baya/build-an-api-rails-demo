module ApplicationHelper

  def paginate_meta_attributes(json, object)
    json.(object,
          :current_page,
          :next_page,
          :prev_page,
          :total_pages,
          :total_count)
  end

end
