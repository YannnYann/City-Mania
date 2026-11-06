package com.badlogic.gdx.audio;

import com.badlogic.gdx.utils.Disposable;

/* JADX INFO: loaded from: classes.dex */
public interface Music extends Disposable {

    public interface OnCompletionListener {
        void onCompletion(Music music);
    }

    @Override // com.badlogic.gdx.utils.Disposable
    void dispose();

    boolean isPlaying();

    void play();

    void setOnCompletionListener(OnCompletionListener onCompletionListener);

    void setVolume(float f);

    void stop();
}
