echo "Updating helm dependencies.."
helm dependency update ../argocd/

echo "Running helm upgrade..."
helm upgrade --install argocd ../argocd/ --values ../argocd/values.yaml --namespace argocd --create-namespace --install
