package com.badlogic.gdx.backends.android;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.SoundPool;
import com.badlogic.gdx.Files;
import com.badlogic.gdx.audio.Music;
import com.badlogic.gdx.audio.Sound;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.unity3d.services.core.device.MimeTypes;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DefaultAndroidAudio implements AndroidAudio {
    public final AudioManager manager;
    public final List<AndroidMusic> musics = new ArrayList();
    public final SoundPool soundPool;

    public DefaultAndroidAudio(Context context, AndroidApplicationConfiguration androidApplicationConfiguration) {
        this.soundPool = new SoundPool.Builder().setAudioAttributes(new AudioAttributes.Builder().setUsage(14).setContentType(4).build()).setMaxStreams(androidApplicationConfiguration.maxSimultaneousSounds).build();
        this.manager = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        if (context instanceof Activity) {
            ((Activity) context).setVolumeControlStream(3);
        }
    }

    @Override // com.badlogic.gdx.backends.android.AndroidAudio
    public void pause() {
        synchronized (this.musics) {
            try {
                for (AndroidMusic androidMusic : this.musics) {
                    if (androidMusic.isPlaying()) {
                        androidMusic.pause();
                        androidMusic.wasPlaying = true;
                    } else {
                        androidMusic.wasPlaying = false;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.soundPool.autoPause();
    }

    @Override // com.badlogic.gdx.backends.android.AndroidAudio
    public void resume() {
        synchronized (this.musics) {
            for (int i = 0; i < this.musics.size(); i++) {
                try {
                    if (this.musics.get(i).wasPlaying) {
                        this.musics.get(i).play();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        this.soundPool.autoResume();
    }

    @Override // com.badlogic.gdx.Audio
    public Music newMusic(FileHandle fileHandle) {
        AndroidFileHandle androidFileHandle = (AndroidFileHandle) fileHandle;
        MediaPlayer mediaPlayerCreateMediaPlayer = createMediaPlayer();
        if (androidFileHandle.type() == Files.FileType.Internal) {
            try {
                AssetFileDescriptor assetFileDescriptor = androidFileHandle.getAssetFileDescriptor();
                mediaPlayerCreateMediaPlayer.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
                assetFileDescriptor.close();
                mediaPlayerCreateMediaPlayer.prepare();
                AndroidMusic androidMusic = new AndroidMusic(this, mediaPlayerCreateMediaPlayer);
                synchronized (this.musics) {
                    this.musics.add(androidMusic);
                }
                return androidMusic;
            } catch (Exception e) {
                throw new GdxRuntimeException("Error loading audio file: " + fileHandle + "\nNote: Internal audio files must be placed in the assets directory.", e);
            }
        }
        try {
            mediaPlayerCreateMediaPlayer.setDataSource(androidFileHandle.file().getPath());
            mediaPlayerCreateMediaPlayer.prepare();
            AndroidMusic androidMusic2 = new AndroidMusic(this, mediaPlayerCreateMediaPlayer);
            synchronized (this.musics) {
                this.musics.add(androidMusic2);
            }
            return androidMusic2;
        } catch (Exception e2) {
            throw new GdxRuntimeException("Error loading audio file: " + fileHandle, e2);
        }
    }

    @Override // com.badlogic.gdx.Audio
    public Sound newSound(FileHandle fileHandle) {
        AndroidFileHandle androidFileHandle = (AndroidFileHandle) fileHandle;
        if (androidFileHandle.type() == Files.FileType.Internal) {
            try {
                AssetFileDescriptor assetFileDescriptor = androidFileHandle.getAssetFileDescriptor();
                SoundPool soundPool = this.soundPool;
                AndroidSound androidSound = new AndroidSound(soundPool, this.manager, soundPool.load(assetFileDescriptor, 1));
                assetFileDescriptor.close();
                return androidSound;
            } catch (IOException e) {
                throw new GdxRuntimeException("Error loading audio file: " + fileHandle + "\nNote: Internal audio files must be placed in the assets directory.", e);
            }
        }
        try {
            SoundPool soundPool2 = this.soundPool;
            return new AndroidSound(soundPool2, this.manager, soundPool2.load(androidFileHandle.file().getPath(), 1));
        } catch (Exception e2) {
            throw new GdxRuntimeException("Error loading audio file: " + fileHandle, e2);
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        synchronized (this.musics) {
            try {
                Iterator it = new ArrayList(this.musics).iterator();
                while (it.hasNext()) {
                    ((AndroidMusic) it.next()).dispose();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.soundPool.release();
    }

    @Override // com.badlogic.gdx.backends.android.AndroidAudio
    public void notifyMusicDisposed(AndroidMusic androidMusic) {
        synchronized (this.musics) {
            this.musics.remove(this);
        }
    }

    public MediaPlayer createMediaPlayer() {
        MediaPlayer mediaPlayer = new MediaPlayer();
        mediaPlayer.setAudioAttributes(new AudioAttributes.Builder().setContentType(2).setUsage(14).build());
        return mediaPlayer;
    }
}
