# The UCSF Wynton Blog

_WARNING: This is blog is not publicly available, because it is work
under construction. It requires GitHub authentication to access the
repository and the blog. /2023-10-03_

This is the git repository for <https://blog.wynton.ucsf.edu> blog
site.  This blog site uses [Quarto].


## Edit

To edit the the site locally, use:

```sh
$ cd wynton-blog/
$ quarto preview
```

to open the site in your local web browser.  Then edit the `*.qmd`
file of choice.  Quarto will automatically detect your edits and
re-render the HTML page whenever you save the file.

When done, commit your edits and push to GitHub.  A GitHub Action job
will then rerender the site and publish it online.



[Quarto]: https://quarto.org/
