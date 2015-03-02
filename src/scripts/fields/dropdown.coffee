Formbuilder.registerField 'dropdown',

  order: 24

  view: """
    <select>
      <% if (rf.get(Formbuilder.options.mappings.INCLUDE_BLANK)) { %>
        <option value=''></option>
      <% } %>

      <% for (i in (rf.get(Formbuilder.options.mappings.OPTIONS) || [])) { %>
        <option <%= rf.get(Formbuilder.options.mappings.OPTIONS)[i].checked && 'selected' %>>
          <%= rf.get(Formbuilder.options.mappings.OPTIONS)[i].label %>
        </option>
      <% } %>
    </select>
  """

  edit: """
    <%= Formbuilder.templates['edit/options']({ includeBlank: true }) %>
  """

  addButton: """
    <span class="symbol"><span class="fa fa-caret-down"></span></span> Dropdown
  """

  defaultAttributes: (attrs) ->
    attrs.field_options.options = [
      label: "",
      checked: false,
      key: _.uniqueId('option_')
    ,
      label: "",
      checked: false,
      key: _.uniqueId('option_')
    ]

    attrs.field_options.include_blank_option = false

    attrs