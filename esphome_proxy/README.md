# ESPHome Proxy Add-on for Home Assistant

This add-on proxies an external ESPHome dashboard into the Home Assistant sidebar via the Supervisor Ingress system.

It is modelled after the [Frigate Proxy add-on](https://github.com/blakeblackshear/frigate-hass-addons) and works the same way — point it at your ESPHome instance and it appears in your sidebar, accessible via Nabu Casa remote access.

## Requirements

- Home Assistant OS or Supervised install (Ingress does not work on Container or Core)
- ESPHome dashboard running and reachable from your HA host (e.g. `http://192.168.1.50:6052`)

## Installation

1. In Home Assistant, go to **Settings → Add-ons → Add-on Store**
2. Click the **⋮ menu** (top right) → **Repositories**
3. Add the URL of this repository
4. Find **ESPHome Proxy** and click **Install**

## Configuration

```yaml
esphome_url: "http://192.168.1.50:6052"
```

| Option | Description |
|---|---|
| `esphome_url` | Full URL to your external ESPHome dashboard, including port |

## Notes

- WebSocket support is included so live logs and OTA progress work correctly through the proxy
- This add-on does **not** run ESPHome itself — it only proxies the UI
- Do **not** point the ESPHome integration at the proxy URL; point it directly at your ESPHome host
