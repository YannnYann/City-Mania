package com.badlogic.gdx.backends.android;

import com.badlogic.gdx.Audio;

/* JADX INFO: loaded from: classes.dex */
public interface AndroidAudio extends Audio {
    void notifyMusicDisposed(AndroidMusic androidMusic);

    void pause();

    void resume();
}
