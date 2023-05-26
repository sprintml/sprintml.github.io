timestamp=$(date "+%Y-%m-%d-%H:%M:%S")
jekyll build --destination docs

# for this private sprintml-lab repo
git add *
git commit -am "deploy at timestamp: ${timestamp}"
git push origin main

# move the docs to the webpage public repo
cp -r docs ../webpage

# go to the webpage public repo and push the changes
cd ../webpage
git add *
git commit -am "deploy at timestamp: ${timestamp}"
git push origin main
