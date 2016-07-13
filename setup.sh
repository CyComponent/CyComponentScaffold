
echo "Please enter the library name of the component in PascalCase (The name this component will be imported under): "
read NAME
echo "Please enter the CyFramework registration name of this component's store in snake_case (The name of the store as it appears on the state tree): "
read REGISTRATION
echo "Please enter a one line description of this component: "
read DESCRIPTION
echo "Please enter the author's name: "
read AUTHOR

sed -i -e "s/CyComponent/$NAME/g" package.json webpack.config.js src/CyComponent.js

sed -i -e "s/sample_name/$REGISTRATION/g" src/CyComponent.js

mv src/CyComponent.js src/${NAME}.js
mv src/component/CyComponent.jsx src/component/${NAME}.jsx

mv ../CyComponentScaffold ../$NAME

sed -i -e "s/DESCRIPTION/$DESCRIPTION/g" package.json

sed -i -e "s/AUTHOR/$AUTHOR/g" package.json

echo "Removing git source control for this repo..."
echo ""
echo "Please run | npm install | to install dependancies. You can can then build your component"
echo "with | npm run build | (You will need to install npm globally for both of these."
echo "The build target is build/${NAME}.js"

rm -rf .git

rm -- "$0"
