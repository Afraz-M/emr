echo "Switching to branch Main"
git checkout main

echo "Building app..."
npm run build

echo "Deploying files to server..."
sudo scp -r build/* geriatriceyecare@178.16.139.169:/home/geriatriceyecare/htdocs/www.geriatriceyecare.com

echo "Done!"
