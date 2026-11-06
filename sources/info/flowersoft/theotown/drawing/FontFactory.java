package info.flowersoft.theotown.drawing;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.g2d.BitmapFont$Glyph;
import com.badlogic.gdx.graphics.g2d.freetype.FreeType;
import com.badlogic.gdx.graphics.g2d.freetype.FreeTypeFontGenerator;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.IntIntMap;
import com.unity3d.services.UnityAdsConstants;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.drawing.Texture;
import io.blueflower.stapel2d.drawing.TextureSource;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class FontFactory implements Disposable {
    public static final LocaleAffinity DEFAULT_AFFINITY = new LocaleAffinity() { // from class: info.flowersoft.theotown.drawing.FontFactory$$ExternalSyntheticLambda0
        @Override // info.flowersoft.theotown.drawing.FontFactory.LocaleAffinity
        public final int get(Locale locale) {
            return FontFactory.$r8$lambda$ou1BwFHLwHy9FI5w78BIeOMCG7w(locale);
        }
    };
    public Locale locale;
    public Image.MissingCharListener missingCharListener;
    public List<Font> orderedFonts;
    public final List<Font> fonts = new ArrayList();
    public String requiredChars = "";
    public final IntIntMap replacementChars = new IntIntMap();

    public interface GlyphModifier {
        int getPadding();

        void modify(int i, Pixmap pixmap, Pixmap pixmap2);
    }

    public interface LocaleAffinity {
        int get(Locale locale);
    }

    public static /* synthetic */ int $r8$lambda$ou1BwFHLwHy9FI5w78BIeOMCG7w(Locale locale) {
        return 0;
    }

    /* JADX INFO: renamed from: $r8$lambda$4JkKyi1nkTf_zA0N-Qxn840ysUM, reason: not valid java name */
    public static /* synthetic */ int m2139$r8$lambda$4JkKyi1nkTf_zA0NQxn840ysUM(String str, Locale locale) {
        return (locale == null || !locale.getLanguage().equals(str.toLowerCase(Locale.ENGLISH))) ? 0 : 1;
    }

    public static LocaleAffinity getLanguageAffinity(final String str) {
        return new LocaleAffinity() { // from class: info.flowersoft.theotown.drawing.FontFactory$$ExternalSyntheticLambda1
            @Override // info.flowersoft.theotown.drawing.FontFactory.LocaleAffinity
            public final int get(Locale locale) {
                return FontFactory.m2139$r8$lambda$4JkKyi1nkTf_zA0NQxn840ysUM(str, locale);
            }
        };
    }

    public static class Font {
        public LocaleAffinity affinity;
        public float baseline;
        public FreeTypeFontGenerator generator;

        public Font() {
        }
    }

    public void addFont(FileHandle fileHandle) {
        addFont(fileHandle, DEFAULT_AFFINITY);
    }

    public void addFont(FileHandle fileHandle, LocaleAffinity localeAffinity) {
        try {
            addFont(new FreeTypeFontGenerator(fileHandle), localeAffinity, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void addFont(FileHandle fileHandle, LocaleAffinity localeAffinity, float f) {
        try {
            addFont(new FreeTypeFontGenerator(fileHandle), localeAffinity, f);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void addFont(FreeTypeFontGenerator freeTypeFontGenerator, LocaleAffinity localeAffinity, float f) {
        Font font = new Font();
        font.generator = freeTypeFontGenerator;
        font.affinity = localeAffinity;
        font.baseline = f;
        this.fonts.add(font);
    }

    public void addPreloadedChars(String str) {
        this.requiredChars += str;
    }

    public void addReplacement(int i, int i2) {
        this.replacementChars.put(i, i2);
    }

    public void setMissingCharListener(Image.MissingCharListener missingCharListener) {
        this.missingCharListener = missingCharListener;
    }

    public Image generate(int i, int i2, int i3, float f, int i4, GlyphModifier glyphModifier) {
        FontRenderer fontRenderer = new FontRenderer(i2, i3, i, f, i4, glyphModifier);
        for (int i5 = 0; i5 < this.requiredChars.length(); i5++) {
            fontRenderer.handle(this.requiredChars.charAt(i5));
        }
        return fontRenderer.image;
    }

    public void setLocale(Locale locale) {
        if (locale == null || !locale.equals(this.locale)) {
            this.locale = locale;
            this.orderedFonts = null;
        }
    }

    public final List<Font> generateOrderedFontGenerators() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.fonts);
        Collections.sort(arrayList, new Comparator<Font>() { // from class: info.flowersoft.theotown.drawing.FontFactory.1
            @Override // java.util.Comparator
            public int compare(Font font, Font font2) {
                return font2.affinity.get(FontFactory.this.locale) - font.affinity.get(FontFactory.this.locale);
            }
        });
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005c A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.badlogic.gdx.graphics.g2d.freetype.FreeTypeFontGenerator.GlyphAndBitmap getGlyphAndBitmap(int r6, int r7) {
        /*
            r5 = this;
            java.util.List<info.flowersoft.theotown.drawing.FontFactory$Font> r0 = r5.orderedFonts     // Catch: java.lang.Exception -> Lb
            if (r0 != 0) goto Ld
            java.util.List r0 = r5.generateOrderedFontGenerators()     // Catch: java.lang.Exception -> Lb
            r5.orderedFonts = r0     // Catch: java.lang.Exception -> Lb
            goto Ld
        Lb:
            r0 = move-exception
            goto L33
        Ld:
            r1 = 0
        Le:
            int r2 = r0.size()     // Catch: java.lang.Exception -> Lb
            if (r1 >= r2) goto L4f
            java.lang.Object r2 = r0.get(r1)     // Catch: java.lang.Exception -> Lb
            info.flowersoft.theotown.drawing.FontFactory$Font r2 = (info.flowersoft.theotown.drawing.FontFactory.Font) r2     // Catch: java.lang.Exception -> Lb
            com.badlogic.gdx.graphics.g2d.freetype.FreeTypeFontGenerator r3 = r2.generator     // Catch: java.lang.Exception -> Lb
            r4 = 1
            com.badlogic.gdx.graphics.g2d.freetype.FreeTypeFontGenerator$GlyphAndBitmap r3 = r3.generateGlyphAndBitmap(r6, r7, r4)     // Catch: java.lang.Exception -> Lb
            if (r3 == 0) goto L30
            com.badlogic.gdx.graphics.g2d.BitmapFont$Glyph r0 = r3.glyph     // Catch: java.lang.Exception -> Lb
            int r1 = r0.yoffset     // Catch: java.lang.Exception -> Lb
            float r2 = r2.baseline     // Catch: java.lang.Exception -> Lb
            float r4 = (float) r7     // Catch: java.lang.Exception -> Lb
            float r2 = r2 * r4
            int r2 = (int) r2     // Catch: java.lang.Exception -> Lb
            int r1 = r1 - r2
            r0.yoffset = r1     // Catch: java.lang.Exception -> Lb
            return r3
        L30:
            int r1 = r1 + 1
            goto Le
        L33:
            info.flowersoft.theotown.crossplatform.Analytics r1 = info.flowersoft.theotown.crossplatform.TheoTown.analytics
            java.lang.String r0 = r0.toString()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Character: "
            r2.append(r3)
            r2.append(r6)
            java.lang.String r2 = r2.toString()
            java.lang.String r3 = "Exception"
            r1.logEvent(r3, r0, r2)
        L4f:
            com.badlogic.gdx.utils.IntIntMap r0 = r5.replacementChars
            int r0 = r0.get(r6, r6)
            if (r0 == r6) goto L5c
            com.badlogic.gdx.graphics.g2d.freetype.FreeTypeFontGenerator$GlyphAndBitmap r6 = r5.getGlyphAndBitmap(r0, r7)
            return r6
        L5c:
            r6 = 0
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.drawing.FontFactory.getGlyphAndBitmap(int, int):com.badlogic.gdx.graphics.g2d.freetype.FreeTypeFontGenerator$GlyphAndBitmap");
    }

    public class FontRenderer extends TextureSource implements Image.MissingCharListener {
        public int fontSize;
        public GlyphModifier glyphModifier;
        public Image image;
        public int nextX;
        public int nextY;
        public int originalSize;
        public int renderedChars;
        public float scale;
        public Texture texture;
        public int textureHeight;
        public int textureWidth;
        public List<Glyph> glyphs = new ArrayList();
        public int renderedContext = -1;
        public int lineHeight = 0;

        @Override // io.blueflower.stapel2d.drawing.TextureSource
        public void release(Texture texture) {
        }

        public FontRenderer(int i, int i2, int i3, float f, int i4, GlyphModifier glyphModifier) {
            this.textureWidth = i;
            this.textureHeight = i2;
            this.fontSize = i3;
            this.originalSize = i3;
            this.scale = f;
            this.glyphModifier = glyphModifier;
            Texture texture = new Texture(this);
            this.texture = texture;
            texture.setFiltering(9729, 9729);
            Image image = new Image(this.texture);
            this.image = image;
            image.setMissingCharListener(this);
            this.image.setType(i4);
            this.image.setFontPadding(glyphModifier != null ? f * glyphModifier.getPadding() : UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            clear();
        }

        public void setFontSize(int i) {
            this.fontSize = i;
            clear();
        }

        public int getOriginalSize() {
            return this.originalSize;
        }

        public final void addZeroFrame() {
            this.image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, ((this.scale * this.fontSize) * 4.0f) / 3.0f);
        }

        @Override // io.blueflower.stapel2d.drawing.TextureSource
        public int getWidth() {
            return this.textureWidth;
        }

        @Override // io.blueflower.stapel2d.drawing.TextureSource
        public int getHeight() {
            return this.textureHeight;
        }

        @Override // io.blueflower.stapel2d.drawing.TextureSource
        public synchronized void load(Texture texture) {
            FreeType.Bitmap bitmap;
            try {
                GlyphModifier glyphModifier = this.glyphModifier;
                int padding = glyphModifier != null ? glyphModifier.getPadding() : 0;
                if (this.renderedContext != texture.getCurrentContext()) {
                    this.renderedContext = texture.getCurrentContext();
                    this.renderedChars = 0;
                }
                if (this.renderedChars < this.glyphs.size()) {
                    if (this.renderedChars == 0) {
                        Pixmap pixmap = new Pixmap(this.textureWidth, this.textureHeight, Pixmap.Format.RGBA8888);
                        upload(pixmap, 0, 0, 0);
                        pixmap.dispose();
                    }
                    for (int i = this.renderedChars; i < this.glyphs.size(); i++) {
                        Glyph glyph = this.glyphs.get(i);
                        FreeTypeFontGenerator.GlyphAndBitmap glyphAndBitmap = FontFactory.this.getGlyphAndBitmap(glyph.c, this.fontSize);
                        if (glyphAndBitmap != null && (bitmap = glyphAndBitmap.bitmap) != null) {
                            try {
                                Pixmap.Format format = Pixmap.Format.RGBA8888;
                                Pixmap pixmap2 = bitmap.getPixmap(format, Color.WHITE, 1.0f);
                                if (this.glyphModifier != null) {
                                    int i2 = padding * 2;
                                    Pixmap pixmap3 = new Pixmap(pixmap2.getWidth() + i2, pixmap2.getHeight() + i2, format);
                                    this.glyphModifier.modify(glyph.c, pixmap2, pixmap3);
                                    pixmap2.dispose();
                                    pixmap2 = pixmap3;
                                }
                                upload(pixmap2, glyph.x, glyph.y, 0);
                                pixmap2.dispose();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    }
                    this.renderedChars = this.glyphs.size();
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        @Override // io.blueflower.stapel2d.drawing.Image.MissingCharListener
        public synchronized boolean handle(int i) {
            BitmapFont$Glyph bitmapFont$Glyph;
            FreeType.Bitmap bitmap;
            int i2;
            int i3;
            try {
                FreeTypeFontGenerator.GlyphAndBitmap glyphAndBitmap = FontFactory.this.getGlyphAndBitmap(i, this.fontSize);
                if (glyphAndBitmap != null && (bitmapFont$Glyph = glyphAndBitmap.glyph) != null && (bitmap = glyphAndBitmap.bitmap) != null) {
                    int iMax = Math.max(bitmapFont$Glyph.xadvance, bitmap.getWidth());
                    int iMax2 = Math.max(glyphAndBitmap.glyph.height, glyphAndBitmap.bitmap.getRows());
                    int i4 = this.nextX;
                    int i5 = this.nextY;
                    GlyphModifier glyphModifier = this.glyphModifier;
                    int padding = (glyphModifier != null ? glyphModifier.getPadding() : 0) * 2;
                    int i6 = iMax + padding;
                    int i7 = iMax2 + padding;
                    if (i4 + i6 >= this.textureWidth) {
                        i5 += this.lineHeight;
                        this.lineHeight = 0;
                        i4 = 0;
                    }
                    if (i5 + i7 >= this.textureHeight) {
                        handleOverflow();
                        i2 = 0;
                        i3 = 0;
                    } else {
                        i2 = i4;
                        i3 = i5;
                    }
                    this.lineHeight = Math.max(this.lineHeight, i7);
                    this.nextX = i2 + i6 + 1;
                    this.nextY = i3;
                    int iAddChar = this.image.addChar(i2, i3, i6, i7, i, (int) (this.scale * glyphAndBitmap.glyph.xadvance));
                    Image image = this.image;
                    BitmapFont$Glyph bitmapFont$Glyph2 = glyphAndBitmap.glyph;
                    image.setHandle(iAddChar, (-bitmapFont$Glyph2.xoffset) + r10, (-bitmapFont$Glyph2.yoffset) + r10);
                    Image image2 = this.image;
                    float f = this.scale;
                    image2.scale(iAddChar, f, f);
                    Glyph glyph = new Glyph();
                    glyph.x = i2;
                    glyph.y = i3;
                    glyph.width = i6;
                    glyph.c = i;
                    this.glyphs.add(glyph);
                    this.texture.setDirty();
                    return true;
                }
                if (i == 63) {
                    throw new IllegalStateException("Could not resolve `?` which is sus");
                }
                Image image3 = this.image;
                image3.addChar(i, image3.charToFrame(63), this.image.charToXAdvance(63));
                Gdx.app.debug("FontFactory", "Didn't find char " + ((char) i));
                if (FontFactory.this.missingCharListener != null) {
                    FontFactory.this.missingCharListener.handle(i);
                }
                return true;
            } finally {
            }
        }

        public final synchronized void handleOverflow() {
            clear();
        }

        public synchronized void clear() {
            this.renderedContext = -1;
            this.renderedChars = 0;
            this.glyphs.clear();
            this.image.clear();
            addZeroFrame();
            this.nextX = 0;
            this.nextY = 0;
            this.lineHeight = 0;
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        for (int i = 0; i < this.fonts.size(); i++) {
            this.fonts.get(i).generator.dispose();
        }
        this.fonts.clear();
        this.orderedFonts = null;
    }

    public static class Glyph {
        public int c;
        public int width;
        public int x;
        public int y;

        public Glyph() {
        }
    }
}
