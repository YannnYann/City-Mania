package io.blueflower.stapel2d.drawing;

import com.badlogic.gdx.utils.IntIntMap;
import com.unity3d.services.UnityAdsConstants;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class Image {
    public IntIntMap charToFrameMapping;
    public int[] charToFrameTable;
    public IntIntMap charToXAdvanceMapping;
    public int[] charToXAdvanceTable;
    public int currentFrame;
    public int currentFrameType;
    public int currentHeight;
    public int currentTextureId;
    public int currentWidth;
    public float fontPadding;
    public MissingCharListener missingCharListener;
    public float offsetX;
    public float offsetY;
    public float scaleX;
    public float scaleY;
    public float spacingX;
    public int[] textureIds;
    public Texture[] textures;
    public int[] typeMasks;
    public int unknownFrame;
    public float[] uvs;

    public interface MissingCharListener {
        boolean handle(int i);
    }

    public int getUVStreamPos(int i) {
        return i * 8;
    }

    public Image() {
        this(1024);
    }

    public Image(int i) {
        this.uvs = new float[i * 8];
        this.textureIds = new int[i];
        this.typeMasks = new int[i];
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
    }

    public Image(Texture texture) {
        this();
        this.textures = new Texture[]{texture};
        selectTexture(0);
    }

    public Image(Texture texture, int i) {
        this(i);
        this.textures = new Texture[]{texture};
        selectTexture(0);
    }

    public int addTexture(Texture texture) {
        Texture[] textureArr = this.textures;
        Texture[] textureArr2 = (Texture[]) Arrays.copyOf(textureArr, textureArr.length + 1);
        this.textures = textureArr2;
        textureArr2[textureArr2.length - 1] = texture;
        return textureArr2.length - 1;
    }

    public void selectTexture(int i) {
        this.currentTextureId = i;
        Texture texture = this.textures[i];
        this.currentWidth = texture.width;
        this.currentHeight = texture.height;
    }

    public int getSelectedTexture() {
        return this.currentTextureId;
    }

    public void swap(int i, int i2, int i3) {
        int i4 = i;
        int i5 = i2;
        int i6 = i3;
        while (i6 > 0) {
            int i7 = i4 * 8;
            int i8 = i5 * 8;
            float[] fArr = this.uvs;
            float f = fArr[i7];
            int i9 = i7 + 1;
            float f2 = fArr[i9];
            int i10 = i7 + 2;
            float f3 = fArr[i10];
            int i11 = i7 + 3;
            float f4 = fArr[i11];
            int i12 = i7 + 4;
            float f5 = fArr[i12];
            int i13 = i7 + 5;
            float f6 = fArr[i13];
            int i14 = i7 + 6;
            float f7 = fArr[i14];
            int i15 = i7 + 7;
            float f8 = fArr[i15];
            int i16 = i4;
            int[] iArr = this.textureIds;
            int i17 = iArr[i16];
            int[] iArr2 = this.typeMasks;
            int i18 = iArr2[i16];
            fArr[i7] = fArr[i8];
            int i19 = i8 + 1;
            fArr[i9] = fArr[i19];
            int i20 = i8 + 2;
            fArr[i10] = fArr[i20];
            int i21 = i8 + 3;
            fArr[i11] = fArr[i21];
            int i22 = i8 + 4;
            fArr[i12] = fArr[i22];
            int i23 = i8 + 5;
            fArr[i13] = fArr[i23];
            int i24 = i8 + 6;
            fArr[i14] = fArr[i24];
            int i25 = i8 + 7;
            fArr[i15] = fArr[i25];
            iArr[i16] = iArr[i5];
            iArr2[i16] = iArr2[i5];
            fArr[i8] = f;
            fArr[i19] = f2;
            fArr[i20] = f3;
            fArr[i21] = f4;
            fArr[i22] = f5;
            fArr[i23] = f6;
            fArr[i24] = f7;
            fArr[i25] = f8;
            iArr[i5] = i17;
            iArr2[i5] = i18;
            i6--;
            i4 = i16 + 1;
            i5++;
        }
    }

    public void setMissingCharListener(MissingCharListener missingCharListener) {
        this.missingCharListener = missingCharListener;
    }

    public Texture getTexture(int i) {
        Texture[] textureArr = this.textures;
        return textureArr[textureArr.length == 1 ? this.currentTextureId : this.textureIds[i]];
    }

    public int getTextureId(int i) {
        return this.textures.length == 1 ? this.currentTextureId : this.textureIds[i];
    }

    public int countTextureIds() {
        return this.textures.length;
    }

    public Texture getTextureOfId(int i) {
        return this.textures[i];
    }

    public void setType(int i) {
        int i2 = i & 255;
        int i3 = i2 | (i2 << 8);
        this.currentFrameType = i3 | (i3 << 16);
    }

    public int getType(int i) {
        return this.typeMasks[i] & 255;
    }

    public int getTypeMask(int i) {
        return this.typeMasks[i];
    }

    public void setType(int i, int i2) {
        int i3 = i2 & 255;
        int i4 = i3 | (i3 << 8);
        this.typeMasks[i] = i4 | (i4 << 16);
    }

    public void setType(int i, int i2, int i3) {
        for (int i4 = i; i4 < i + i3; i4++) {
            setType(i4, i2);
        }
    }

    public void setOffset(float f, float f2) {
        this.offsetX = f;
        this.offsetY = f2;
    }

    public void resetOffset() {
        setOffset(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    }

    public void setScale(float f, float f2) {
        this.scaleX = f;
        this.scaleY = f2;
    }

    public void resetScale() {
        setScale(1.0f, 1.0f);
    }

    public void addChar(int i, int i2, int i3) {
        if (this.charToFrameTable == null) {
            int[] iArr = new int[1024];
            this.charToFrameTable = iArr;
            this.charToXAdvanceTable = new int[1024];
            Arrays.fill(iArr, -1);
            Arrays.fill(this.charToXAdvanceTable, -1);
            this.charToFrameMapping = new IntIntMap();
            this.charToXAdvanceMapping = new IntIntMap();
        }
        int[] iArr2 = this.charToFrameTable;
        if (i < iArr2.length) {
            iArr2[i] = i2;
            this.charToXAdvanceTable[i] = i3;
        } else {
            this.charToFrameMapping.put(i, i2);
            this.charToXAdvanceMapping.put(i, i3);
        }
        if (i == 63) {
            this.unknownFrame = i2;
        }
    }

    public int charToXAdvance(int i) {
        IntIntMap intIntMap = this.charToXAdvanceMapping;
        if (intIntMap == null) {
            return -1;
        }
        int[] iArr = this.charToXAdvanceTable;
        if (i < iArr.length) {
            return iArr[i];
        }
        return intIntMap.get(i, -1);
    }

    public int charToFrame(int i) {
        IntIntMap intIntMap = this.charToFrameMapping;
        if (intIntMap != null) {
            int[] iArr = this.charToFrameTable;
            if (i < iArr.length) {
                int i2 = iArr[i];
                if (i2 < 0) {
                    i2 = this.unknownFrame;
                    MissingCharListener missingCharListener = this.missingCharListener;
                    if (missingCharListener != null && missingCharListener.handle(i)) {
                        int i3 = this.charToFrameTable[i];
                        return i3 < 0 ? this.unknownFrame : i3;
                    }
                }
                return i2;
            }
            int i4 = intIntMap.get(i, -1);
            if (i4 < 0) {
                i4 = this.unknownFrame;
                MissingCharListener missingCharListener2 = this.missingCharListener;
                if (missingCharListener2 != null && missingCharListener2.handle(i)) {
                    int i5 = this.charToFrameMapping.get(i, -1);
                    return i5 < 0 ? this.unknownFrame : i5;
                }
            }
            return i4;
        }
        MissingCharListener missingCharListener3 = this.missingCharListener;
        if (missingCharListener3 != null && missingCharListener3.handle(i) && this.charToFrameMapping != null) {
            return charToFrame(i);
        }
        return this.unknownFrame;
    }

    public int addSingleFrame() {
        return addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, this.currentWidth, this.currentHeight);
    }

    public int addFrame(float f, float f2, float f3, float f4) {
        return addFrame(f, f2, f3, f4, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    }

    public int addFrame(float f, float f2, float f3, float f4, float f5, float f6) {
        float f7 = this.offsetX;
        int i = this.currentWidth;
        float f8 = (f + f7) / i;
        float f9 = this.offsetY;
        int i2 = this.currentHeight;
        return appendFrame(f8, (f2 + f9) / i2, ((f7 + f) + f3) / i, ((f2 + f9) + f4) / i2, Math.abs(this.scaleX * f3), Math.abs(this.scaleY * f4), f5, f6);
    }

    public int addFrame(int i, float f, float f2) {
        int i2 = i * 8;
        float[] fArr = this.uvs;
        return appendFrame(fArr[i2], fArr[i2 + 1], fArr[i2 + 2], fArr[i2 + 3], fArr[i2 + 4], fArr[i2 + 5], f, f2);
    }

    public float getHandleX(int i) {
        return this.uvs[(i * 8) + 6];
    }

    public float getHandleY(int i) {
        return this.uvs[(i * 8) + 7];
    }

    public void setHandle(int i, float f, float f2) {
        float[] fArr = this.uvs;
        int i2 = i * 8;
        fArr[i2 + 6] = f;
        fArr[i2 + 7] = f2;
    }

    public float getX(int i) {
        return this.uvs[i * 8] * this.currentWidth;
    }

    public float getY(int i) {
        return this.uvs[(i * 8) + 1] * this.currentHeight;
    }

    public float getWidth(int i) {
        return this.uvs[(i * 8) + 4];
    }

    public float getCodepointWidth(int i) {
        if (Character.getDirectionality(i) == 8) {
            return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        int iCharToXAdvance = charToXAdvance(i);
        return iCharToXAdvance >= 0 ? iCharToXAdvance : getWidth(charToFrame(i)) - (this.fontPadding * 2.0f);
    }

    public float getWidth() {
        return getWidth(0);
    }

    public float getHeight(int i) {
        return this.uvs[(i * 8) + 5];
    }

    public float getHeight() {
        return getHeight(0);
    }

    public float[] getUVCoords(int i, float[] fArr) {
        int i2 = i * 8;
        float[] fArr2 = this.uvs;
        fArr[0] = fArr2[i2];
        fArr[1] = fArr2[i2 + 1];
        fArr[2] = fArr2[i2 + 2];
        fArr[3] = fArr2[i2 + 3];
        return fArr;
    }

    public float[] getUVStream() {
        return this.uvs;
    }

    public int appendFrame(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        float[] fArr = this.uvs;
        if (fArr.length < (this.currentFrame * 8) + 8) {
            this.uvs = Arrays.copyOf(fArr, fArr.length * 2);
            int[] iArr = this.textureIds;
            this.textureIds = Arrays.copyOf(iArr, iArr.length * 2);
            int[] iArr2 = this.typeMasks;
            this.typeMasks = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int i = this.currentFrame;
        int i2 = i * 8;
        float[] fArr2 = this.uvs;
        fArr2[i2] = f;
        fArr2[i2 + 1] = f2;
        fArr2[i2 + 2] = f3;
        fArr2[i2 + 3] = f4;
        fArr2[i2 + 4] = f5;
        fArr2[i2 + 5] = f6;
        fArr2[i2 + 6] = f7;
        fArr2[i2 + 7] = f8;
        this.textureIds[i] = this.currentTextureId;
        this.typeMasks[i] = this.currentFrameType;
        this.currentFrame = i + 1;
        return i;
    }

    public void clear() {
        this.currentFrame = 0;
        int[] iArr = this.charToFrameTable;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        IntIntMap intIntMap = this.charToFrameMapping;
        if (intIntMap != null) {
            intIntMap.clear();
        }
        this.unknownFrame = 0;
    }

    public int addStrip(float f, float f2, float f3, float f4, float f5, float f6, int i, float f7, float f8) {
        int i2 = this.currentFrame;
        float f9 = f;
        float f10 = f2;
        for (int i3 = 0; i3 < i; i3++) {
            addFrame(f9, f10, f5, f6, f7, f8);
            f9 += f5;
            if (f9 + f5 > f + f3 + 0.01f) {
                f10 += f6;
                f9 = f;
            }
        }
        return i2;
    }

    public int addNinePatch(float f, float f2, float f3, float f4) {
        int i = this.currentFrame;
        addFrame(f, f2, f3, f4);
        float f5 = f + f3;
        addFrame(f5, f2, f3, f4);
        float f6 = f5 + f3;
        addFrame(f6, f2, f3, f4);
        float f7 = f2 + f4;
        addFrame(f, f7, f3, f4);
        addFrame(f5, f7, f3, f4);
        addFrame(f6, f7, f3, f4);
        float f8 = f7 + f4;
        addFrame(f, f8, f3, f4);
        addFrame(f5, f8, f3, f4);
        addFrame(f6, f8, f3, f4);
        return i;
    }

    public int addChar(float f, float f2, float f3, float f4, int i, int i2) {
        int iAddFrame = addFrame(f, f2, f3, f4);
        addChar(i, iAddFrame, i2);
        return iAddFrame;
    }

    public void resize(int i, float f, float f2) {
        int i2 = i * 8;
        float[] fArr = this.uvs;
        int i3 = i2 + 6;
        int i4 = i2 + 4;
        fArr[i3] = fArr[i3] * (f / fArr[i4]);
        int i5 = i2 + 7;
        int i6 = i2 + 5;
        fArr[i5] = fArr[i5] * (f2 / fArr[i6]);
        fArr[i4] = f;
        fArr[i6] = f2;
    }

    public void scale(int i, float f, float f2) {
        int i2 = i * 8;
        float[] fArr = this.uvs;
        int i3 = i2 + 4;
        fArr[i3] = fArr[i3] * f;
        int i4 = i2 + 5;
        fArr[i4] = fArr[i4] * f2;
        int i5 = i2 + 6;
        fArr[i5] = fArr[i5] * f;
        int i6 = i2 + 7;
        fArr[i6] = fArr[i6] * f2;
    }

    public float getTextWidth(String str) {
        float codepointWidth = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        if (str == null || str.isEmpty()) {
            return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        int iCharCount = 0;
        while (iCharCount < str.length()) {
            int iCodePointAt = str.codePointAt(iCharCount);
            codepointWidth += getCodepointWidth(iCodePointAt) + this.spacingX;
            iCharCount += Character.charCount(iCodePointAt);
        }
        return codepointWidth - this.spacingX;
    }

    public float getTextHeight() {
        return getHeight(0);
    }

    public static Image createSingleFrame(Texture texture) {
        Image image = new Image(texture, 1);
        image.addSingleFrame();
        return image;
    }

    public static Image createSingleFrame(Texture texture, int i, int i2) {
        Image image = new Image(texture, 1);
        image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, i, i2);
        return image;
    }

    public void setFontPadding(float f) {
        this.fontPadding = f;
    }
}
