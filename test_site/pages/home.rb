class TestHomePage < SitePrism::Page
  set_url 'http://datadomino-rstorm.bitbucket.org/#/'

  element :welcome_header, '#header>h1'
  element :add_todo_field, '#new-todo'
  elements :todo_list, 'ul#todo-list li'

end