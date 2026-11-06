package com.badlogic.gdx.backends.android;

import android.media.MediaPlayer;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.audio.Music;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class AndroidMusic implements Music, MediaPlayer.OnCompletionListener {
    public final AndroidAudio audio;
    public MediaPlayer player;
    public boolean isPrepared = true;
    public boolean wasPlaying = false;
    public float volume = 1.0f;
    public Music.OnCompletionListener onCompletionListener = null;

    public AndroidMusic(AndroidAudio androidAudio, MediaPlayer mediaPlayer) {
        this.audio = androidAudio;
        this.player = mediaPlayer;
        mediaPlayer.setOnCompletionListener(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.badlogic.gdx.audio.Music, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        MediaPlayer mediaPlayer = this.player;
        if (mediaPlayer == null) {
            return;
        }
        try {
            try {
                mediaPlayer.release();
            } catch (Throwable unused) {
                Gdx.app.log("AndroidMusic", "Error while disposing AndroidMusic instance, non-fatal");
            }
        } finally {
            this.player = null;
            this.onCompletionListener = null;
            this.audio.notifyMusicDisposed(this);
        }
    }

    @Override // com.badlogic.gdx.audio.Music
    public boolean isPlaying() {
        MediaPlayer mediaPlayer = this.player;
        if (mediaPlayer == null) {
            return false;
        }
        try {
            return mediaPlayer.isPlaying();
        } catch (IllegalStateException e) {
            Gdx.app.error("AndroidMusic", "Error while checking isPlaying", e);
            return false;
        }
    }

    public void pause() {
        MediaPlayer mediaPlayer = this.player;
        if (mediaPlayer == null) {
            return;
        }
        try {
            if (mediaPlayer.isPlaying()) {
                this.player.pause();
            }
        } catch (IllegalStateException e) {
            Gdx.app.error("AndroidMusic", "Error trying to pause music", e);
        }
        this.wasPlaying = false;
    }

    @Override // com.badlogic.gdx.audio.Music
    public void play() {
        MediaPlayer mediaPlayer = this.player;
        if (mediaPlayer == null) {
            return;
        }
        try {
            if (!this.isPrepared) {
                mediaPlayer.prepare();
                this.isPrepared = true;
            }
            this.player.start();
        } catch (IOException e) {
            e = e;
            Gdx.app.error("AndroidMusic", "Error trying to play music", e);
        } catch (IllegalStateException e2) {
            e = e2;
            Gdx.app.error("AndroidMusic", "Error trying to play music", e);
        }
    }

    @Override // com.badlogic.gdx.audio.Music
    public void setVolume(float f) {
        MediaPlayer mediaPlayer = this.player;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.setVolume(f, f);
        this.volume = f;
    }

    @Override // com.badlogic.gdx.audio.Music
    public void stop() {
        MediaPlayer mediaPlayer = this.player;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.stop();
        this.isPrepared = false;
    }

    @Override // com.badlogic.gdx.audio.Music
    public void setOnCompletionListener(Music.OnCompletionListener onCompletionListener) {
        this.onCompletionListener = onCompletionListener;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        if (this.onCompletionListener != null) {
            Gdx.app.postRunnable(new Runnable() { // from class: com.badlogic.gdx.backends.android.AndroidMusic.1
                @Override // java.lang.Runnable
                public void run() {
                    AndroidMusic androidMusic = AndroidMusic.this;
                    Music.OnCompletionListener onCompletionListener = androidMusic.onCompletionListener;
                    if (onCompletionListener != null) {
                        onCompletionListener.onCompletion(androidMusic);
                    }
                }
            });
        }
    }
}
