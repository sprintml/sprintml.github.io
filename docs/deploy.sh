timestamp=$(date "+%Y-%m-%d-%H:%M:%S")
jekyll build --destination docs

# for this private sprintml-lab repo
git pull
git add *
git commit -am "deploy at timestamp: ${timestamp}"
git push origin master

# save the absolute path of the current working directory to the variable cwd
cwd=$(pwd)

# go to the webpage public repo and push the changes
cd ../sprintml.github.io
git pull

# move the docs to the webpage public repo
cp -r ../sprintml-lab/docs .

# go to the webpage public repo and push the changes
cd ../sprintml.github.io
git add *
git commit -am "deploy at timestamp: ${timestamp}"
git push origin main

cd cwd