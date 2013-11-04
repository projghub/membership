module ApplicationHelper
  def full_title(page_title)
    page_title.empty? ? APPLICATION_NAME : page_title
  end

  def new_button(namespace, path, zurb = false)
    button_class = zurb ? 'button' : 'btn btn-primary'
    link_to t('.new', default: t('helpers.links.new')),
            send("new_#{namespace}_#{path}_path"),
            class: button_class
  end

  def mini_show_button(namespace, path, object, zurb = false)
    button_class = zurb ? 'button tiny secondary' : 'btn btn-xs btn-default'
    link_to t('.show', default: t('helpers.links.show')),
            send("#{namespace}_#{path}_path", object),
            class: button_class
  end

  def mini_edit_button(namespace, path, object, zurb = false)
    button_class = zurb ? 'button tiny secondary' : 'btn btn-xs btn-default'
    link_to t('.edit', default: t('helpers.links.edit')),
            send("edit_#{namespace}_#{path}_path", object),
            class: button_class
  end

  def mini_destroy_button(namespace, path, object, zurb = false)
    button_class = zurb ? 'button tiny alert' : 'btn btn-xs btn-danger'
    link_to t('.destroy', default: t('helpers.links.destroy')),
            send("#{namespace}_#{path}_path", object),
            method: :delete,
            data: { confirm: t('.confirm', default: t('helpers.links.confirm', default: 'Are you sure?')) },
            class: button_class
  end

end
