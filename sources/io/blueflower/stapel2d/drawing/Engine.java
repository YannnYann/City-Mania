package io.blueflower.stapel2d.drawing;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.util.ArabicShaping;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import vm2.Lua;

/* JADX INFO: loaded from: classes5.dex */
public final class Engine {
    public final int MAX_ELEMENT_ARRAY_QUAD_COUNT;
    public final int MAX_QUAD_COUNT;
    public final ByteBuffer _quadCoordBuffer;
    public final ByteBuffer _vertexBuffer;
    public int additive;
    public int batchCounter;
    public float calculatedColor;
    public int calculatedHeight;
    public int calculatedWidth;
    public float clipRectX0;
    public float clipRectX1;
    public float clipRectY0;
    public float clipRectY1;
    public boolean clipping;
    public int currentContext;
    public FrameBuffer currentFramebuffer;
    public int currentOffset;
    public Shader currentShader;
    public Texture currentTexture;
    public FrameBuffer currentlyBoundFramebuffer;
    public final Shader defaultShader;
    public int drawCounter;
    public int frameCounter;
    public int height;
    public int indexBufferObject;
    public float[] otherVertexArray;
    public int typeMask;
    public final boolean useBuffering;
    public float[] vertexArray;
    public final FloatBuffer vertexBuffer;
    public int width;
    public int virtualWidth = -1;
    public int virtualHeight = -1;
    public int currentQuad = 0;
    public int vertexPtr = 0;
    public int r = 255;
    public int g = 255;
    public int b = 255;
    public int alpha = 255;
    public float scaleX = 1.0f;
    public float scaleY = 1.0f;
    public int blending = 0;
    public IntArray codepoints = new IntArray();
    public final List<CustomUniform> customUniforms = new ArrayList();

    public static long getMemoryConsumption(int i, int i2, boolean z) {
        long j = ((long) i) * 96;
        long j2 = (((long) i2) * 96) + j;
        return z ? j2 + j : j2;
    }

    public static class CustomUniform {
        public String name;
        public float[] values;

        public CustomUniform(String str) {
            this.name = str;
        }
    }

    public Engine(int i, int i2, boolean z) {
        if (i2 > 16383) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Element array is %d but has to be <= %d!", Integer.valueOf(i2), Integer.valueOf(Lua.MASK_NOT_Bx)));
        }
        this.MAX_QUAD_COUNT = i;
        this.MAX_ELEMENT_ARRAY_QUAD_COUNT = i2;
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i2 * 96);
        this._vertexBuffer = byteBufferAllocateDirect;
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        this.vertexBuffer = byteBufferAllocateDirect.asFloatBuffer();
        this.useBuffering = z;
        this.vertexArray = new float[i * 24];
        if (z) {
            this.otherVertexArray = new float[i * 24];
        }
        int i3 = i2 * 8;
        byte[] bArr = new byte[i3];
        for (int i4 = 0; i4 < i3; i4 += 8) {
            bArr[i4] = 0;
            bArr[i4 + 1] = 0;
            bArr[i4 + 2] = 0;
            bArr[i4 + 3] = -1;
            bArr[i4 + 4] = -1;
            bArr[i4 + 5] = -1;
            bArr[i4 + 6] = -1;
            bArr[i4 + 7] = 0;
        }
        ByteBuffer byteBufferAllocateDirect2 = ByteBuffer.allocateDirect(i3);
        this._quadCoordBuffer = byteBufferAllocateDirect2;
        byteBufferAllocateDirect2.put(bArr);
        byteBufferAllocateDirect2.position(0);
        Shader shader = new Shader("attribute vec2 vVertex;\nattribute vec4 vColor;\nattribute vec2 vTexCoord;\nuniform vec2 viewport;\nuniform vec2 offset;\nvarying vec4 color;\nvarying vec2 texCoord;\nvoid main() {\n    color = vec4(vColor.rgb * vColor.a, vColor.a);\n    texCoord = vTexCoord;\n    gl_Position = vec4((vVertex + offset) * viewport + vec2(-1.0, 1.0), 0.0, 1.0);\n}", "uniform sampler2D texture;\nvarying lowp vec4 color;\nvarying highp vec2 texCoord;\nvoid main() {\n    gl_FragColor = color * texture2D(texture, texCoord);\n}");
        this.defaultShader = shader;
        this.currentShader = shader;
        calculateColor();
    }

    public final float[] getUniformContainer(String str, int i) {
        CustomUniform customUniform;
        int i2 = 0;
        while (true) {
            if (i2 >= this.customUniforms.size()) {
                customUniform = null;
                break;
            }
            if (this.customUniforms.get(i2).name.equals(str)) {
                customUniform = this.customUniforms.get(i2);
                break;
            }
            i2++;
        }
        if (customUniform != null) {
            float[] fArr = customUniform.values;
            if (fArr != null && fArr.length == i) {
                return fArr;
            }
            float[] fArr2 = new float[i];
            customUniform.values = fArr2;
            return fArr2;
        }
        CustomUniform customUniform2 = new CustomUniform(str);
        float[] fArr3 = new float[i];
        customUniform2.values = fArr3;
        this.customUniforms.add(customUniform2);
        return fArr3;
    }

    public void setUniform(String str, float f) {
        getUniformContainer(str, 1)[0] = f;
    }

    public void setUniform(String str, float f, float f2) {
        float[] uniformContainer = getUniformContainer(str, 2);
        uniformContainer[0] = f;
        uniformContainer[1] = f2;
    }

    public void setUniform(String str, float f, float f2, float f3) {
        float[] uniformContainer = getUniformContainer(str, 3);
        uniformContainer[0] = f;
        uniformContainer[1] = f2;
        uniformContainer[2] = f3;
    }

    public void setUniform(String str, float f, float f2, float f3, float f4) {
        float[] uniformContainer = getUniformContainer(str, 4);
        uniformContainer[0] = f;
        uniformContainer[1] = f2;
        uniformContainer[2] = f3;
        uniformContainer[3] = f4;
    }

    public boolean removeUniform(String str) {
        for (int i = 0; i < this.customUniforms.size(); i++) {
            if (this.customUniforms.get(i).name.equals(str)) {
                this.customUniforms.remove(i);
                return true;
            }
        }
        return false;
    }

    public boolean isDrawArrayValid(int i, int i2, int i3) {
        int i4 = this.frameCounter;
        return (i == i4 || (i == i4 - 1 && this.useBuffering)) && i2 >= 0 && i3 >= 0 && i3 >= i2 && (this.currentQuad + i3) - i2 <= this.MAX_QUAD_COUNT;
    }

    public int getFrame() {
        return this.frameCounter;
    }

    public int getDrawIndex() {
        return this.currentQuad;
    }

    public void drawDrawArray(Texture texture, int i, int i2, int i3, float f, float f2) {
        flush();
        reappend(texture, i, i2, i3);
        flush(f, f2);
    }

    public void endOfFrame() {
        FrameBuffer frameBuffer = this.currentlyBoundFramebuffer;
        if (frameBuffer != null) {
            frameBuffer.unbind();
            this.currentlyBoundFramebuffer = null;
        }
    }

    public void flip() {
        flush();
        if (this.useBuffering) {
            float[] fArr = this.vertexArray;
            this.vertexArray = this.otherVertexArray;
            this.otherVertexArray = fArr;
        }
        this.frameCounter++;
        this.currentOffset = 0;
        this.currentQuad = 0;
        this.vertexPtr = 0;
    }

    public Shader getDefaultShader() {
        return this.defaultShader;
    }

    public float getScaleX() {
        return this.scaleX;
    }

    public float getScaleY() {
        return this.scaleY;
    }

    public void setScale(float f, float f2) {
        this.scaleX = f;
        this.scaleY = f2;
    }

    public void resetDrawCounter() {
        this.drawCounter = 0;
    }

    public void resetBatchCounter() {
        this.batchCounter = 0;
    }

    public int getDrawCounter() {
        return this.drawCounter;
    }

    public int getBatchCounter() {
        return this.batchCounter;
    }

    public void clear(int i, int i2, int i3) {
        clear(i, i2, i3, 255);
    }

    public void clear(int i, int i2, int i3, int i4) {
        flush();
        prepareFramebuffer();
        Gdx.gl20.glClearColor(i / 255.0f, i2 / 255.0f, i3 / 255.0f, i4 / 255.0f);
        Gdx.gl20.glClear(16384);
    }

    public void clear(Color color) {
        clear(color.r, color.g, color.b);
    }

    public final void prepareFramebuffer() {
        FrameBuffer frameBuffer = this.currentFramebuffer;
        if (frameBuffer != null) {
            if (frameBuffer == this.currentlyBoundFramebuffer && frameBuffer.currentContext == this.currentContext) {
                return;
            }
            GLUtil.checkError("a", this);
            FrameBuffer frameBuffer2 = this.currentFramebuffer;
            if (frameBuffer2.currentContext != this.currentContext) {
                loadFrameBuffer(frameBuffer2);
            }
            GLUtil.checkError("b", this);
            Texture texture = this.currentFramebuffer.texture;
            if (texture.currentContext != this.currentContext) {
                loadTexture(texture);
            }
            GLUtil.checkError("c", this);
            this.currentFramebuffer.bind();
            this.currentlyBoundFramebuffer = this.currentFramebuffer;
        }
    }

    public void setUp() {
        this.currentContext++;
        Gdx.gl20.glDisable(2884);
        Gdx.gl20.glDepthMask(false);
        Gdx.gl20.glEnable(3042);
        applyBlending();
        int i = this.MAX_ELEMENT_ARRAY_QUAD_COUNT;
        int i2 = i * 6;
        short[] sArr = new short[i2];
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i * 12);
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        ShortBuffer shortBufferAsShortBuffer = byteBufferAllocateDirect.asShortBuffer();
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < this.MAX_ELEMENT_ARRAY_QUAD_COUNT; i5++) {
            short s = (short) i4;
            sArr[i3] = s;
            sArr[i3 + 1] = (short) (i4 + 1);
            short s2 = (short) (i4 + 2);
            sArr[i3 + 2] = s2;
            sArr[i3 + 3] = s2;
            sArr[i3 + 4] = (short) (i4 + 3);
            sArr[i3 + 5] = s;
            i3 += 6;
            i4 += 4;
        }
        shortBufferAsShortBuffer.put(sArr, 0, i2);
        shortBufferAsShortBuffer.position(0);
        IntBuffer intBufferAsIntBuffer = ByteBuffer.allocateDirect(4).asIntBuffer();
        Gdx.gl20.glGenBuffers(1, intBufferAsIntBuffer);
        int i6 = intBufferAsIntBuffer.get(0);
        this.indexBufferObject = i6;
        Gdx.gl20.glBindBuffer(34963, i6);
        Gdx.gl20.glBufferData(34963, shortBufferAsShortBuffer.capacity() * 2, shortBufferAsShortBuffer, 35044);
        Gdx.gl20.glBindBuffer(34963, 0);
    }

    public final void applyBlending() {
        int i = this.blending;
        if (i == 0) {
            Gdx.gl20.glBlendFunc(1, 771);
        } else if (i == 1) {
            Gdx.gl20.glBlendFunc(1, 0);
        } else {
            if (i != 2) {
                return;
            }
            Gdx.gl20.glBlendFunc(772, 770);
        }
    }

    public void setVirtualSize(int i, int i2) {
        this.virtualWidth = i;
        this.virtualHeight = i2;
        resize(this.width, this.height);
    }

    public int getVirtualWidth() {
        return this.calculatedWidth;
    }

    public int getVirtualHeight() {
        return this.calculatedHeight;
    }

    public boolean isClippingActive() {
        return this.clipping;
    }

    public float getClipRectX() {
        return this.clipRectX0;
    }

    public float getClipRectY() {
        return this.clipRectY0;
    }

    public float getClipRectW() {
        return this.clipRectX1 - this.clipRectX0;
    }

    public float getClipRectH() {
        return this.clipRectY1 - this.clipRectY0;
    }

    public void addClipRect(float f, float f2, float f3, float f4) {
        if (!this.clipping) {
            setClipRect(f, f2, f3, f4);
            return;
        }
        this.clipRectX0 = Math.max(f, this.clipRectX0);
        this.clipRectY0 = Math.max(f2, this.clipRectY0);
        this.clipRectX1 = Math.min(f + f3, this.clipRectX1);
        this.clipRectY1 = Math.min(f2 + f4, this.clipRectY1);
    }

    public void setClipRect(float f, float f2, float f3, float f4) {
        this.clipping = true;
        this.clipRectX0 = f;
        this.clipRectY0 = f2;
        this.clipRectX1 = f + f3;
        this.clipRectY1 = f2 + f4;
    }

    public void resetClipping() {
        this.clipping = false;
    }

    public void drawImage(Image image, float f, float f2, int i) {
        float[] fArr = image.uvs;
        int i2 = i * 8;
        float f3 = fArr[i2];
        float f4 = fArr[i2 + 1];
        float f5 = fArr[i2 + 2];
        float f6 = fArr[i2 + 3];
        float f7 = fArr[i2 + 4];
        float f8 = fArr[i2 + 5];
        float f9 = fArr[i2 + 6];
        float f10 = fArr[i2 + 7];
        float f11 = f - (f9 * this.scaleX);
        float f12 = f2 - (f10 * this.scaleY);
        drawTextureRect(image.getTexture(i), f11, f12, (f7 * this.scaleX) + f11, (f8 * this.scaleY) + f12, f3, f4, f5, f6, image.getTypeMask(i));
    }

    public void drawImage(Image image, float f, float f2, float f3, float f4, float f5, float f6, int i) {
        float[] fArr = image.uvs;
        int i2 = i * 8;
        float f7 = fArr[i2];
        float f8 = fArr[i2 + 1];
        float f9 = fArr[i2 + 2];
        float f10 = fArr[i2 + 3];
        float f11 = fArr[i2 + 4];
        float f12 = fArr[i2 + 5];
        float f13 = ((f3 - (this.scaleX * f11)) * f5) + f;
        float f14 = f2 + ((f4 - (this.scaleY * f12)) * f6);
        drawTextureRect(image.getTexture(i), f13, f14, (f11 * this.scaleX) + f13, (f12 * this.scaleY) + f14, f7, f8, f9, f10, image.getTypeMask(i));
    }

    public void drawImage(Image image, float f, float f2, float f3, float f4, int i) {
        float[] fArr = image.uvs;
        int i2 = i * 8;
        float f5 = fArr[i2];
        float f6 = fArr[i2 + 1];
        float f7 = fArr[i2 + 2];
        float f8 = fArr[i2 + 3];
        float f9 = fArr[i2 + 4];
        float f10 = fArr[i2 + 5];
        float f11 = fArr[i2 + 6];
        float f12 = fArr[i2 + 7];
        float f13 = f - ((f11 * f3) / f9);
        float f14 = f2 - ((f12 * f4) / f10);
        drawTextureRect(image.getTexture(i), f13, f14, (this.scaleX * f3) + f13, (this.scaleY * f4) + f14, f5, f6, f7, f8, image.getTypeMask(i));
    }

    public void drawImageRotated(Image image, float f, float f2, int i, float f3) {
        double d = f3;
        float fCos = (float) Math.cos(d);
        float fSin = (float) Math.sin(d);
        float[] fArr = image.uvs;
        int i2 = i * 8;
        float f4 = fArr[i2];
        float f5 = fArr[i2 + 1];
        float f6 = fArr[i2 + 2];
        float f7 = fArr[i2 + 3];
        float f8 = fArr[i2 + 4];
        float f9 = fArr[i2 + 5];
        float f10 = fArr[i2 + 6];
        float f11 = fArr[i2 + 7];
        float f12 = this.scaleX;
        float f13 = f10 * f12;
        float f14 = this.scaleY;
        float f15 = f11 * f14;
        float f16 = f8 * f12;
        float f17 = f9 * f14;
        float f18 = (f - (fCos * f13)) + (fSin * f15);
        float f19 = (f2 - (f13 * fSin)) - (f15 * fCos);
        float f20 = f18 - (fSin * f17);
        float f21 = (f17 * fCos) + f19;
        float f22 = fCos * f16;
        float f23 = fSin * f16;
        drawTextureRect(image.getTexture(i), f18, f19, f20, f21, f20 + f22, f21 + f23, f22 + f18, f23 + f19, f4, f5, f6, f7, image.getTypeMask(i));
    }

    public void drawOval(Image image, float f, float f2, float f3, float f4, float f5, float f6, int i) {
        Engine engine = this;
        int i2 = i;
        float[] fArr = image.uvs;
        int i3 = i2 * 8;
        float f7 = fArr[i3];
        float f8 = fArr[i3 + 1];
        float f9 = fArr[i3 + 2];
        float f10 = fArr[i3 + 3];
        float f11 = fArr[i3 + 6];
        float f12 = fArr[i3 + 7];
        float f13 = f - (f11 * engine.scaleX);
        float f14 = f2 - (f12 * engine.scaleY);
        float f15 = f6 - f5;
        if (f15 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            int iMax = Math.max(Math.round(f15 / 10.0f), 1);
            float f16 = f15 / iMax;
            float f17 = f13 + (f3 * 0.5f);
            float f18 = f14 + (f4 * 0.5f);
            int i4 = 0;
            while (i4 < iMax) {
                float f19 = (((i4 * f16) + f5) * 3.1415927f) / 180.0f;
                int i5 = i4 + 1;
                double d = f19;
                double d2 = (((i5 * f16) + f5) * 3.1415927f) / 180.0f;
                engine.drawTextureTriangle(image.getTexture(i2), (((float) Math.cos(d)) * 0.5f * f3) + f17, (((float) Math.sin(d)) * 0.5f * f4) + f18, (((float) Math.cos(d2)) * 0.5f * f3) + f17, (((float) Math.sin(d2)) * 0.5f * f4) + f18, f17, f18, f7, f8, f9, f10, f9, f10, image.getTypeMask(i2));
                engine = this;
                i2 = i;
                iMax = iMax;
                i4 = i5;
            }
        }
    }

    public float getWidthRatio() {
        return this.calculatedWidth / this.width;
    }

    public float getHeightRatio() {
        return this.calculatedHeight / this.height;
    }

    public final void pushVertex(float f, float f2, float f3, float f4, float f5, float f6) {
        float[] fArr = this.vertexArray;
        int i = this.vertexPtr;
        fArr[i] = f;
        fArr[i + 1] = f2;
        fArr[i + 2] = f3;
        fArr[i + 3] = f4;
        fArr[i + 4] = f5;
        fArr[i + 5] = f6;
        this.vertexPtr = i + 6;
    }

    public void drawTextureTriangle(Texture texture, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, int i) {
        float f13 = this.calculatedColor;
        drawTextureTriangle(texture, f, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f13, f13, i);
    }

    public void drawTextureTriangle(Texture texture, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, int i) {
        float fMin = Math.min(Math.min(f, f3), f5);
        float fMax = Math.max(Math.max(f, f3), f5);
        float fMin2 = Math.min(Math.min(f2, f4), f6);
        float fMax2 = Math.max(Math.max(f2, f4), f6);
        if (fMin >= this.calculatedWidth || fMin2 >= this.calculatedHeight || fMax < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || fMax2 < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            return;
        }
        boolean z = this.clipping;
        if (!z || (fMin < this.clipRectX1 && fMin2 < this.clipRectY1 && fMax >= this.clipRectX0 && fMax2 >= this.clipRectY0)) {
            boolean z2 = z && (fMin < this.clipRectX0 || fMin2 < this.clipRectY0 || fMax > this.clipRectX1 || fMax2 > this.clipRectY1);
            if (this.currentQuad >= this.MAX_QUAD_COUNT) {
                flip();
            } else if (texture != this.currentTexture || z2) {
                flush();
            }
            float fIntBitsToFloat = Float.intBitsToFloat(combineTypeMasks(i));
            pushVertex(f, f2, f7, f8, f13, fIntBitsToFloat);
            pushVertex(f3, f4, f9, f10, f14, fIntBitsToFloat);
            pushVertex(f5, f6, f11, f12, f15, fIntBitsToFloat);
            pushVertex(f, f2, f7, f8, f13, fIntBitsToFloat);
            this.currentTexture = texture;
            this.currentQuad++;
            this.drawCounter++;
            if (z2) {
                clipNatively();
            }
        }
    }

    public void drawTextureRect(Texture texture, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16, int i) {
        float f17 = this.calculatedColor;
        drawTextureRect(texture, f, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f17, f17, f17, i);
    }

    public void drawTextureRect(Texture texture, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20, int i) {
        float fMin = Math.min(Math.min(f, f3), Math.min(f5, f7));
        float fMax = Math.max(Math.max(f, f3), Math.max(f5, f7));
        float fMin2 = Math.min(Math.min(f2, f4), Math.min(f6, f8));
        float fMax2 = Math.max(Math.max(f2, f4), Math.max(f6, f8));
        if (fMin >= this.calculatedWidth || fMin2 >= this.calculatedHeight || fMax < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || fMax2 < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            return;
        }
        boolean z = this.clipping;
        if (!z || (fMin < this.clipRectX1 && fMin2 < this.clipRectY1 && fMax >= this.clipRectX0 && fMax2 >= this.clipRectY0)) {
            boolean z2 = z && (fMin < this.clipRectX0 || fMin2 < this.clipRectY0 || fMax > this.clipRectX1 || fMax2 > this.clipRectY1);
            if (this.currentQuad >= this.MAX_QUAD_COUNT) {
                flip();
            } else if (this.currentTexture != texture || z2) {
                flush();
            }
            float fIntBitsToFloat = Float.intBitsToFloat(combineTypeMasks(i));
            pushVertex(f, f2, f9, f10, f17, fIntBitsToFloat);
            pushVertex(f3, f4, f11, f12, f18, fIntBitsToFloat);
            pushVertex(f5, f6, f13, f14, f19, fIntBitsToFloat);
            pushVertex(f7, f8, f15, f16, f20, fIntBitsToFloat);
            this.currentTexture = texture;
            this.currentQuad++;
            this.drawCounter++;
            if (z2) {
                clipNatively();
            }
        }
    }

    public final void clipNatively() {
        Gdx.gl20.glEnable(3089);
        GL20 gl20 = Gdx.gl20;
        int iRound = Math.round((this.clipRectX0 * this.width) / this.calculatedWidth);
        int i = this.height;
        gl20.glScissor(iRound, Math.round(i - ((this.clipRectY1 * i) / this.calculatedHeight)), Math.round(((this.clipRectX1 - this.clipRectX0) * this.width) / this.calculatedWidth), Math.round(((this.clipRectY1 - this.clipRectY0) * this.height) / this.calculatedHeight));
        flush();
        Gdx.gl20.glDisable(3089);
    }

    public void drawTextureRect(Texture texture, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, int i) {
        drawTextureRect(texture, f, f2, f3, f4, f5, f6, f7, f8, f9, f10, f9, f12, f11, f12, f11, f10, i);
    }

    public void drawTextureRect(Texture texture, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, int i) {
        float f9;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        if (Math.min(f, f3) > this.calculatedWidth || Math.min(f2, f4) > this.calculatedHeight || Math.max(f, f3) < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || Math.max(f2, f4) < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            return;
        }
        if (this.currentQuad >= this.MAX_QUAD_COUNT) {
            flip();
        } else if (this.currentTexture != texture) {
            flush();
        }
        if (this.clipping) {
            float f15 = this.clipRectX0;
            float f16 = this.clipRectY0;
            float f17 = this.clipRectX1;
            f10 = this.clipRectY1;
            if (f < f15) {
                f11 = f5 + (((f15 - f) / (f3 - f)) * (f7 - f5));
                f = f15;
            } else {
                f11 = f5;
            }
            if (f2 < f16) {
                f12 = f6 + (((f16 - f2) / (f4 - f2)) * (f8 - f6));
                f2 = f16;
            } else {
                f12 = f6;
            }
            if (f3 > f17) {
                f13 = f7 - (((f3 - f17) / (f3 - f)) * (f7 - f11));
                f9 = f17;
            } else {
                f9 = f3;
                f13 = f7;
            }
            if (f4 > f10) {
                f14 = f8 - (((f4 - f10) / (f4 - f2)) * (f8 - f12));
            } else {
                f10 = f4;
                f14 = f8;
            }
            if (f >= f9 || f2 >= f10) {
                return;
            }
        } else {
            f9 = f3;
            f10 = f4;
            f11 = f5;
            f12 = f6;
            f13 = f7;
            f14 = f8;
        }
        float fIntBitsToFloat = Float.intBitsToFloat(combineTypeMasks(i));
        float f18 = f;
        float f19 = f2;
        float f20 = f11;
        float f21 = f12;
        pushVertex(f18, f19, f20, f21, this.calculatedColor, fIntBitsToFloat);
        float f22 = f14;
        float f23 = f10;
        pushVertex(f18, f23, f20, f22, this.calculatedColor, fIntBitsToFloat);
        pushVertex(f9, f23, f13, f22, this.calculatedColor, fIntBitsToFloat);
        pushVertex(f9, f19, f13, f21, this.calculatedColor, fIntBitsToFloat);
        this.currentTexture = texture;
        this.currentQuad++;
        this.drawCounter++;
    }

    public final int combineTypeMasks(int i) {
        return i == 0 ? this.typeMask : i;
    }

    public final void reappend(Texture texture, int i, int i2, int i3) {
        int iMin = i3 - i2;
        if (this.currentQuad + iMin > this.MAX_QUAD_COUNT) {
            flip();
            iMin = Math.min(iMin, this.MAX_QUAD_COUNT);
        } else if (this.currentTexture != texture) {
            flush();
        }
        if (i == this.frameCounter) {
            float[] fArr = this.vertexArray;
            System.arraycopy(fArr, i2 * 24, fArr, this.vertexPtr, iMin * 24);
        } else {
            System.arraycopy(this.otherVertexArray, i2 * 24, this.vertexArray, this.vertexPtr, iMin * 24);
        }
        this.currentTexture = texture;
        this.vertexPtr += iMin * 24;
        this.currentQuad += iMin;
        this.drawCounter += iMin;
    }

    public void loadTextureIfDirty(Texture texture) {
        if (texture.currentContext != this.currentContext || texture.dirty) {
            loadTexture(texture);
        }
    }

    public void loadTexture(Texture texture) {
        int i = texture.currentContext;
        int i2 = this.currentContext;
        if (i == i2 || texture.setUp(i2)) {
            texture.upload();
        }
    }

    public void loadShader(Shader shader) {
        int i = shader.currentContext;
        int i2 = this.currentContext;
        if (i != i2) {
            shader.load(i2);
        }
    }

    public void loadFrameBuffer(FrameBuffer frameBuffer) {
        int i = frameBuffer.currentContext;
        int i2 = this.currentContext;
        if (i != i2) {
            Texture texture = frameBuffer.texture;
            if (texture.currentContext != i2) {
                loadTexture(texture);
            }
            frameBuffer.load(this.currentContext);
        }
    }

    public boolean isFrameBufferValid(FrameBuffer frameBuffer) {
        return frameBuffer.currentContext == this.currentContext;
    }

    public void releaseTexture(Texture texture) {
        texture.release();
    }

    public void releaseShader(Shader shader) {
        shader.release();
        if (this.currentShader == shader) {
            setShader(null);
        }
    }

    public void releaseFramebuffer(FrameBuffer frameBuffer) {
        GLUtil.checkError("release", this);
        if (this.currentFramebuffer == frameBuffer) {
            removeFramebuffer();
        }
        GLUtil.checkError("release", this);
        releaseTexture(frameBuffer.getTexture());
        frameBuffer.release();
        GLUtil.checkError("releaseFramebuffer", frameBuffer);
    }

    public void flush() {
        flush(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    }

    public final void flush(float f, float f2) {
        int i;
        int i2;
        int i3;
        int i4;
        GLUtil.checkError("flush:before", this);
        int i5 = this.width;
        if (i5 != 0 && (i = this.height) != 0 && (i2 = this.currentQuad - this.currentOffset) > 0 && this.currentShader != null) {
            this.batchCounter++;
            if (this.currentFramebuffer != null) {
                prepareFramebuffer();
                GL20 gl20 = Gdx.gl20;
                FrameBuffer frameBuffer = this.currentFramebuffer;
                gl20.glViewport(0, 0, frameBuffer.screenWidth, frameBuffer.screenHeight);
            } else {
                Gdx.gl20.glViewport(0, 0, i5, i);
            }
            Texture texture = this.currentTexture;
            if (texture.currentContext != this.currentContext || texture.dirty) {
                loadTexture(texture);
                Texture texture2 = this.currentTexture;
                if (texture2.currentContext != this.currentContext || texture2.dirty) {
                    this.currentOffset = this.currentQuad;
                    return;
                }
            }
            Shader shader = this.currentShader;
            if (shader.currentContext != this.currentContext) {
                loadShader(shader);
            }
            int i6 = this.currentShader.program;
            this.currentTexture.bind();
            Gdx.gl20.glUseProgram(i6);
            Gdx.gl20.glUniform2f(this.currentShader.resolveUniformLocation("viewport"), 2.0f / this.calculatedWidth, (-2.0f) / this.calculatedHeight);
            Gdx.gl20.glUniform2f(this.currentShader.resolveUniformLocation("offset"), f, f2);
            int iResolveUniformLocation = this.currentShader.resolveUniformLocation("texture");
            int i7 = this.currentTexture.units;
            if (i7 == 1) {
                Gdx.gl20.glUniform1i(iResolveUniformLocation, 0);
            } else {
                int[] iArr = new int[i7];
                for (int i8 = 0; i8 < this.currentTexture.units; i8++) {
                    iArr[i8] = i8;
                }
                Gdx.gl20.glUniform1iv(iResolveUniformLocation, i7, iArr, 0);
            }
            int width = this.currentTexture.getWidth();
            int height = this.currentTexture.getHeight();
            Gdx.gl20.glUniform1i(this.currentShader.resolveUniformLocation("units"), this.currentTexture.units);
            float f3 = width;
            Gdx.gl20.glUniform1f(this.currentShader.resolveUniformLocation("unit"), f3);
            float f4 = 1.0f / f3;
            Gdx.gl20.glUniform1f(this.currentShader.resolveUniformLocation("dUnit"), f4);
            float f5 = height;
            Gdx.gl20.glUniform2f(this.currentShader.resolveUniformLocation("unit2"), f3, f5);
            Gdx.gl20.glUniform2f(this.currentShader.resolveUniformLocation("dUnit2"), f4, 1.0f / f5);
            Gdx.gl20.glUniform1f(this.currentShader.resolveUniformLocation("time"), (TimeUtils.millis() % 1000000) / 1000.0f);
            if (!this.customUniforms.isEmpty()) {
                for (int i9 = 0; i9 < this.customUniforms.size(); i9++) {
                    CustomUniform customUniform = this.customUniforms.get(i9);
                    String str = customUniform.name;
                    float[] fArr = customUniform.values;
                    int iResolveUniformLocation2 = this.currentShader.resolveUniformLocation(str);
                    if (iResolveUniformLocation2 != -1) {
                        int length = fArr.length;
                        if (length == 1) {
                            Gdx.gl20.glUniform1f(iResolveUniformLocation2, fArr[0]);
                        } else if (length == 2) {
                            Gdx.gl20.glUniform2f(iResolveUniformLocation2, fArr[0], fArr[1]);
                        } else if (length == 3) {
                            Gdx.gl20.glUniform3f(iResolveUniformLocation2, fArr[0], fArr[1], fArr[2]);
                        } else if (length == 4) {
                            Gdx.gl20.glUniform4f(iResolveUniformLocation2, fArr[0], fArr[1], fArr[2], fArr[3]);
                        }
                    }
                }
            }
            int iGlGetAttribLocation = Gdx.gl20.glGetAttribLocation(i6, "vVertex");
            int iGlGetAttribLocation2 = Gdx.gl20.glGetAttribLocation(i6, "vColor");
            int iGlGetAttribLocation3 = Gdx.gl20.glGetAttribLocation(i6, "vTexCoord");
            int iGlGetAttribLocation4 = Gdx.gl20.glGetAttribLocation(i6, "vType");
            int iGlGetAttribLocation5 = Gdx.gl20.glGetAttribLocation(i6, "vQuadCoord");
            Gdx.gl20.glEnableVertexAttribArray(iGlGetAttribLocation);
            Gdx.gl20.glEnableVertexAttribArray(iGlGetAttribLocation2);
            if (iGlGetAttribLocation3 != -1) {
                Gdx.gl20.glEnableVertexAttribArray(iGlGetAttribLocation3);
            }
            if (iGlGetAttribLocation4 != -1) {
                Gdx.gl20.glEnableVertexAttribArray(iGlGetAttribLocation4);
            }
            if (iGlGetAttribLocation5 != -1) {
                Gdx.gl20.glEnableVertexAttribArray(iGlGetAttribLocation5);
            }
            Gdx.gl20.glBindBuffer(34963, this.indexBufferObject);
            this._vertexBuffer.position(0);
            int i10 = 24;
            Gdx.gl20.glVertexAttribPointer(iGlGetAttribLocation, 2, 5126, false, 24, this._vertexBuffer);
            if (iGlGetAttribLocation3 != -1) {
                this._vertexBuffer.position(8);
                i4 = iGlGetAttribLocation4;
                Gdx.gl20.glVertexAttribPointer(iGlGetAttribLocation3, 2, 5126, false, 24, this._vertexBuffer);
                i3 = iGlGetAttribLocation3;
                i10 = 24;
            } else {
                i3 = iGlGetAttribLocation3;
                i4 = iGlGetAttribLocation4;
            }
            this._vertexBuffer.position(16);
            int i11 = i10;
            Gdx.gl20.glVertexAttribPointer(iGlGetAttribLocation2, 4, 5121, true, i11, this._vertexBuffer);
            if (i4 != -1) {
                this._vertexBuffer.position(20);
                Gdx.gl20.glVertexAttribPointer(i4, 1, 5121, false, i11, this._vertexBuffer);
            }
            if (iGlGetAttribLocation5 != -1) {
                Gdx.gl20.glVertexAttribPointer(iGlGetAttribLocation5, 2, 5121, true, 0, this._quadCoordBuffer);
            }
            this._vertexBuffer.position(0);
            while (i2 > 0) {
                int iMin = Math.min(i2, this.MAX_ELEMENT_ARRAY_QUAD_COUNT);
                this.vertexBuffer.put(this.vertexArray, this.currentOffset * 24, iMin * 24);
                this.vertexBuffer.position(0);
                Gdx.gl20.glDrawElements(4, iMin * 6, 5123, 0);
                this.currentOffset += iMin;
                i2 -= iMin;
            }
            Gdx.gl20.glBindBuffer(34963, 0);
            Gdx.gl20.glDisableVertexAttribArray(iGlGetAttribLocation);
            Gdx.gl20.glDisableVertexAttribArray(iGlGetAttribLocation2);
            if (i3 != -1) {
                Gdx.gl20.glDisableVertexAttribArray(i3);
            }
            if (i4 != -1) {
                Gdx.gl20.glDisableVertexAttribArray(i4);
            }
            if (iGlGetAttribLocation5 != -1) {
                Gdx.gl20.glEnableVertexAttribArray(iGlGetAttribLocation5);
            }
        }
        this.currentOffset = this.currentQuad;
        GLUtil.checkError("flush:after", this);
    }

    public void setShader(Shader shader) {
        if (shader == null) {
            shader = this.defaultShader;
        }
        if (this.currentShader != shader) {
            flush();
            this.currentShader = shader;
            loadShader(shader);
            Gdx.gl20.glUseProgram(this.currentShader.program);
        }
    }

    public Shader getShader() {
        return this.currentShader;
    }

    public void reset() {
        this.additive = 0;
        this.alpha = 255;
        this.b = 255;
        this.g = 255;
        this.r = 255;
        calculateColor();
        setScale(1.0f, 1.0f);
    }

    public void setColor(int i, int i2, int i3) {
        if (i == this.r && i2 == this.g && i3 == this.b) {
            return;
        }
        this.r = Math.min(Math.max(i, 0), 255);
        this.g = Math.min(Math.max(i2, 0), 255);
        this.b = Math.min(Math.max(i3, 0), 255);
        calculateColor();
    }

    public void setColorAndTransparency(int i, int i2, int i3, int i4) {
        if (i == this.r && i2 == this.g && i3 == this.b && i4 == this.alpha) {
            return;
        }
        this.r = Math.min(Math.max(i, 0), 255);
        this.g = Math.min(Math.max(i2, 0), 255);
        this.b = Math.min(Math.max(i3, 0), 255);
        this.alpha = Math.min(Math.max(i4, 0), 255);
        calculateColor();
    }

    public void setColorAndTransparency(Color color) {
        setColorAndTransparency(color.r, color.g, color.b, color.a);
    }

    public void setColor(Color color) {
        if (color == null) {
            return;
        }
        setColor(color.r, color.g, color.b);
    }

    public Color getColor() {
        return new Color(this.r, this.g, this.b);
    }

    public Color getColor(Color color) {
        color.r = this.r;
        color.g = this.g;
        color.b = this.b;
        color.a = this.alpha;
        return color;
    }

    public int getRed() {
        return this.r;
    }

    public int getGreen() {
        return this.g;
    }

    public int getBlue() {
        return this.b;
    }

    public int getTransparency() {
        return this.alpha;
    }

    public void setTransparency(int i) {
        if (i != this.alpha) {
            this.alpha = Math.min(Math.max(i, 0), 255);
            calculateColor();
        }
    }

    public void setAdditive(int i) {
        if (i != this.additive) {
            this.additive = i;
            calculateColor();
        }
    }

    public int getAdditive() {
        return this.additive;
    }

    public void setType(int i) {
        int i2 = i & 255;
        int i3 = i2 | (i2 << 8);
        this.typeMask = i3 | (i3 << 16);
    }

    public int getType() {
        return this.typeMask & 255;
    }

    public void resize(int i, int i2) {
        this.width = i;
        this.height = i2;
        int i3 = this.virtualWidth;
        if (i3 > 0) {
            i = i3;
        }
        this.calculatedWidth = i;
        int i4 = this.virtualHeight;
        if (i4 > 0) {
            i2 = i4;
        }
        this.calculatedHeight = i2;
    }

    public void drawText(Font font, String str, float f, float f2) {
        drawText(font, str, f, f2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    }

    public void drawText(Font font, String str, float f, float f2, float f3, float f4, float f5, float f6) {
        Shader shader = this.currentShader;
        float f7 = this.scaleX;
        float f8 = this.scaleY;
        setShader(font.shader);
        float f9 = this.scaleX;
        float f10 = font.scale;
        this.scaleX = f9 * f10;
        this.scaleY *= f10;
        drawText(font.image, str, f, f2, f3, f4, f5, f6);
        this.scaleX = f7;
        this.scaleY = f8;
        setShader(shader);
    }

    public final boolean requiresBidi() {
        int i = 0;
        while (true) {
            IntArray intArray = this.codepoints;
            if (i >= intArray.size) {
                return false;
            }
            if (((1 << Character.getDirectionality(intArray.get(i))) & 196614) != 0) {
                return true;
            }
            i++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0065 A[PHI: r12
      0x0065: PHI (r12v1 char) = (r12v0 char), (r12v2 char), (r12v3 char) binds: [B:19:0x0052, B:22:0x005a, B:25:0x0062] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0067 A[PHI: r11
      0x0067: PHI (r11v1 char) = (r11v0 char), (r11v3 char), (r11v4 char) binds: [B:18:0x0050, B:21:0x0058, B:24:0x0060] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String applyBidiRtlAlgorithm(java.lang.String r14) {
        /*
            r13 = this;
            int r0 = r14.length()
            char[] r1 = new char[r0]
            java.text.Bidi r2 = new java.text.Bidi
            r3 = -2
            r2.<init>(r14, r3)
            boolean r3 = r2.isLeftToRight()
            if (r3 == 0) goto L13
            return r14
        L13:
            r3 = 0
        L14:
            int r4 = r2.getRunCount()
            if (r3 >= r4) goto L73
            int r4 = r2.getRunLevel(r3)
            int r5 = r2.getRunStart(r3)
            int r6 = r2.getRunLimit(r3)
            int r7 = r2.getBaseLevel()
            int r7 = r7 % 2
            r8 = 1
            if (r7 != r8) goto L32
            int r7 = r0 - r6
            goto L33
        L32:
            r7 = r5
        L33:
            r9 = r5
        L34:
            if (r9 >= r6) goto L70
            int r10 = r4 % 2
            if (r10 != 0) goto L44
            int r10 = r7 + 1
            char r11 = r14.charAt(r9)
            r1[r7] = r11
            r7 = r10
            goto L6d
        L44:
            int r10 = r5 + r6
            int r10 = r10 - r8
            int r10 = r10 - r9
            char r10 = r14.charAt(r10)
            r11 = 41
            r12 = 40
            if (r10 == r12) goto L67
            if (r10 == r11) goto L65
            r11 = 93
            r12 = 91
            if (r10 == r12) goto L67
            if (r10 == r11) goto L65
            r11 = 125(0x7d, float:1.75E-43)
            r12 = 123(0x7b, float:1.72E-43)
            if (r10 == r12) goto L67
            if (r10 == r11) goto L65
            goto L68
        L65:
            r10 = r12
            goto L68
        L67:
            r10 = r11
        L68:
            int r11 = r7 + 1
            r1[r7] = r10
            r7 = r11
        L6d:
            int r9 = r9 + 1
            goto L34
        L70:
            int r3 = r3 + 1
            goto L14
        L73:
            java.lang.String r14 = new java.lang.String
            r14.<init>(r1)
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: io.blueflower.stapel2d.drawing.Engine.applyBidiRtlAlgorithm(java.lang.String):java.lang.String");
    }

    public final void extractCodepoints(String str) {
        this.codepoints.clear();
        if (str.isEmpty()) {
            return;
        }
        int iCharCount = 0;
        while (iCharCount < str.length()) {
            int iCodePointAt = str.codePointAt(iCharCount);
            this.codepoints.add(iCodePointAt);
            iCharCount += Character.charCount(iCodePointAt);
        }
    }

    public final void drawText(Image image, String str, float f, float f2, float f3, float f4, float f5, float f6) {
        if (str.isEmpty()) {
            return;
        }
        extractCodepoints(str);
        if (requiresBidi()) {
            extractCodepoints(applyBidiRtlAlgorithm(str));
        }
        ArabicShaping.INSTANCE.transformInplace(this.codepoints);
        float height = image.getHeight(0);
        float codepointWidth = -image.spacingX;
        if (f5 != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            int i = 0;
            while (true) {
                IntArray intArray = this.codepoints;
                if (i >= intArray.size) {
                    break;
                }
                codepointWidth += image.getCodepointWidth(intArray.get(i)) + image.spacingX;
                i++;
            }
        }
        float f7 = f + (f5 * (f3 - (this.scaleX * codepointWidth)));
        float f8 = f2 + (f6 * (f4 - (this.scaleY * height)));
        int i2 = 0;
        float codepointWidth2 = 0.0f;
        float f9 = 0.0f;
        while (true) {
            IntArray intArray2 = this.codepoints;
            if (i2 >= intArray2.size) {
                return;
            }
            int i3 = intArray2.get(i2);
            boolean z = Character.getDirectionality(i3) == 8;
            if (!z) {
                f9 = 0.0f;
            }
            drawImage(image, (this.scaleX * codepointWidth2) + f7, (this.scaleY * f9) + f8, image.charToFrame(i3));
            codepointWidth2 += image.getCodepointWidth(i3) + image.spacingX;
            if (z) {
                f9 -= height / 6.0f;
            }
            i2++;
        }
    }

    public void drawNinePatch(Image image, float f, float f2, float f3, float f4, int i) {
        if (f3 <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || f4 <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            return;
        }
        int i2 = i + 3;
        int i3 = i + 6;
        float fMax = Math.max(image.getWidth(i), Math.max(image.getWidth(i2), image.getWidth(i3)));
        int i4 = i + 2;
        int i5 = i + 5;
        int i6 = i + 8;
        float fMax2 = Math.max(image.getWidth(i4), Math.max(image.getWidth(i5), image.getWidth(i6)));
        int i7 = i + 1;
        float fMax3 = Math.max(image.getHeight(i), Math.max(image.getHeight(i7), image.getHeight(i4)));
        int i8 = i + 7;
        float fMax4 = Math.max(image.getHeight(i3), Math.max(image.getHeight(i8), image.getHeight(i6)));
        float f5 = fMax + fMax2;
        float fMin = f5 > f3 ? Math.min(1.0f, f3 / f5) : 1.0f;
        float f6 = fMax3 + fMax4;
        if (f6 > f4) {
            fMin = Math.min(fMin, f4 / f6);
        }
        float f7 = fMin;
        float f8 = fMax * f7;
        float f9 = fMax2 * f7;
        float f10 = fMax3 * f7;
        float f11 = fMax4 * f7;
        float fMax5 = Math.max(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (f3 - f8) - f9);
        float fMax6 = Math.max(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (f4 - f10) - f11);
        float f12 = this.scaleX;
        float f13 = f + (f8 * f12);
        float f14 = f + ((f3 - f9) * f12);
        float f15 = this.scaleY;
        float f16 = f2 + (f10 * f15);
        drawImage(image, f, f2, image.getWidth(i) * f7, image.getHeight(i) * f7, i);
        float width = image.getWidth(i4) * f7;
        drawImage(image, f + ((f3 - width) * this.scaleX), f2, width, image.getHeight(i4) * f7, i4);
        float width2 = image.getWidth(i3) * f7;
        float height = image.getHeight(i3) * f7;
        drawImage(image, f, f2 + ((f4 - height) * this.scaleY), width2, height, i3);
        float width3 = image.getWidth(i6) * f7;
        float height2 = image.getHeight(i6) * f7;
        drawImage(image, f + ((f3 - width3) * this.scaleX), f2 + ((f4 - height2) * this.scaleY), width3, height2, i6);
        drawImage(image, f13, f2, fMax5, f10, i7);
        drawImage(image, f, f16, f8, fMax6, i2);
        drawImage(image, f14, f16, f9, fMax6, i5);
        drawImage(image, f13, f2 + ((f4 - f11) * f15), fMax5, f11, i8);
        drawImage(image, f13, f16, fMax5, fMax6, i + 4);
    }

    public void drawSparseNinePatch(Image image, float f, float f2, float f3, float f4, int i) {
        float width = image.getWidth(i);
        float height = image.getHeight(i);
        float f5 = this.scaleX;
        float f6 = f5 * width;
        float f7 = this.scaleY;
        float f8 = f7 * height;
        float f9 = f7 * f4;
        drawImage(image, f, f2, width, height, i);
        float f10 = (f + (f5 * f3)) - f6;
        drawImage(image, f10, f2, width, height, i + 2);
        float f11 = (f2 + f9) - f8;
        drawImage(image, f, f11, width, height, i + 6);
        drawImage(image, f10, f11, width, height, i + 8);
        float f12 = f + f6;
        float f13 = f3 - (width * 2.0f);
        drawImage(image, f12, f2, f13, height, i + 1);
        float f14 = f2 + f8;
        float f15 = f4 - (height * 2.0f);
        drawImage(image, f, f14, width, f15, i + 3);
        drawImage(image, f10, f14, width, f15, i + 5);
        drawImage(image, f12, f11, f13, height, i + 7);
    }

    public int[] getPixels(int[] iArr) {
        return getPixels(iArr, 0, 0, this.width, this.height);
    }

    public int[] getPixels(int[] iArr, int i, int i2, int i3, int i4) {
        flush();
        if (iArr == null) {
            iArr = new int[i3 * i4];
        }
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i3 * 4 * i4);
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        Gdx.gl20.glReadPixels(i, (this.height - i2) - i4, i3, i4, 6408, 5121, byteBufferAllocateDirect);
        byteBufferAllocateDirect.asIntBuffer().get(iArr, 0, i3 * i4);
        return iArr;
    }

    public void copyPixelsIntoTexture(Texture texture, int i, int i2, int i3, int i4) {
        flush();
        int iGlGetError = Gdx.gl20.glGetError();
        if (iGlGetError != 0) {
            throw new RuntimeException("OpenGL error: " + iGlGetError + " in " + this);
        }
        if (texture.currentContext != this.currentContext) {
            loadTexture(texture);
        }
        int iGlGetError2 = Gdx.gl20.glGetError();
        if (iGlGetError2 != 0) {
            throw new RuntimeException("OpenGL error: " + iGlGetError2 + " in " + this);
        }
        texture.bind();
        int iGlGetError3 = Gdx.gl20.glGetError();
        if (iGlGetError3 != 0) {
            throw new RuntimeException("OpenGL error: " + iGlGetError3 + " in " + this);
        }
        Gdx.gl20.glCopyTexSubImage2D(3553, 0, 0, 0, i, (this.height - i2) - i4, i3, i4);
        int iGlGetError4 = Gdx.gl20.glGetError();
        if (iGlGetError4 == 0) {
            return;
        }
        throw new RuntimeException("OpenGL error: " + iGlGetError4 + " in " + this);
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public void setBlending(int i) {
        if (i != this.blending) {
            flush();
            this.blending = i;
            applyBlending();
        }
    }

    public final void calculateColor() {
        int i = this.r;
        int i2 = this.alpha;
        int i3 = (this.g * i2) / 255;
        this.calculatedColor = Float.intBitsToFloat(((i * i2) / 255) | ((((255 - this.additive) * i2) / 255) << 24) | (((this.b * i2) / 255) << 16) | (i3 << 8));
    }

    public long getMemoryConsumption() {
        return getMemoryConsumption(this.MAX_QUAD_COUNT, this.MAX_ELEMENT_ARRAY_QUAD_COUNT, this.useBuffering);
    }

    public void setFramebuffer(FrameBuffer frameBuffer) {
        if (frameBuffer == this.currentFramebuffer) {
            return;
        }
        flush();
        FrameBuffer frameBuffer2 = this.currentlyBoundFramebuffer;
        if (frameBuffer2 != null && frameBuffer == null) {
            frameBuffer2.unbind();
            this.currentlyBoundFramebuffer = null;
        }
        this.currentFramebuffer = frameBuffer;
    }

    public void removeFramebuffer() {
        setFramebuffer(null);
    }

    public FrameBuffer getFramebuffer() {
        return this.currentFramebuffer;
    }
}
