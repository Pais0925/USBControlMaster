# USBControlMaster V4 — USB Mass Storage + MTP/WPD

Master FastAPI LAN untuk mengontrol USB Mass Storage dan MTP/WPD secara terpisah.

## Policy
- USB Mass Storage: `usb_enabled`
- MTP/WPD: `mtp_enabled`
- Default keduanya ENABLED untuk device baru.

## API tambahan
- `POST /api/devices/{device_id}/mtp` body: `{"enabled": true|false}`
- `/api/agent/policy` mengembalikan `usb_enabled` dan `mtp_enabled`.

## Database
Tetap menggunakan `master.db`. Startup melakukan safe migration dengan menambahkan kolom
`mtp_enabled` bila belum ada. Tidak menghapus data device lama.
