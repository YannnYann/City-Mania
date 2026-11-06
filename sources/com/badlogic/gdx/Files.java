package com.badlogic.gdx;

import com.badlogic.gdx.files.FileHandle;

/* JADX INFO: loaded from: classes.dex */
public interface Files {

    public enum FileType {
        Classpath,
        Internal,
        External,
        Absolute,
        Local
    }

    FileHandle absolute(String str);

    String getExternalStoragePath();

    String getLocalStoragePath();

    FileHandle internal(String str);
}
