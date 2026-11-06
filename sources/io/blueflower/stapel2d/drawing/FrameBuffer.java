package io.blueflower.stapel2d.drawing;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.unity3d.services.UnityAdsConstants;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class FrameBuffer {
    public static int defaultFBO;
    public Color clearColor;
    public int currentContext = -1;
    public int id;
    public int screenHeight;
    public int screenWidth;
    public Texture texture;
    public int unit;

    public FrameBuffer(Texture texture, int i, int i2, int i3) {
        this.texture = texture;
        this.unit = i;
        this.screenWidth = i2;
        this.screenHeight = i3;
    }

    public void load(int i) {
        this.currentContext = i;
        IntBuffer intBufferAsIntBuffer = ByteBuffer.allocateDirect(4).asIntBuffer();
        Gdx.gl20.glGenFramebuffers(1, intBufferAsIntBuffer);
        this.id = intBufferAsIntBuffer.get(0);
        if (Gdx.app.getType() == Application.ApplicationType.iOS && defaultFBO == 0) {
            IntBuffer intBufferAsIntBuffer2 = ByteBuffer.allocateDirect(64).order(ByteOrder.nativeOrder()).asIntBuffer();
            Gdx.gl20.glGetIntegerv(36006, intBufferAsIntBuffer2);
            defaultFBO = intBufferAsIntBuffer2.get(0);
        }
        GLUtil.checkError("framebuffer.load", this);
    }

    public void bind() {
        GLUtil.checkError("framebuffer.bind:before", this);
        Gdx.gl20.glBindFramebuffer(36160, this.id);
        GLUtil.checkError("framebuffer.bind:bind" + this.id, this);
        Gdx.gl20.glFramebufferTexture2D(36160, 36064, 3553, this.texture.ids[this.unit], 0);
        GLUtil.checkError("framebuffer.bind:tex2d", this);
        int iGlCheckFramebufferStatus = Gdx.gl20.glCheckFramebufferStatus(36160);
        if (iGlCheckFramebufferStatus != 36053) {
            throw new RuntimeException("Framebuffer not complete: 0x" + Integer.toHexString(iGlCheckFramebufferStatus) + " (" + iGlCheckFramebufferStatus + ") for buf " + this);
        }
        if (this.clearColor != null) {
            Gdx.gl20.glClearColor(r0.getRed() / 255.0f, this.clearColor.getGreen() / 255.0f, this.clearColor.getBlue() / 255.0f, this.clearColor.getAlpha() / 255.0f);
            Gdx.gl20.glClear(16384);
        }
    }

    public void unbind() {
        Gdx.gl20.glBindFramebuffer(36160, defaultFBO);
    }

    public void release() {
        this.currentContext = -1;
        IntBuffer intBufferAsIntBuffer = ByteBuffer.allocateDirect(4).asIntBuffer();
        intBufferAsIntBuffer.put(0, this.id);
        Gdx.gl20.glDeleteFramebuffers(1, intBufferAsIntBuffer);
    }

    public Texture getTexture() {
        return this.texture;
    }

    public Image getImage(int i, int i2) {
        Image image = new Image(this.texture, 1);
        image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, this.screenHeight, this.screenWidth, -r1);
        image.resize(0, i, i2);
        return image;
    }

    public static FrameBuffer createForScreen(int i, int i2) {
        return new FrameBuffer(new Texture(new EmptyTextureSource(i, i2)), 0, i, i2);
    }

    public String toString() {
        return "Framebuffer " + this.id + " (" + this.texture + "), unit:" + this.unit + ", size:" + this.screenWidth + "x" + this.screenHeight;
    }
}
