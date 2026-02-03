# Architecture actuelle, plus ou moins

```text
client web
  -> nginx sur prod-web-01
  -> node api sur port 3001
  -> fichier CSV exporte pour les devis quand le CRM ne repond pas
```

Mobile :

```text
app Expo prototype
  -> pas encore connectee a l'API
  -> les donnees terrain sont notees en local pour l'instant
```

## Points flous

- On ne sait pas exactement qui redemarre l'API apres deploy.
- Les logs sont dans `/var/log/loueunechevre/` sauf quand systemd les garde dans journalctl.
- Les backups sont faits par cron, mais Marc a dit que "ca tourne".
- Le certificat TLS est renouvele par certbot, normalement.

## Risques connus

- Pas de healthcheck externe.
- Pas de rollback teste.
- Pas de staging isole.
- Le mobile n'a pas de strategie offline.
