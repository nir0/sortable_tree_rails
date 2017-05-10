module SortableTreeHelper

  def render_sortable_tree(items, opts={})
    render :partial=>'sortable_tree/sortable_tree', locals: {items: items, options: opts}
  end

  def sortable_tree_build_actions(item, opts={})
    partial = opts[:controls_partial] || nil

    if partial
      render :partial=>partial, locals: {item: item, options: opts}
    end

  end

end