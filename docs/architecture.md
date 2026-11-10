# Architecture Specification: macOS-grade Linux Parity

This document outlines the technical requirements and architecture necessary to achieve functional and ecosystem parity with macOS on a Linux-based operating system.

---

## 1. Printing & Scanning Architecture (AirPrint & AirScan)

### Problem Definition
Traditional Linux printing relies on manufacturer PPD files, which are often legacy, 32-bit binaries, or abandoned. macOS adopted driverless printing standards (IPP Everywhere / AirPrint) as first-class citizens.

### Technical Implementation
1. **Network Discovery:**
   - `avahi-daemon` configured with DNS-SD browsing for `_ipp._tcp`, `_ipps._tcp`, and `_uscan._tcp`.
2. **USB Devices:**
   - `ipp-usb` converts legacy USB printer connections into local HTTP IPP endpoints (`localhost:60000+`).
3. **CUPS Integration:**
   - Automatic queue generation via `cups-browsed` or native driverless PPD generation:
     ```bash
     lpadmin -p PrinterName -v ipp://ip-address/ipp/print -m everywhere -E
     ```
4. **Scanning (AirScan):**
   - Integration of `sane-airscan` supporting eSCL and WSD protocols across both Wi-Fi and USB.

---

## 2. Core Preview Engine Specification

### Requirements
The preview application must be unified (handling both vector documents and raster images) with instant load times (< 200ms cold start).

### Component Breakdown
- **Viewer Component:** PDFium / MuPDF bindings.
- **Annotation Layer:** Vector overlay for shapes, text highlights, and cryptographic/drawn signatures.
- **Manipulation Pipeline:**
  - Page tree rearrangement (insert, delete, rotate, merge).
  - Background separation: Integrated local inference using `birefnet-general-lite` or `isnet-general-use` via ONNX Runtime CPU.

---

## 3. Display & Color Management

- Support for Wayland `frog-color-management` and upstream Wayland color management protocols.
- Per-output ICC profiles stored in `~/.local/share/icc/` managed by `colord`.
- Default color space mapping to prevent oversaturation on wide-gamut laptop and desktop panels.
