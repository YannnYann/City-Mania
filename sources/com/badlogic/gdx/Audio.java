package com.badlogic.gdx;

import com.badlogic.gdx.audio.Music;
import com.badlogic.gdx.audio.Sound;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.Disposable;

/* JADX INFO: loaded from: classes.dex */
public interface Audio extends Disposable {
    Music newMusic(FileHandle fileHandle);

    Sound newSound(FileHandle fileHandle);
}
