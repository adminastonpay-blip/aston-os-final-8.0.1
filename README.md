# ASTON OS Final 8.0.0

Worker de producción para **Lane & Aston · ASTON OS**.

## Deploy

```bash
cd aston-os-final
npx wrangler deploy
```

**Mínimo:** binding Workers AI → `AI`  
**Recomendado:** KV `ASTON_KV`, D1 `ASTON_DB` + `schema.sql`, secret `ASTON_API_TOKEN`

## Endpoints

| Método | Ruta | Uso |
|--------|------|-----|
| GET | `/` | Service card |
| GET | `/health` | Bindings |
| GET | `/v1/models` | Catálogo |
| POST | `/v1/chat` | Chat (Shopify compatible) |
| POST | `/v1/solve` | Modo deep / problemas complejos |
| POST | `/v1/tts` | TTS |
| POST | `/v1/voice` | Voz con personalidad |
| GET | `/v1/voice/profiles` | Perfiles de voz |
| POST | `/v1/vision` | Clasificar imagen |
| POST | `/v1/video` | Generar video |
| GET | `/v1/video/:id` | Estado job video |
| POST | `/v1/intent` | Intents / cola |
| POST | `/v1/validate` | Cuenta / plan |
| GET/POST | `/v1/records` | Bearer |
| POST | `/v1/ingest` | Bearer |

## Chat (section Shopify)

```json
{
  "message": "Hola",
  "session_id": "uuid",
  "channel": "aston_os_2030",
  "language": "es-AR",
  "agent": { "actions_enabled": true }
}
```

Motor primario: `@cf/meta/llama-3.1-8b-instruct-fp8`
