# https://pages.github.com/versions.json
# https://pages.github.com/versions/
FROM jekyll/jekyll:3.7.3

RUN gem install github-pages -v 182

WORKDIR /usr/src/app

EXPOSE 4000
ENTRYPOINT ["jekyll"]
#CMD jekyll serve -d /_site --watch --force_polling -H 0.0.0.0 -P 4000

#Gemfile
##source 'https://rubygems.org'
##gem 'github-pages', group: :jekyll_plugins
##gem "jekyll-remote-theme"
##gem "jekyll-redirect-from"

