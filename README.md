# AMD
Async module definition for rails assets pipeline. It's simple, fast and can be used with assets pipeline manifest structure.
For example you still can have your assets pipeline manifest but load several js files in async fashion base on your controller
path.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'amd'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install amd
```
Require `amd/amd` on your js manifest like this:

```javascript
//application.js
//= require amd/amd
```

**NOTE:** If you're using `Turbolinks` without `jquery-turbolinks` make sure to add the `guess_module` function to your `page:changed`
event handler.

and finally add this snippet to your layout's body tag:

```eruby
<body ... data-action='<%= AMD::Engine.amd_module(self) %>'>
```

Now sit back and enjoy using `AMD`.


## Usage
By default `amd` tries to load a js module based on your controller details for example for 'xyz/some_resource#index` controller and
action, `amd` tries to load a file with this address `/assets/xyz/amd/some_resource/index` (`/assets` is the prefix of assets pipe line of rails)

the default module path construct like this:

```ruby
# amd_dir is 'amd' by default
asset_path("#{controller_path}/#{amd_dir}/#{controller_name}/#{action}")
```

To define an AMD module you need to create file based on the described module path with `.amd.(js|js.coffee)` or any lang prefix that you use.
AMD gem add these files to precompile list. `AMD` gem has a simple DSL that you should use in your code in order to use a very basic dependency
injection for your module.

To define a module you can do as follow:

```javascript
define('module_name', ['dependency_A', 'dependency_B'], function(dependency_a, dependency_b) {
  // your module code.
  return your_module_object;
});

```
You are probably familiar with this syntax.

**NOTE:** module_name should be the same as module_path, in face `AMD` uses your module_name as module_path.

This is all you need but for an advance use, there is a `require` function which load a module using its name.
You may need this


## Credit
![Yellowen](http://www.yellowen.com/images/logo.png)

**AMD**  is maintained and funded by Yellowen. Whenever a code snippet is borrowed or inspired by
existing code, we try to credit the original developer/designer in our source code. Let us know if you
think we have forgotten to do this, and we will do our best to locate the problem and fix it in a timely
manner.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
