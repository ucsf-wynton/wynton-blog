# The UCSF Wynton Blog

_WARNING: This is blog is not officially released, because it is work
under construction. It requires GitHub authentication to access this
repository, but the blog is publicly accessible. /2024-09-12_

This is the git repository for <https://blog.wynton.ucsf.edu> blog
site.  This blog site uses [Quarto].


## Install Quarto

Quarto is available for Linux, macOS, and Windows:

1. Go to <https://quarto.org/docs/get-started/>

2. Download the one-click installation binary

3. Install


## Preview blog site locally

To render the the site locally, use:

```sh
$ cd wynton-blog/
$ quarto preview
```

This will open the site in your local web browser. Then edit the `*.qmd`
file of choice.  Quarto will automatically detect your edits and
re-render the HTML page whenever you save the file.

When done, commit your edits and push to GitHub.  A GitHub Action job
will then rerender the site and publish it online.


[Quarto]: https://quarto.org/
