package io.blueflower.stapel2d.gamestack;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.key.KeyMapper;
import io.blueflower.stapel2d.touch.TouchMapper;
import java.io.InputStream;
import vm2.Lua;

/* JADX INFO: loaded from: classes5.dex */
public class Stapel2DGameContext {
    public float deltaTime;
    public final Engine engine;
    public int height;
    public long lastRender;
    public boolean requestRestart;
    public final TranslationManager translationManager;
    public int width;
    public final TouchMapper touch = new TouchMapper();
    public final KeyMapper key = new KeyMapper();

    public Stapel2DGameContext(TranslationManager translationManager) {
        this.translationManager = translationManager;
        long jMaxMemory = Runtime.getRuntime().maxMemory();
        long jMin = Math.min(jMaxMemory / 8, 16777216L);
        int iMin = 2;
        int i = 1;
        while (true) {
            int i2 = i * 2;
            int i3 = iMin * 2;
            if (Engine.getMemoryConsumption(i2, Math.min(i3, Lua.MASK_NOT_Bx), true) <= jMin) {
                iMin = Math.min(i3, Lua.MASK_NOT_Bx);
                i = i2;
            } else {
                this.engine = new Engine(i, iMin, true);
                Gdx.app.debug(getClass().getSimpleName(), StringFormatter.format("Initialized stapel2d engine, buffers need %f MB, heap size is %f MB", Float.valueOf(r2.getMemoryConsumption() / 1048576.0f), Float.valueOf(jMaxMemory / 1048576.0f)));
                Gdx.app.debug(getClass().getSimpleName(), StringFormatter.format("Max quad count is %d", Integer.valueOf(i)));
                this.deltaTime = 0.001f;
                return;
            }
        }
    }

    public TouchMapper getTouch() {
        return this.touch;
    }

    public KeyMapper getKey() {
        return this.key;
    }

    public void requestRestart() {
        this.requestRestart = true;
    }

    public boolean isRequestRestart() {
        return this.requestRestart;
    }

    public TranslationManager getTranslator() {
        return this.translationManager;
    }

    public InputStream openStream(FileHandle fileHandle) {
        return fileHandle.read();
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public void onSizeChange(int i, int i2) {
        this.engine.resize(i, i2);
        this.width = i;
        this.height = i2;
    }

    public void beginFrame() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        float f = (jCurrentTimeMillis - this.lastRender) / 1000.0f;
        this.deltaTime = f;
        if (f > 1.0f || f < 0.001f) {
            this.deltaTime = 0.001f;
        }
        this.lastRender = jCurrentTimeMillis;
    }

    public void endFrame() {
        this.engine.flip();
        this.engine.endOfFrame();
    }

    public float getDeltaTime() {
        return this.deltaTime;
    }

    public float getFPS() {
        return 1.0f / this.deltaTime;
    }

    public Engine getEngine() {
        return this.engine;
    }
}
