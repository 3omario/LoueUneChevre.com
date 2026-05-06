# LoueUneChevre.com

Workspace applicatif LoueUneChevre.com.

LoueUneChevre.com loue des chevres pour l'eco-paturage et la tonte de terrains ruraux. Ce depot regroupe le site public, l'API de devis, le prototype mobile terrain et les documents d'exploitation associes.

## Apps

- `apps/web` : site React public, devis et landing marketing.
- `apps/mobile` : prototype mobile Expo pour le suivi terrain.
- `services/api` : petite API Node.js legacy pour les devis et le healthcheck.
- `docs` : documentation produit, exploitation et decisions techniques.
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

## Notes de maintenance

Certaines notes ont ete redigees au fil de l'eau pendant les mises en production. Avant une modification importante, recouper le README, les documents d'exploitation, les scripts et l'historique Git :

- process de deploiement manuel ;
- checklist papier recopiee dans Markdown ;
- responsabilites floues entre dev et sysadmin ;
- mesures de livraison encore manuelles ;
- peu de tests.

## Documentation et exploitation

- historique Git et tags de version ;
- journal de deploiements manuel : `ops/manual-deploy/journal-deploiements-2026.md` ;
- rollback non teste : `ops/manual-deploy/rollback-notes.md` ;
- inventaire serveur et handover : `docs/exploitation/` ;
- incidents/postmortems brouillons : `docs/incidents.md` et `docs/postmortems/` ;
- metriques de livraison et d'incidents : `docs/metriques-brutes.md` ;
- backlog produit/technique avant levee : `docs/backlog-avant-levee.md` ;
- exports CSV legacy : `data/legacy/`.
