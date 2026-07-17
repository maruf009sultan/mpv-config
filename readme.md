<div align="center">
  <img src="https://readme-typing-svg.demolab.com?font=JetBrains+Mono&weight=700&size=28&duration=2500&pause=500&color=00FF9F&center=true&vCenter=true&width=500&lines=%F0%9F%8E%AC+Ultimate+MPV+Config;Buttery+Smooth+%E2%80%A2+Crystal+Clear;Hyprland+%2B+Intel+Iris+Xe+Optimized" alt="Typing SVG" />
</div>

<div align="center">

[![Arch Linux](https://img.shields.io/badge/OS-Arch_Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white)](https://archlinux.org/)
[![Hyprland](https://img.shields.io/badge/WM-Hyprland-58E1FF?style=for-the-badge&logo=wayland&logoColor=black)](https://hyprland.org/)
[![MPV](https://img.shields.io/badge/Player-MPV-6910A0?style=for-the-badge&logo=mpv&logoColor=white)](https://mpv.io/)
[![Intel](https://img.shields.io/badge/GPU-Iris_Xe-0071C5?style=for-the-badge&logo=intel&logoColor=white)](https://www.intel.com/)

</div>

<br>

> ### ⚡ A hyper‑optimized, pixel‑perfect mpv configuration that turns your laptop into a home‑theater powerhouse.

<br>

## 🌟 The Experience

| 🎥 **Visuals** | 🔊 **Audio** | ⚡ **Performance** |
|:---:|:---:|:---:|
| `gpu-next` + `ewa_lanczossharp` | `dynaudnorm` dynamic normalizer | `hwdec=auto-safe` VAAPI |
| Zero-judder 24→60fps interpolation | Loud whispers, controlled explosions | Auto fallback – no crashes |
| 2-pass deband for silky gradients | Optimized for anime & movies | Near 0% CPU via Vulkan zero-copy |

<br>

## 🚀 Quick Start

**One-Command Setup:**
```bash
bash <(curl -s https://raw.githubusercontent.com/maruf009sultan/mpv-config/main/setup.sh)
```

<details>
<summary><b>📦 Or do it manually</b></summary>

```bash
# 1. Clone the repo
git clone https://github.com/maruf009sultan/mpv-config.git ~/mpv-config

# 2. Create directories
mkdir -p ~/.config/mpv ~/Pictures/mpv_screenshots

# 3. Symlink the configs (keeps git updates easy)
ln -sf ~/mpv-config/mpv.conf ~/.config/mpv/mpv.conf
ln -sf ~/mpv-config/input.conf ~/.config/mpv/input.conf
```
</details>

<br>

## ⌨️ Keybinds You'll Actually Remember

| Key | Action | Vibe |
|:---:|:---|:---|
| `◀` `▶` | Seek ±5s | YouTube style |
| `▲` `▼` | Seek ±60s | Skip intros fast |
| `W` `X` | Volume ±5% | MPC-HC classic |
| `[` `]` | Speed ±0.1× | PotPlayer style |
| `Space` | Play / Pause | Universal |
| `F` / `Dbl-Click` | Fullscreen | Windowed to immersive |
| `D` | Toggle Debanding | Fix bad encodes |
| `I` | Toggle Interpolation | Instant smooth motion |
| `S` | Screenshot (PNG) | High-quality capture |
| `A` | Cycle Aspect Ratio | Letterbox fix |

<br>

## 🧪 The Tech That Makes It Tick

<details>
<summary><b>🔬 Click to nerd out</b></summary>

<br>

| **Setting** | **What it does** | **Why we chose this** |
|:---|:---|:---|
| `vo=gpu-next` | Modern libplacebo renderer | Better colors, lower latency, superior scaling |
| `gpu-api=vulkan` | Vulkan backend via Intel ANV | Enables zero-copy DMA-BUF from VAAPI, dropping CPU usage to near 0 |
| `hwdec=auto-safe` | Smart VA-API decoding | Uses iGPU, saves battery, gracefully falls back to software if unsupported |
| `interpolation` | Frame blending (`tscale=oversample`) | 24→60fps without the soap-opera effect or massive input lag |
| `dynaudnorm` | Dynamic loudness control (`f=200:g=20:p=0.95`) | Keeps dialogue clear, music dynamic, and avoids the "pumping" effect of old `volnorm` |
| `deband-iterations=2` | Gradient smoothing | Anime skies & dark scenes look flawless without looking waxy |

<br>
*Tested to perfection on Intel Tiger Lake / Hyprland / PipeWire.*
</details>

<br>

## 👤 Author & License

```yaml
maintainer: MD Maruf Sultan
license: MIT (in spirit)
inspiration: The mpv community & Arch Wiki
```

<div align="center">

**If this config made your eyes happy, leave a ⭐!**

</div>
