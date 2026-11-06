package info.flowersoft.theotown.resources;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.LifecycleListener;
import com.badlogic.gdx.audio.Sound;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class SoundPlayer {
    public static SoundPlayer instance;
    public final List<Sound> loadedSounds;
    public final List<FileHandle> soundPathList;

    public SoundPlayer() {
        ArrayList arrayList = new ArrayList();
        this.soundPathList = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.loadedSounds = arrayList2;
        arrayList.add(null);
        arrayList2.add(null);
    }

    public synchronized int loadSound(FileHandle fileHandle) {
        int size;
        this.soundPathList.add(fileHandle);
        this.loadedSounds.add(null);
        size = this.soundPathList.size() - 1;
        try {
            this.loadedSounds.set(size, Gdx.audio.newSound(fileHandle));
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
        return size;
    }

    public synchronized SoundStream play(int i, SoundType soundType) {
        return play(i, soundType, 1.0f, 1.0f, false, 1.0f);
    }

    public synchronized SoundStream play(int i, SoundType soundType, float f, float f2, boolean z, float f3) {
        SoundStream soundStream;
        FileHandle fileHandle;
        float volume = soundType.getVolume();
        long jPlay = -1;
        if (i >= 0 && i < this.loadedSounds.size()) {
            Sound soundNewSound = this.loadedSounds.get(i);
            if (soundNewSound == null && (fileHandle = this.soundPathList.get(i)) != null) {
                try {
                    soundNewSound = Gdx.audio.newSound(fileHandle);
                    this.loadedSounds.set(i, soundNewSound);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (soundNewSound != null) {
                float fMax = Math.max(f, f2) * volume;
                float f4 = 1.0f;
                float f5 = -1.0f;
                float fMin = Math.min(Math.max(f > f2 ? (f2 / f) - 1.0f : 1.0f - (f / f2), -1.0f), 1.0f);
                if (f == f2) {
                    fMin = 0.0f;
                }
                if (f != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                    f4 = fMin;
                }
                if (f2 != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                    f5 = f4;
                }
                if (z) {
                    jPlay = soundNewSound.loop(fMax, f3, f5);
                } else {
                    jPlay = soundNewSound.play(fMax, f3, f5);
                }
            }
            soundStream = new SoundStream(jPlay, soundType, soundNewSound);
        } else {
            soundStream = new SoundStream(-1L, soundType, null);
        }
        soundStream.volumeLeft = f;
        soundStream.volumeRight = f2;
        return soundStream;
    }

    public synchronized void onPause() {
        for (int i = 0; i < this.loadedSounds.size(); i++) {
            Sound sound = this.loadedSounds.get(i);
            if (sound != null) {
                sound.stop();
            }
        }
    }

    public synchronized void onResume() {
    }

    public static void init() {
        if (instance != null) {
            return;
        }
        instance = new SoundPlayer();
        Gdx.app.addLifecycleListener(new LifecycleListener() { // from class: info.flowersoft.theotown.resources.SoundPlayer.1
            @Override // com.badlogic.gdx.LifecycleListener
            public void dispose() {
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void pause() {
                SoundPlayer.instance.onPause();
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void resume() {
                SoundPlayer.instance.onResume();
            }
        });
    }

    public void dispose() {
        for (Sound sound : this.loadedSounds) {
            if (sound != null) {
                sound.pause();
                sound.dispose();
            }
        }
        this.loadedSounds.clear();
        this.soundPathList.clear();
    }

    public static SoundPlayer getInstance() {
        return instance;
    }

    public class SoundStream {
        public long id;
        public long lastUpdate;
        public float rate;
        public float setPan;
        public float setVol;
        public Sound sound;
        public SoundType type;
        public float volumeLeft;
        public float volumeRight;

        public SoundStream(long j, SoundType soundType, Sound sound) {
            this.id = j;
            this.type = soundType;
            this.sound = sound;
        }

        public boolean isValid() {
            return this.id > 0;
        }

        public void setVolume(float f, float f2) {
            float volume = this.type.getVolume();
            if (this.id >= 0 && this.sound != null) {
                float fMax = Math.max(f, f2) * volume;
                float fMin = Math.min(Math.max(f > f2 ? (f2 / f) - 1.0f : 1.0f - (f / f2), -1.0f), 1.0f);
                float f3 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                float f4 = f2 != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT ? f != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT ? fMin : 1.0f : -1.0f;
                if (f != f2) {
                    f3 = f4;
                }
                if (Math.abs(this.setPan - f3) > 0.01f || Math.abs(this.setVol - fMax) > 0.01f || TimeUtils.millis() - this.lastUpdate > 10000) {
                    this.sound.setPan(this.id, f3, fMax);
                    this.setPan = f3;
                    this.setVol = fMax;
                    this.lastUpdate = TimeUtils.millis();
                }
            }
            this.volumeLeft = f;
            this.volumeRight = f2;
        }

        public void setRate(float f) {
            Sound sound;
            long j = this.id;
            if (j >= 0 && (sound = this.sound) != null) {
                sound.setPitch(j, f);
            }
            this.rate = f;
        }

        public void stop() {
            Sound sound = this.sound;
            if (sound != null) {
                long j = this.id;
                if (j >= 0) {
                    sound.stop(j);
                    this.id = 0L;
                    this.lastUpdate = 0L;
                }
            }
        }

        public float getVolumeLeft() {
            return this.volumeLeft;
        }

        public float getVolumeRight() {
            return this.volumeRight;
        }
    }
}
