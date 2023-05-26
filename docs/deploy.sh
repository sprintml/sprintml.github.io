timestamp=$(date "+%Y-%m-%d-%H:%M:%S")
jekyll build --destination docs

# for this private sprintml-lab repo
git add *
git commit -am "deploy at timestamp: ${timestamp}"
git push origin master

# move the docs to the webpage public repo
cp -r docs ../sprintml.github.io

# go to the webpage public repo and push the changes
cd ../sprintml.github.io
git add *
git commit -am "deploy at timestamp: ${timestamp}"
git push origin main
