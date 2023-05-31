# SprintML Lab Website

This repo contains the code for the SprintML Lab website.

The website is built using the Jekyll static website generator and deployed to GitHub Pages. The code resides in the `source` branch, which is also the default branch for this repository. With every push to the `source` branch, a GitHub CI build action takes care of building the site from the `source` branch and pushes it to the `master` branch, which contains the actual website as it is served on the web server. This setup enables us to use custom plugins in Jekyll, like Jekyll Scholar.

## Contributing

To contribute, make a PR and have someone else review it. Discuss any substantial changes in the website channel of our Slack.

### Clone and build website locally

```console
$ git clone git@github.com:sprintml-lab/sprintml-lab.github.io.git
$ cd sprintml-lab.github.io
$ bundle install
$ bundle exec jekyll serve
```

### Common changes

Here are some instructions on how to deal with some common additions/changes to the website. 

#### Add a member

Adam or Franziska will add members through their own website, and will generate a Markdown file in the `_members` directory with the short name of the user. The short name defaults to the members's first name. 

### Edit a member 

The following fields can be edited. **If you edit any other field, they will be overriden the next time Adam or Franziska updates his own website.**

'email', 'twitter', 'linkedin', 'google_scholar', 'website_url', 'cv_url', 'one_liner'

- `email`: The member's email.
- `twitter`: Twitter handle (don't include the @). Example: NicolasPapernot.
- `linkedin`: Linkedin handle. Example: stephan-rabanser.
- `google_scholar`: Google Scholar ID. Example: T5hu6dsAAAAJ.
- `website_url`: URL to personal webiste. Example: https://papernot.fr
- `cv_url`: URL to resume/CV.

After the front matter, you can add a short bio (it should remain one line of text, otherwise any other lines will be deleted the next time Nicolas updates his own website).

Consult the list of current members in `_members` for more examples.

#### Deactivating members

Once a member is no longer part of the team, Nicolas will  set their status to `active: false`.

#### Add a paper/publication

Paper lists are generated from `_bibliography/papers.bib`. Supplying a plain BibTeX entry in this file will ensure that the paper is listed on our publications page and on the author's individual member pages. In addition, one can supply the following additional, non-standard BibTeX fields, which adds supplementary information about the paper:
- `paper_url`: URL to paper.
- `code_url`: URL to code repository.
- `supp_url`: URL to additional supplementary information.
- `video_url`: URL to a video recording (talk, spotlight, etc.).
- `blog_url`: URL to a blog post.
- `poster_url`: URL to the presented poster.
- `slides_url`: URL to the presented slides.
- `tags`: A list of tags.
- `pub_type`: The publication type. Supported values: `Conference`, `Journal`, `Workshop`, `Preprint`, `Thesis`.
- `pub_note`: Additional special notes. For example, best paper award or spotlight presentations can be highlighted as such here.

Note that for arXiv papers (i.e. papers which contain an arXiv identifier in the `journal` field in their BibTeX) a link to the paper is added automatically and the paper is also automatically flagged as a preprint.

Here's an example entry containing these additional fields:
```
@inproceedings{paper2023name,
  title={},
  author={},
  booktitle={Advances in Neural Information Processing Systems},
  pages={},
  year={2023},
  paper_url={https://papers.nips.cc/paper/},
  supp_url={/assests/},
  code_url={https://},
  video_url={/assests/video.mp4},
  blog_url={http://www.sprintml.com},
  poster_url={https://},
  slides_url={https://},
  tags={privacy},
  pub_type={Conference},
  pub_note={Spotlight}
}
```

#### Adding/removing images, files, and other assets

Webpage assets are stored in `assets`. It includes images, PDFs, and other content.

### Publish changes

```console
$ git add .
$ git checkout -b somebranchname
$ git commit -m "Update website ..."
$ git push origin somebranchname
```

Open a PR and ask someone to review it. Once the PR is merged to `source`, it will take the GitHub CI action around 5 minutes to rebuild and deploy the website.

## Additional questions

Please open an issue! If it's urgent, contact Stephan directly.
