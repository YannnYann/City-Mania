package com.badlogic.gdx.backends.android;

import android.opengl.GLES30;
import com.badlogic.gdx.graphics.GL30;
import java.nio.Buffer;

/* JADX INFO: loaded from: classes.dex */
public class AndroidGL30 extends AndroidGL20 implements GL30 {
    @Override // com.badlogic.gdx.graphics.GL30
    public void glTexImage3D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, Buffer buffer) {
        if (buffer == null) {
            GLES30.glTexImage3D(i, i2, i3, i4, i5, i6, i7, i8, i9, 0);
        } else {
            GLES30.glTexImage3D(i, i2, i3, i4, i5, i6, i7, i8, i9, buffer);
        }
    }
}
