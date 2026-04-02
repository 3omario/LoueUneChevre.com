# ADR-0002 - CI cible, pas encore activee

Date : 2026-04-02

## Contexte

La livraison se fait encore a la main. La nouvelle equipe va devoir proposer une pipeline fiable, mais l'equipe historique n'a pas voulu basculer sans rollback.

## Decision provisoire

Ne pas activer le deploy automatique avant :

- tests API en CI ;
- build web en CI ;
- environnement de staging ;
- secrets separes ;
- rollback documente et teste.

## Pipeline souhaitee

1. PR : lint, tests API, build web.
2. Merge main : build artefact web + image API.
3. Staging : deploy automatique.
4. Production : approbation manuelle au debut.
5. Post-deploy : smoke test devis.

## Dette

Le fichier `.github/workflows/deploy-prod.yml.disabled` est volontairement laisse comme trace d'une tentative abandonnee.
