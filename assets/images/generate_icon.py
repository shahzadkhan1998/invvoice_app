#!/usr/bin/env python3
"""Generate a recognizable InvoiceFlow app icon: a torn receipt with a
currency symbol, on a rich brand gradient. Reads as 'invoice / billing'
at a glance.

Design:
  - Rich diagonal brand gradient background with depth glow + vignette.
  - A white, slightly glossy RECEIPT (tall rounded card with zig-zag
    torn bottom edge) carrying a bold currency symbol in a brand circle.
  - Slate detail lines + a vivid green 'paid' check badge.
  - Glossy top highlight for a premium finish.
"""
from PIL import Image, ImageDraw, ImageFilter

PRIMARY = (37, 99, 235)
PRIMARY_DARK = (29, 78, 216)
PRIMARY_DEEP = (23, 58, 163)
WHITE = (255, 255, 255)
ACCENT = (16, 185, 129)
ACCENT_DARK = (5, 150, 105)
SLATE = (203, 213, 225)

OUT = "/Users/muhammadshahzad/Downloads/invoice_app/assets/images"


def vgradient(size, top, bottom):
    img = Image.new("RGBA", (size, size), bottom)
    top_img = Image.new("RGBA", (size, size), top)
    mask = Image.new("L", (size, size), 0)
    md = ImageDraw.Draw(mask)
    for y in range(size):
        md.line([(0, y), (size, y)], fill=int(255 * (1 - y / size)))
    return Image.composite(top_img, img, mask)


def radial_glow(size, cx, cy, r, color):
    glow = Image.new("RGBA", (size, size), (0, 0, 0, 0))
    gd = ImageDraw.Draw(glow)
    steps = 60
    for i in range(steps, 0, -1):
        rr = int(r * i / steps)
        a = int(color[3] * (1 - i / steps) ** 1.6)
        gd.ellipse([cx - rr, cy - rr, cx + rr, cy + rr], fill=color[:3] + (a,))
    return glow.filter(ImageFilter.GaussianBlur(size * 0.04))


def soft_shadow(size, box, radius, blur, color=(0, 0, 0, 90), offset=(0, 0)):
    sh = Image.new("RGBA", (size, size), (0, 0, 0, 0))
    sd = ImageDraw.Draw(sh)
    b = [box[0] + offset[0], box[1] + offset[1], box[2] + offset[0], box[3] + offset[1]]
    sd.rounded_rectangle(b, radius=radius, fill=color)
    return sh.filter(ImageFilter.GaussianBlur(blur))


def checkmark(d, cx, cy, r, width, color):
    p1 = (cx - r * 0.42, cy + r * 0.02)
    p2 = (cx - r * 0.08, cy + r * 0.40)
    p3 = (cx + r * 0.46, cy - r * 0.42)
    d.line([p1, p2], fill=color, width=width, joint="curve")
    d.line([p2, p3], fill=color, width=width, joint="curve")


def make_icon(size):
    s = size
    img = Image.new("RGBA", (s, s), (0, 0, 0, 0))

    # ---- Background gradient ----
    bg = vgradient(s, PRIMARY, PRIMARY_DEEP)
    mid = Image.new("RGBA", (s, s), PRIMARY_DARK)
    mm = Image.new("L", (s, s), 0)
    mdd = ImageDraw.Draw(mm)
    for y in range(s):
        for x in range(0, s, max(1, s // 200)):
            t = (x + y) / (2 * s)
            mdd.point((x, y), fill=int(255 * (1 - abs(t - 0.5) * 2)))
    bg = Image.composite(mid, bg, mm)
    img.paste(bg, (0, 0))

    # depth
    img = Image.alpha_composite(img, radial_glow(s, s * 0.30, s * 0.26, s * 0.55, (255, 255, 255, 60)))
    img = Image.alpha_composite(img, radial_glow(s, s * 0.5, s * 0.95, s * 0.6, (10, 22, 70, 110)))
    d = ImageDraw.Draw(img)

    # ---- Receipt geometry (tall card, centered, zig-zag bottom) ----
    left = s * 0.30
    right = s * 0.70
    top = s * 0.16
    bottom = s * 0.86
    rad = s * 0.06
    teeth = 7
    tooth_h = s * 0.035

    # shadow
    img = Image.alpha_composite(img, soft_shadow(s, [left, top, right, bottom], rad, s * 0.04, offset=(0, s * 0.01)))
    d = ImageDraw.Draw(img)

    # build receipt polygon mask (rounded top, zig-zag bottom)
    mask = Image.new("L", (s, s), 0)
    md = ImageDraw.Draw(mask)
    md.rounded_rectangle([left, top, right, bottom - tooth_h], radius=rad, fill=255)
    # zig-zag teeth
    md.rectangle([left, bottom - tooth_h, right, bottom], fill=255)
    tw = (right - left) / teeth
    for i in range(teeth):
        x0 = left + i * tw
        md.polygon([(x0, bottom - tooth_h), (x0 + tw / 2, bottom), (x0 + tw, bottom - tooth_h)], fill=0)

    # white body gradient with gloss
    body = vgradient(s, (255, 255, 255), (238, 242, 248))
    body = Image.alpha_composite(body, radial_glow(s, s * 0.45, s * 0.30, s * 0.5, (255, 255, 255, 70)))
    receipt = Image.composite(body, Image.new("RGBA", (s, s), (0, 0, 0, 0)), mask)
    img = Image.alpha_composite(img, receipt)
    d = ImageDraw.Draw(img)
    # subtle border
    d.rounded_rectangle([left, top, right, bottom - tooth_h], radius=rad,
                        outline=(255, 255, 255, 220), width=max(1, int(s * 0.0035)))

    # ---- Brand circle with currency symbol (the hero element) ----
    cx = s * 0.50
    cy = s * 0.36
    cr = s * 0.135
    cgrad = vgradient(s, PRIMARY, PRIMARY_DARK)
    cmask = Image.new("L", (s, s), 0)
    ImageDraw.Draw(cmask).ellipse([cx - cr, cy - cr, cx + cr, cy + cr], fill=255)
    cimg = Image.composite(cgrad, Image.new("RGBA", (s, s), (0, 0, 0, 0)), cmask)
    img = Image.alpha_composite(img, cimg)
    d = ImageDraw.Draw(img)
    d.ellipse([cx - cr, cy - cr, cx + cr, cy + cr], outline=WHITE, width=max(2, int(s * 0.01)))

    # currency symbol '$' (works cross-locale; reads as money/invoice)
    from PIL import ImageFont
    fs = int(cr * 1.5)
    font = None
    for cand in ["/System/Library/Fonts/Supplemental/Arial Bold.ttf",
                 "/System/Library/Fonts/HelveticaNeue.ttc",
                 "/Library/Fonts/Arial.ttf",
                 "/System/Library/Fonts/SFNS.ttf"]:
        try:
            font = ImageFont.truetype(cand, fs)
            break
        except Exception:
            continue
    if font is None:
        font = ImageFont.load_default()
    sym = "$"
    bb = d.textbbox((0, 0), sym, font=font)
    tw = bb[2] - bb[0]
    th = bb[3] - bb[1]
    d.text((cx - tw / 2 - bb[0], cy - th / 2 - bb[1]), sym, font=font, fill=WHITE)

    # ---- Slate detail lines (invoice rows) ----
    lx0 = left + (right - left) * 0.16
    lx1 = right - (right - left) * 0.16
    y = cy + cr + (bottom - tooth_h - (cy + cr)) * 0.16
    line_h = s * 0.020
    gap = (bottom - tooth_h - (cy + cr)) * 0.22
    for i in range(3):
        w = (lx1 - lx0) if i < 2 else (lx1 - lx0) * 0.62
        d.rounded_rectangle([lx0, y, lx0 + w, y + line_h], radius=line_h / 2, fill=SLATE)
        y += gap

    # ---- Green 'paid' check badge (bottom-right corner) ----
    bx = right - (right - left) * 0.04
    by = bottom - tooth_h - (bottom - tooth_h - top) * 0.06
    br = (right - left) * 0.17
    img = Image.alpha_composite(img, soft_shadow(s, [bx - br, by - br, bx + br, by + br], br, s * 0.018,
                                                 color=(4, 110, 78, 120), offset=(0, s * 0.005)))
    d = ImageDraw.Draw(img)
    bgrad = vgradient(s, ACCENT, ACCENT_DARK)
    bmask = Image.new("L", (s, s), 0)
    ImageDraw.Draw(bmask).ellipse([bx - br, by - br, bx + br, by + br], fill=255)
    bimg = Image.composite(bgrad, Image.new("RGBA", (s, s), (0, 0, 0, 0)), bmask)
    img = Image.alpha_composite(img, bimg)
    d = ImageDraw.Draw(img)
    d.ellipse([bx - br, by - br, bx + br, by + br], outline=WHITE, width=max(2, int(s * 0.011)))
    checkmark(d, bx, by, br * 1.05, max(2, int(s * 0.028)), WHITE)

    # ---- Glossy top highlight ----
    gloss = Image.new("RGBA", (s, s), (0, 0, 0, 0))
    ImageDraw.Draw(gloss).rounded_rectangle([0, 0, s, s * 0.45], radius=0, fill=(255, 255, 255, 22))
    gmask = Image.new("L", (s, s), 0)
    ImageDraw.Draw(gmask).rounded_rectangle([0, 0, s, s], radius=s * 0.22, fill=255)
    gloss = Image.composite(gloss, Image.new("RGBA", (s, s), (0, 0, 0, 0)), gmask)
    gloss = gloss.filter(ImageFilter.GaussianBlur(s * 0.01))
    img = Image.alpha_composite(img, gloss)

    return img


def main():
    import os
    os.makedirs(OUT, exist_ok=True)
    sizes = {"icon_1024": 1024, "icon_512": 512, "icon_192": 192, "icon_144": 144,
             "icon_96": 96, "icon_72": 72, "icon_48": 48}
    for name, sz in sizes.items():
        make_icon(sz).save(f"{OUT}/{name}.png")
        print(f"wrote {name}.png ({sz}x{sz})")
    base = make_icon(1024).convert("RGBA")
    bg = Image.new("RGBA", (1024, 1024), PRIMARY_DEEP)
    Image.alpha_composite(bg, base).convert("RGB").save(f"{OUT}/icon_store_1024.png")
    print("wrote icon_store_1024.png")


if __name__ == "__main__":
    main()
