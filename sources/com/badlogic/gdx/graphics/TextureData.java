package com.badlogic.gdx.graphics;

import com.badlogic.gdx.graphics.Pixmap;

/* JADX INFO: loaded from: classes.dex */
public interface TextureData {

    public enum TextureDataType {
        Pixmap,
        Custom
    }

    void consumeCustomData(int i);

    Pixmap consumePixmap();

    boolean disposePixmap();

    Pixmap.Format getFormat();

    TextureDataType getType();

    boolean isPrepared();

    void prepare();

    boolean useMipMaps();
}
