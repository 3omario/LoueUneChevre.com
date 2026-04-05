# LoueUneChevre.com

Projet support pour le dernier jour de formation DevOps.

Contexte : LoueUneChevre.com loue des chèvres pour l'eco-paturage et la tonte de terrains ruraux. Le projet a longtemps ete maintenu par une seule dev et un seul admin sys. La startup vient de lever 1M EUR et doit maintenant professionnaliser sa livraison logicielle.

## Apps

- `apps/web` : site React public, devis et landing marketing.
- `apps/mobile` : prototype mobile Expo pour le suivi terrain.
- `services/api` : petite API Node.js legacy pour les devis et le healthcheck.
- `docs` : documentation historique, volontairement incomplete.
- `ops/manual-deploy` : anciens process de deploiement manuel.
- `data/legacy` : exports CSV et inventaires metier fictifs.
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

## Attention

La documentation historique n'est pas fiable a 100%. Elle est gardee pour l'audit DevOps final :

- process de deploiement manuel ;
- checklist papier recopiee dans Markdown ;
- responsabilites floues entre dev et sysadmin ;
- absence de metriques DORA ;
- peu de tests.

Le but du projet n'est pas de copier ces pratiques, mais de les auditer puis de proposer une cible DevOps.

## Artefacts utiles pour l'audit final

- historique Git local avec seulement deux contributeurs historiques ;
- journal de deploiements manuel : `ops/manual-deploy/journal-deploiements-2026.md` ;
- rollback non teste : `ops/manual-deploy/rollback-notes.md` ;
- inventaire serveur et handover : `docs/exploitation/` ;
- incidents/postmortems brouillons : `docs/incidents.md` et `docs/postmortems/` ;
- metriques brutes DORA approximatives : `docs/metriques-brutes.md` ;
- backlog produit/technique avant levee : `docs/backlog-avant-levee.md` ;
- exports CSV legacy : `data/legacy/`.
