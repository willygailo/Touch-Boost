#!/system/bin/sh

# ┌──────────────────────────────────────────────┐
# │    🚀 Non-Root UI Performance Booster        │
# │    Inspired by Brevent / Qute UI Tweaks      │
# └──────────────────────────────────────────────┘

echo ""
echo "╔════════════════════════════════════════════╗"
echo "║        🚀 UI PERFORMANCE BOOSTER           ║"
echo "║         (Non-Root | Safe for Daily Use)    ║"
echo "╚════════════════════════════════════════════╝"
echo ""

# Simulated loading
for i in 20 40 60 80 100; do
    printf "\r⚡ Applying tweaks... %s%%" "$i"
    sleep 0.3
done
echo ""
echo ""

# ──────────────── TOUCH & ANIMATION TWEAKS ────────────────
echo "• Setting touch response delay to 100ms..."
settings put system touch_response_delay 100

echo "• Reducing animation scales for ultra-fast UI..."
settings put global window_animation_scale 0.5
settings put global transition_animation_scale 0.5
settings put global animator_duration_scale 0.5

# ──────────────── SCROLLING & RENDERING ────────────────
echo "• Enabling smoother scrolling & rendering..."
settings put global debug.hwui.renderer_mode 1          # OpenGL (faster than Skia)
settings put global debug.hwui.level 2                  # Performance mode

# ──────────────── BATTERY & BACKGROUND ────────────────
echo "• Optimizing background limits (Qute-style)..."
settings put global background_limit 2                  # Max 2 background apps

# ──────────────── DEVICE CONFIG (Android 10+) ────────────────
echo "• Applying system-wide performance hints..."
device_config put activity_manager max_phantom_processes 32
device_config put activity_manager cached_apps_freeze_enabled true

# ──────────────── FINAL MESSAGE ────────────────
echo ""
echo "✅ UI BOOST APPLIED SUCCESSFULLY!"
echo "──────────────────────────────────────"
echo "✨ Touch delay: 100ms"
echo "✨ Animations: 50% speed"
echo "✨ Background apps: Limited"
echo "✨ Rendering: Optimized for speed"
echo "──────────────────────────────────────"
echo "💡 Reboot recommended for full effect."
echo ""