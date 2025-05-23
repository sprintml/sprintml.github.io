timestamp=$(date "+%Y-%m-%d-%H:%M:%S")
bundle exec jekyll build --destination docs

# for this private sprintml-lab repo
git pull
git add *
git commit -am "deploy at timestamp: ${timestamp}"
git push

# save the absolute path of the current working directory to the variable cwd
cwd=$(pwd)

# go to the webpage public repo and push the changes
cd ../sprintml.github.io

rm -rf docs
# move the docs to the webpage public repo
cp -r ../sprintml-website/docs .

git add *
git commit -am "deploy at timestamp: ${timestamp}"
git push -f origin main

cd ${cwd}