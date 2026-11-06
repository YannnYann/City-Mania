package io.blueflower.stapel2d.drawing;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Pixmap;
import java.nio.Buffer;

/* JADX INFO: loaded from: classes5.dex */
public abstract class TextureSource {
    public Texture texture;

    public abstract int getHeight();

    public int getUnits() {
        return 1;
    }

    public abstract int getWidth();

    public abstract void load(Texture texture);

    public boolean postponeSetup() {
        return false;
    }

    public abstract void release(Texture texture);

    public void init(Texture texture) {
        this.texture = texture;
    }

    public void start() {
        load(this.texture);
    }

    public void upload(Buffer buffer, int i, int i2, int i3, int i4, int i5) {
        this.texture.bindUnit(i5);
        Gdx.gl20.glTexSubImage2D(3553, 0, i, i2, i3, i4, this.texture.internalFormat, 5121, buffer);
    }

    public void upload(Pixmap pixmap, int i) {
        this.texture.bindUnit(i);
        Gdx.gl20.glTexImage2D(3553, 0, this.texture.internalFormat, pixmap.getWidth(), pixmap.getHeight(), 0, pixmap.getGLFormat(), 5121, pixmap.getPixels());
    }

    public void upload(Pixmap pixmap, int i, int i2, int i3) {
        this.texture.bindUnit(i3);
        Gdx.gl20.glTexSubImage2D(3553, 0, i, i2, pixmap.getWidth(), pixmap.getHeight(), pixmap.getGLInternalFormat(), pixmap.getGLType(), pixmap.getPixels());
    }

    public void download(Engine engine, Pixmap pixmap, int i, int i2, int i3) {
        engine.flush();
        FrameBuffer framebuffer = engine.getFramebuffer();
        engine.removeFramebuffer();
        this.texture.bindUnit(i3);
        FrameBuffer frameBuffer = new FrameBuffer(this.texture, i3, pixmap.getWidth(), pixmap.getHeight());
        frameBuffer.load(0);
        frameBuffer.bind();
        Gdx.gl20.glReadPixels(i, i2, pixmap.getWidth(), pixmap.getHeight(), pixmap.getGLInternalFormat(), pixmap.getGLType(), pixmap.getPixels());
        frameBuffer.unbind();
        frameBuffer.release();
        engine.setFramebuffer(framebuffer);
    }
}
