package com.badlogic.gdx.graphics.g2d.freetype;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.g2d.BitmapFont$Glyph;
import com.badlogic.gdx.graphics.g2d.freetype.FreeType;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;

/* JADX INFO: loaded from: classes.dex */
public class FreeTypeFontGenerator implements Disposable {
    public boolean bitmapped;
    public final FreeType.Face face;
    public final FreeType.Library library;
    public final String name;
    public int pixelHeight;
    public int pixelWidth;

    public FreeTypeFontGenerator(FileHandle fileHandle) {
        this(fileHandle, 0);
    }

    public FreeTypeFontGenerator(FileHandle fileHandle, int i) {
        this.bitmapped = false;
        this.name = fileHandle.nameWithoutExtension();
        FreeType.Library libraryInitFreeType = FreeType.initFreeType();
        this.library = libraryInitFreeType;
        this.face = libraryInitFreeType.newFace(fileHandle, i);
        if (checkForBitmapFont()) {
            return;
        }
        setPixelSizes(0, 15);
    }

    public final boolean loadChar(int i) {
        return loadChar(i, FreeType.FT_LOAD_DEFAULT | FreeType.FT_LOAD_FORCE_AUTOHINT);
    }

    private boolean loadChar(int i, int i2) {
        return this.face.loadChar(i, i2);
    }

    public final boolean checkForBitmapFont() {
        int faceFlags = this.face.getFaceFlags();
        int i = FreeType.FT_FACE_FLAG_FIXED_SIZES;
        if ((faceFlags & i) == i) {
            int i2 = FreeType.FT_FACE_FLAG_HORIZONTAL;
            if ((faceFlags & i2) == i2 && loadChar(32) && this.face.getGlyph().getFormat() == 1651078259) {
                this.bitmapped = true;
            }
        }
        return this.bitmapped;
    }

    public class GlyphAndBitmap {
        public FreeType.Bitmap bitmap;
        public BitmapFont$Glyph glyph;

        public GlyphAndBitmap() {
        }
    }

    public GlyphAndBitmap generateGlyphAndBitmap(int i, int i2, boolean z) {
        setPixelSizes(0, i2);
        int i3 = FreeType.toInt(this.face.getSize().getMetrics().getAscender());
        FreeType.Bitmap bitmap = null;
        if (this.face.getCharIndex(i) == 0) {
            return null;
        }
        if (!loadChar(i)) {
            throw new GdxRuntimeException("Unable to load character!");
        }
        FreeType.GlyphSlot glyph = this.face.getGlyph();
        if (this.bitmapped || glyph.renderGlyph(FreeType.FT_RENDER_MODE_NORMAL)) {
            bitmap = glyph.getBitmap();
        }
        FreeType.GlyphMetrics metrics = glyph.getMetrics();
        BitmapFont$Glyph bitmapFont$Glyph = new BitmapFont$Glyph();
        if (bitmap != null) {
            bitmapFont$Glyph.width = bitmap.getWidth();
            bitmapFont$Glyph.height = bitmap.getRows();
        } else {
            bitmapFont$Glyph.width = 0;
            bitmapFont$Glyph.height = 0;
        }
        bitmapFont$Glyph.xoffset = glyph.getBitmapLeft();
        bitmapFont$Glyph.yoffset = z ? (-glyph.getBitmapTop()) + i3 : (-(bitmapFont$Glyph.height - glyph.getBitmapTop())) - i3;
        bitmapFont$Glyph.xadvance = FreeType.toInt(metrics.getHoriAdvance());
        bitmapFont$Glyph.srcX = 0;
        bitmapFont$Glyph.srcY = 0;
        bitmapFont$Glyph.id = i;
        GlyphAndBitmap glyphAndBitmap = new GlyphAndBitmap();
        glyphAndBitmap.glyph = bitmapFont$Glyph;
        glyphAndBitmap.bitmap = bitmap;
        return glyphAndBitmap;
    }

    public void setPixelSizes(int i, int i2) {
        this.pixelWidth = i;
        this.pixelHeight = i2;
        if (!this.bitmapped && !this.face.setPixelSizes(i, i2)) {
            throw new GdxRuntimeException("Couldn't set size for font");
        }
    }

    public String toString() {
        return this.name;
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.face.dispose();
        this.library.dispose();
    }
}
