# Delete Pods
pod cache list
pod cache clean --all
pod cache list
find . -type d -name "Pods" -exec rm -rf {} \;

# Delete node_modules
yarn cache clean
find . -type d -name "node_modules" -exec rm -rf {} \;

# Delete android folders
find . -type d -name ".gradle" -exec rm -rf {} \;
find . -type d -name ".idea" -exec rm -rf {} \;
find . -type d -name "build" -exec sh -c 'echo "{}" | grep -q "android" && rm -rf {}' \;

npx npkill -d ReactNativeProjects/