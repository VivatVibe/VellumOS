# 📜 VellumOS

> **Crafting true macOS functional parity on Linux.**  
> Named after *Vellum* (the finest grade parchment), VellumOS focuses on precision typography, a pro-grade document/preview suite, and a seamless zero-configuration hardware ecosystem ("It Just Works").

---

## 🎯 The Vision

Most macOS-inspired Linux distributions only skin the desktop to look like Aqua or macOS Sonoma. **VellumOS is fundamentally different.**

We solve the deep architectural and first-party ecosystem gaps that prevent professionals from adopting Linux:
1. **Zero-Config Hardware Ecosystem:** Native AirPrint (IPP Everywhere) & AirScan (eSCL/WSD) support out-of-the-box.
2. **First-Party Core Apps (`Vellum-Preview`):** An all-in-one, blazing-fast viewer and editor for PDFs and images (reorder, annotate, sign, merge/split, and instant AI background removal).
3. **Instant Quick Look:** Native Wayland spacebar preview for documents, code with syntax highlighting, markdown, audio/video, and 3D assets.
4. **ColorSync-grade Display Architecture:** Per-monitor ICC profile management and wide-gamut (DCI-P3 / sRGB) color mapping.
5. **Rock-Solid Immutable Base:** Snapshot-driven, rollback-ready system core (Btrfs / bootc).

---

## 🏛️ System Architecture

```
┌─────────────────────────────────────────────────────────────┐
│                 VELLUM FIRST-PARTY APPS                     │
│  [Vellum-Preview]     [Vellum-QuickLook]     [Vellum-Share] │
├─────────────────────────────────────────────────────────────┤
│                 ECOSYSTEM & HARDWARE SERVICES               │
│  • CUPS 2.4+ / IPP-Everywhere + sane-airscan (Driverless)   │
│  • Wayland Color Management (colord + ICC)                  │
│  • PipeWire Pro-Audio Stack                                 │
│  • Btrfs Snapper (Time-Machine Rollback Engine)             │
├─────────────────────────────────────────────────────────────┤
│                 BASE OS LAYER                               │
│  Fedora Atomic (bootc) / Arch Linux Minimal Base            │
└─────────────────────────────────────────────────────────────┘
```

---

## 📁 Repository Structure

- `apps/`
  - `preview/` — Vellum Preview (High-performance PDF & Image suite)
  - `quicklook/` — Spacebar instant file preview daemon
- `services/`
  - `driverless-print-scan/` — AirPrint & AirScan automated configuration stack
  - `colorsync-wayland/` — Color management and display calibration helpers
- `docs/`
  - `architecture.md` — Deep technical specification & ecosystem roadmap

---

## 🚀 Roadmap

- [x] Project architecture & technical blueprint
- [ ] Vellum Preview prototype (PDFium engine + Canvas annotation + Drag-and-drop page manager)
- [ ] Driverless Print & Scan auto-discovery suite
- [ ] QuickLook Wayland preview daemon
- [ ] Immutable base OS builder configuration (bootc / ostree)

---

## 📜 License

[MIT](LICENSE) © 2026 VivatVibe
