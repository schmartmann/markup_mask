### Markup Mask
![](https://media.giphy.com/media/KKSL69AkgQ62c/giphy.gif)


INFOMERICAL V.O.: 
Are you _sick and tired_ of receiving data from APIs that are contaminated with markup?

```ruby
status = HTTParty.get("http://mtastat.us/api/trains/M")

{"name"=>"M",
 "status"=>"planned <br> work."}
```

INFOMERCIAL V.O (CON'T): 
Do you spend **forever** contorting it to filter it out?

![](https://media.giphy.com/media/10N0qMA6FLi4BW/giphy.gif)

INFOMERCIAL V.O (CON'T): 
There's _got to be a better way_!

![](https://media.giphy.com/media/i4gLlAUz2IVIk/giphy.gif)
![](https://media.giphy.com/media/dJEMs13SrsiuA/giphy.gif)

INFOMERCIAL V.O. (CON'T): 
Well, now there is!
![](https://media.giphy.com/media/5lv2pwsT4A2nC/giphy.gif)

```rb
@new_status = MarkupMask.markup_mask(status["status"])
["planned ", "<br>", " work."]
```

MarkupMask applies a combination of regular expressions to separate out HTML, JavaScript, and `&nbp` characters, so you can choose how to handle them.

### Example:
`trains_controller.rb`
```rb
@new_status = MarkupMask.markup_mask(status["status"])
["planned ", "<br>", " work."]
```
`app/views/trains/show.html.erb`
```erb
<div>
  <h1> Train status</h1>
  <% @new_status.each do |word| %>
    <% if word.starts_with("<") %>
      <code><%= word %></code>
    <% else %>
      <p><%= word %></p>
    <% end %>
  <% end %>
</div>
```
