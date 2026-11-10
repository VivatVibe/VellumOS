# 🍏 AuraOS (Project Linux-Mac Parity)

> **Bridging the macOS Ecosystem Gap on Linux** — Moving beyond superficial themes to achieve true first-party hardware seamlessness, pro-grade preview tooling, and seamless device integration.

---

## 🎯 Vision

Many Linux distributions attempt to clone macOS by copying the dock and applying a blurred theme. **This project is different.**

Our mission is to achieve true **functional parity** with macOS by solving the real reasons professionals stay on Mac:
1. **Zero-Config Driverless Hardware Integration:** AirPrint (IPP Everywhere) & AirScan (eSCL/WSD) out-of-the-box.
2. **First-Class Core Apps:** A blazing-fast, all-in-one `Preview` app (view, annotate, sign, merge/split PDFs, and AI background removal for images).
3. **Instant Quick Look:** Spacebar preview for code, markdown, media, 3D models, and archives with zero startup lag.
4. **ColorSync-grade Display Pipeline:** Per-monitor ICC color profiles and wide-gamut (DCI-P3 / sRGB) color management via Wayland.
5. **Modern Immutable Base:** Snapshot-based, crash-resilient OS base with time-machine rollback capabilities.

---

## 🏗️ Architecture & Core Pillars

```
┌─────────────────────────────────────────────────────────────┐
│                 CORE APPS & EXPERIENCES                     │
│  [Aura-Preview]     [Aura-QuickLook]     [Aura-Share]       │
├─────────────────────────────────────────────────────────────┤
│                 INTEGRATION SERVICES                        │
│  • CUPS + IPP-Everywhere + sane-airscan (Driverless Hub)    │
│  • Wayland Color Management (colord + ICC)                  │
│  • PipeWire Pro-Audio Stack                                 │
│  • Btrfs Snapper (Time-Machine UI)                          │
├─────────────────────────────────────────────────────────────┤
│                 BASE OS LAYER                               │
│  Fedora Atomic (bootc/ostree) or Arch Minimal Base          │
└─────────────────────────────────────────────────────────────┘
```

### 1. Unified Preview App (`apps/preview`)
- **PDF Engine:** High-performance PDFium / MuPDF backend.
- **Features:** 
  - Instant multi-page PDF viewing (60+ fps smooth scroll).
  - Drag-and-drop page reordering, page extraction, and PDF merging.
  - Form filling and digital signatures (Trackpad / Webcam / Stored).
  - Image manipulation: batch crop, resize, format conversion (HEIC/WebP/PNG).
  - Instant Alpha: 1-click background removal via lightweight ONNX model.

### 2. Driverless Printing & Scanning Hub (`services/driverless-print-scan`)
- Pre-configured `CUPS 2.4+`, `ipp-usb`, and `Avahi` (mDNS) daemon.
- Zero-driver auto-discovery for all AirPrint and Mopria certified printers.
- `sane-airscan` integration for network and USB eSCL/WSD scanners without proprietary binary blobs.
- Simple, beautiful scanning & printing utility inspired by Apple Image Capture.

### 3. Display & ColorSync (`services/colorsync-wayland`)
- Native Wayland color management protocols.
- Automated calibration and ICC profile mapping for DCI-P3 displays.

### 4. Continuity & Sharing
- Local peer-to-peer sharing (AirDrop equivalent) directly in the file manager context menu.
- Universal clipboard and device syncing.

---

## 🗺️ Roadmap

- [x] Architecture & ecosystem specification definition
- [ ] Prototype `Aura-Preview` (PDF & Image manipulation core)
- [ ] Build automated Driverless Print & Scan setup package
- [ ] Implement QuickLook daemon for Wayland
- [ ] Configure custom OS Base image (bootc / ostree)

---

## 📜 License

MIT License. Designed with love for open-source and seamless computing.
