package com.badlogic.gdx.backends.android;

import android.content.ContextWrapper;
import android.content.res.AssetManager;
import com.badlogic.gdx.Files;
import com.badlogic.gdx.files.FileHandle;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class DefaultAndroidFiles implements AndroidFiles {
    public final AssetManager assets;
    public final String externalFilesPath;
    public final String localpath;

    public DefaultAndroidFiles(AssetManager assetManager, ContextWrapper contextWrapper, boolean z) {
        this.assets = assetManager;
        String absolutePath = contextWrapper.getFilesDir().getAbsolutePath();
        if (!absolutePath.endsWith("/")) {
            absolutePath = absolutePath + "/";
        }
        this.localpath = absolutePath;
        if (z) {
            this.externalFilesPath = initExternalFilesPath(contextWrapper);
        } else {
            this.externalFilesPath = null;
        }
    }

    public String initExternalFilesPath(ContextWrapper contextWrapper) {
        File externalFilesDir = contextWrapper.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            return null;
        }
        String absolutePath = externalFilesDir.getAbsolutePath();
        if (absolutePath.endsWith("/")) {
            return absolutePath;
        }
        return absolutePath + "/";
    }

    @Override // com.badlogic.gdx.Files
    public FileHandle internal(String str) {
        return new AndroidFileHandle(this.assets, str, Files.FileType.Internal);
    }

    @Override // com.badlogic.gdx.Files
    public FileHandle absolute(String str) {
        return new AndroidFileHandle((AssetManager) null, str, Files.FileType.Absolute);
    }

    @Override // com.badlogic.gdx.Files
    public String getExternalStoragePath() {
        return this.externalFilesPath;
    }

    @Override // com.badlogic.gdx.Files
    public String getLocalStoragePath() {
        return this.localpath;
    }
}
