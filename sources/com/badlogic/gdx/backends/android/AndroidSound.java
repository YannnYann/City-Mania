package com.badlogic.gdx.backends.android;

import android.media.AudioManager;
import android.media.SoundPool;
import com.badlogic.gdx.audio.Sound;
import com.badlogic.gdx.utils.IntArray;
import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidSound implements Sound {
    public final AudioManager manager;
    public final int soundId;
    public final SoundPool soundPool;
    public final IntArray streamIds = new IntArray(8);

    public AndroidSound(SoundPool soundPool, AudioManager audioManager, int i) {
        this.soundPool = soundPool;
        this.manager = audioManager;
        this.soundId = i;
    }

    @Override // com.badlogic.gdx.audio.Sound, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.soundPool.unload(this.soundId);
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void stop() {
        int i = this.streamIds.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.soundPool.stop(this.streamIds.get(i2));
        }
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void stop(long j) {
        this.soundPool.stop((int) j);
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void pause() {
        this.soundPool.autoPause();
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void setPitch(long j, float f) {
        this.soundPool.setRate((int) j, f);
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void setPan(long j, float f, float f2) {
        float fAbs;
        if (f < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            fAbs = (1.0f - Math.abs(f)) * f2;
        } else if (f > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            fAbs = f2;
            f2 = (1.0f - Math.abs(f)) * f2;
        } else {
            fAbs = f2;
        }
        this.soundPool.setVolume((int) j, f2, fAbs);
    }

    @Override // com.badlogic.gdx.audio.Sound
    public long play(float f, float f2, float f3) {
        float fAbs;
        float fAbs2;
        IntArray intArray = this.streamIds;
        if (intArray.size == 8) {
            intArray.pop();
        }
        if (f3 < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            fAbs = f;
            fAbs2 = (1.0f - Math.abs(f3)) * f;
        } else if (f3 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            fAbs2 = f;
            fAbs = (1.0f - Math.abs(f3)) * f;
        } else {
            fAbs = f;
            fAbs2 = fAbs;
        }
        int iPlay = this.soundPool.play(this.soundId, fAbs, fAbs2, 1, 0, f2);
        if (iPlay == 0) {
            return -1L;
        }
        this.streamIds.insert(0, iPlay);
        return iPlay;
    }

    @Override // com.badlogic.gdx.audio.Sound
    public long loop(float f, float f2, float f3) {
        float fAbs;
        float fAbs2;
        IntArray intArray = this.streamIds;
        if (intArray.size == 8) {
            intArray.pop();
        }
        if (f3 < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            fAbs = f;
            fAbs2 = (1.0f - Math.abs(f3)) * f;
        } else if (f3 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            fAbs2 = f;
            fAbs = (1.0f - Math.abs(f3)) * f;
        } else {
            fAbs = f;
            fAbs2 = fAbs;
        }
        int iPlay = this.soundPool.play(this.soundId, fAbs, fAbs2, 2, -1, f2);
        if (iPlay == 0) {
            return -1L;
        }
        this.streamIds.insert(0, iPlay);
        return iPlay;
    }
}
