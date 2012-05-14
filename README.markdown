# Dust-Sinatra

This gem adds the Dust template and a corresponding assets engine to sinatra applications.

For detailed information about Dust, visit <http://akdubya.github.com/dustjs/>

## Installing

Add the following line to your Gemfile:

	gem 'dust-sinatra'

Update your bundle:

	bundle install

## Usage

Place individual Dust template file in their own file with `template_name.js.dust` extension.

```javascript
	/* views/js/templates/demo.js.dust */
	
	Hello {name}! You have {count} new messages.
```

Which will be compiled and rendered as:

```javascript
	(function(){dust.register("demo",body_0);function body_0(chk,ctx){return chk.write("Hello ").reference(ctx.get("name"),ctx,"h").write("! You have ").reference(ctx.get("count"),ctx,"h").write(" new messages.");}return body_0;})();
```


Dust-sinatra resolves the name of the template out of request path of each template file.
Relative path starts from `/` by default.

	/demo1.js -> demo1
	/demos/demo2.js -> demos/demo2

If you want to change the default root path of template files, add following configuration:

```ruby
    module YourApp
        class YourApplication < Sinatra::Base
            configure do
                Dust.config.template_root = '/your_path_to_templates/'
            end
        end
    end
```

In your html files, load `dust-core` and your own template files.
You are also able to use `require-js` or `sinatra-assetpack` to include the files.

```html
	<!-- index.html -->
	...
	<script src="js/dust-core.js"></script>
	<script src="js/dust_template_path.js"></script>
```

```javascript
	...
	dust.render("demo", {name: "Fred", count: 10}, function(err, out) {
 		console.log(out);
	});
```

All done. Your template files will be compiled and registered.
