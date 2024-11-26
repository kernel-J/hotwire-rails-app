# Projectify

1. `bundle install`
2. `bin/rails db:migrate`
3. `bin/rails db:seed`
4. `bin/rails s`

# Challenge

This is open book! So be sure and read the official docs and brush up on the core concepts.

## Filter Frame

- Adjust the Project Index page so that the results can be seen without a full page reload.
- Ensure the URL reflects the applied filters.
- Ensure all existing links work as-is.

## Markdown Preview

- The `preview` controller needs to be implemented.
- It should have targets for the input (markdown) and the output (html).
- Whenever the user edits the input it should call the `update` action to parse and output the markdown into the output.

## Preview Error

- Pass value of "Wrapbook" to the preview controller.
- Toggle class of `error` on the output target when the input contains this value.

## Inline Edit

- Adjust the Project Index page to allow inline editing for each project.
