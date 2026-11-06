package com.badlogic.gdx.audio;

import com.badlogic.gdx.utils.Disposable;

/* JADX INFO: loaded from: classes.dex */
public interface Sound extends Disposable {
    @Override // com.badlogic.gdx.utils.Disposable
    void dispose();

    long loop(float f, float f2, float f3);

    void pause();

    long play(float f, float f2, float f3);

    void setPan(long j, float f, float f2);

    void setPitch(long j, float f);

    void stop();

    void stop(long j);
}
