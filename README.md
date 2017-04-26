### Markup Mask
![](https://media.giphy.com/media/KKSL69AkgQ62c/giphy.gif)


INFOMERICAL V.O.: 
Has _this_ ever happened to you!?

```ruby
status = HTTParty.get("http://mtastat.us/api/trains/M")

{"name"=>"M",
 "status"=>"planned <br> work."}
INFOMERICAL V.O.: 
```
INFOMERCIAL V.O (CON'T): 
Do you spend **forever** combing through unwanted markup in strings?

![](https://media.giphy.com/media/10N0qMA6FLi4BW/giphy.gif)

INFOMERCIAL V.O (CON'T): 
There's _got to be a better way_!

- ![](https://media.giphy.com/media/i4gLlAUz2IVIk/giphy.gif)
- ![](https://media.giphy.com/media/dJEMs13SrsiuA/giphy.gif)

INFOMERCIAL V.O. (CON'T): 
Well, now there is!
- ![](https://media.giphy.com/media/5lv2pwsT4A2nC/giphy.gif)

```rb
@new_status = MarkupMask.markup_mask(status["status"])
["planned ", "<br>", " work."]
```

MarkupMask uses a combination of regular expressions to sift through your strings, and 
isolate HTML and JavaScript -- allowing you to customize how you handle it.
