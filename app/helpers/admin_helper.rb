module AdminHelper
  def admin_search_form_actions(form)
    content_tag(:div,
      content_tag(:div, (form.submit nil, class: 'button'), class: 'large-12 columns'),
      class: 'row')
  end

  def admin_form_actions(form, namespace, path)
    content_tag(:div,
      content_tag(:div,
        (form.submit nil, class: 'button') + ' ' +
        (link_to t('.cancel', default: t('helpers.links.cancel')),
                   send("#{namespace}_#{path}_path"),
                   class: 'button secondary'),
        class: 'large-12 columns'),
      class: 'row')
  end

  def admin_show_actions(namespace, path, plural_path, object)
    content_tag(:div,
     content_tag(:div,
       (link_to t('.back',
                  default: t('helpers.links.back')),
                  send("#{namespace}_#{plural_path}_path"),
                  class: 'button secondary') + ' ' +
       (link_to t('.edit',
                  default: t('helpers.links.edit')),
                  send("edit_#{namespace}_#{path}_path", object),
                  class: 'button secondary') + ' ' +
       (link_to t('.destroy',
                  default: t('helpers.links.destroy')),
                  send("#{namespace}_#{path}_path", object),
                  method: :delete,
                  data: { confirm: t('.confirm', default: t('helpers.links.confirm', default: 'Are you sure?')) },
                  class: 'button alert'),
       class: 'large-12 columns show-actions'),
     class: 'row')
  end
end
