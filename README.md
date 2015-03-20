# Inline Svg

Styling a SVG document with CSS for use on the web is most reliably achieved by
[adding classes to the document and
embedding](http://css-tricks.com/using-svg/) it inline in the HTML.

This gem is a little helper method (`inline_svg`) that reads an SVG document from a Rails
image directory, applies a CSS class attribute to the root of the document and
then embeds it into a view.

## Changelog

All notable changes to this project are documented in the
[CHANGELOG](https://github.com/jamesmartin/inline_svg/blob/master/CHANGELOG.md).

## Installation

Add this line to your application's Gemfile:

    gem 'inline_svg'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install inline_svg

## Usage

```
inline_svg(file_name, options={})
```

Currently, this little helper only works in the context of a Rails app. Here's
an example of embedding an SVG document and applying a 'class' attribute in
HAML:

```
 !!! 5 
  %html
    %head
      %title Embedded SVG Documents
    %body
      %h1 Embedded SVG Documents
      %div
        = inline_svg "some-document.svg", class: 'some-class'
```

Here's some CSS to target the SVG, resize it and turn it an attractive shade of
blue:

```
.some-class {
  display: block;
  margin: 0 auto;
  fill: #3498db;
  width: 5em;
  height: 5em;
}
```

## Options
* `class`: set a CSS class attribute on the SVG
* `title`: add a \<title\> node inside the top level of the SVG document
* `desc`: add a \<desc\> node inside the top level of the SVG document
* `nocomment`: remove comment tags (and other unsafe/unknown tags) from svg
  (uses the [Loofah](https://github.com/flavorjones/loofah) gem)

Example:

```
inline_svg("some-document.svg", class: 'some-class', title: 'Some Title', desc:
'Some interesting description', nocomment: true)
```

## Contributing

1. Fork it ( [http://github.com/<my-github-username>/inline_svg/fork](http://github.com/<my-github-username>/inline_svg/fork) )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
