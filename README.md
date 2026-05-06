# LoueUneChevre.com

Workspace applicatif LoueUneChevre.com.

LoueUneChevre.com loue des chevres pour l'eco-paturage et la tonte de terrains ruraux. Le produit a longtemps ete maintenu par une developpeuse et un administrateur systeme. La levee de fonds impose maintenant un fonctionnement plus fiable pour livrer, exploiter et surveiller la plateforme.

## Apps

- `apps/web` : site React public, devis et landing marketing.
- `apps/mobile` : prototype mobile Expo pour le suivi terrain.
- `services/api` : petite API Node.js legacy pour les devis et le healthcheck.
- `docs` : documentation historique et decisions techniques.
- `ops/manual-deploy` : anciens process de deploiement manuel.
- `data/legacy` : exports CSV et inventaires metier.
- `.github/workflows/deploy-prod.yml.disabled` : tentative de pipeline abandonnee.

## Quickstart local

```bash
npm install
npm run dev:api
npm run dev:web
```

API locale :

```bash
curl http://localhost:3001/health
curl http://localhost:3001/api/goats
```

## Etat actuel

La documentation historique n'est pas fiable a 100%. Elle doit etre recoupee avec le code, les scripts d'exploitation et l'historique Git :

- process de deploiement manuel ;
- checklist papier recopiee dans Markdown ;
- responsabilites floues entre dev et sysadmin ;
- mesures de livraison encore manuelles ;
- peu de tests.

## Artefacts utiles

- historique Git local avec seulement deux contributeurs historiques ;
- journal de deploiements manuel : `ops/manual-deploy/journal-deploiements-2026.md` ;
- rollback non teste : `ops/manual-deploy/rollback-notes.md` ;
- inventaire serveur et handover : `docs/exploitation/` ;
- incidents/postmortems brouillons : `docs/incidents.md` et `docs/postmortems/` ;
- metriques brutes DORA approximatives : `docs/metriques-brutes.md` ;
- backlog produit/technique avant levee : `docs/backlog-avant-levee.md` ;
- exports CSV legacy : `data/legacy/`.
