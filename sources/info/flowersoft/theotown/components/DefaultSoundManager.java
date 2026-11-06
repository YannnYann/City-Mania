package info.flowersoft.theotown.components;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.IntMap;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.components.SoundManager;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Tree;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.SoundPlayer;
import info.flowersoft.theotown.resources.SoundType;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultSoundManager extends SoundManager {
    public boolean active;
    public final IntMap<CompoundSoundSource> idToSoundSource;
    public final float[] leftSounds;
    public final float[] rightSounds;
    public final List<CompoundSoundSource> soundSources;
    public int tiles;

    public void save(JsonWriter jsonWriter) throws IOException {
    }

    public DefaultSoundManager() {
        this.leftSounds = new float[3];
        this.rightSounds = new float[3];
        this.tiles = 0;
        this.soundSources = new ArrayList();
        this.idToSoundSource = new IntMap<>();
        this.active = false;
        addAmbientSound(0, Resources.SOUND_NATURE);
        addAmbientSound(1, Resources.SOUND_OCEAN);
        addAmbientSound(2, Resources.SOUND_TRAFFIC);
    }

    public final void addAmbientSound(final int i, int i2) {
        playLoop(i2, SoundType.AMBIENT, new SoundSource(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) { // from class: info.flowersoft.theotown.components.DefaultSoundManager.1
            @Override // info.flowersoft.theotown.components.DefaultSoundManager.SoundSource
            public boolean isValid() {
                return true;
            }

            @Override // info.flowersoft.theotown.components.DefaultSoundManager.SoundSource
            public void update() {
                this.stream.setVolume(DefaultSoundManager.this.leftSounds[i], DefaultSoundManager.this.rightSounds[i]);
            }
        });
    }

    public DefaultSoundManager(JsonReader jsonReader) throws IOException {
        this();
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
    }

    public void beforeCollection() {
        for (int i = 0; i < 3; i++) {
            this.leftSounds[i] = 0.0f;
            this.rightSounds[i] = 0.0f;
        }
        this.tiles = 0;
    }

    public void collect(Tiles tiles, int i, int i2, int i3, int i4, boolean z) {
        if (Settings.generalSoundLevel == 0 || Settings.soundAmbientLevel == 0) {
            return;
        }
        Ground ground = tiles.getGround(i, i2);
        Tree tree = tiles.getTree(i, i2);
        Road topRoad = tiles.getTopRoad(i, i2);
        if (tree != null && !z) {
            collect(i3, i4, 0, 10.0f);
        } else if (topRoad != null) {
            collect(i3, i4, 2, topRoad.trafficAmount * 40.0f);
        } else if (ground.isWater()) {
            collect(i3, i4, 1, 1.0f);
        }
        this.tiles++;
    }

    public final void collect(int i, int i2, int i3, float f) {
        float fMin = Math.min(Math.max(i / this.city.getView().getWidth(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT), 1.0f);
        if (fMin < 0.5f) {
            float[] fArr = this.leftSounds;
            fArr[i3] = fArr[i3] + f;
            float[] fArr2 = this.rightSounds;
            fArr2[i3] = fArr2[i3] + ((f * fMin) / 0.5f);
            return;
        }
        float[] fArr3 = this.leftSounds;
        fArr3[i3] = fArr3[i3] + ((1.0f - (fMin / 0.5f)) * f);
        float[] fArr4 = this.rightSounds;
        fArr4[i3] = fArr4[i3] + f;
    }

    public void afterCollection() {
        int i = 0;
        if (this.tiles == 0) {
            while (i < 3) {
                this.leftSounds[i] = 0.0f;
                this.rightSounds[i] = 0.0f;
                i++;
            }
            return;
        }
        float scale = this.city.getScale();
        while (i < 3) {
            float[] fArr = this.leftSounds;
            fArr[i] = MathUtils.clamp(((fArr[i] * scale) / this.tiles) / 4.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
            float[] fArr2 = this.rightSounds;
            fArr2[i] = MathUtils.clamp(((fArr2[i] * scale) / this.tiles) / 4.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
            i++;
        }
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public synchronized void update() {
        try {
            super.update();
            int i = 0;
            while (i < this.soundSources.size()) {
                CompoundSoundSource compoundSoundSource = this.soundSources.get(i);
                SoundPlayer.SoundStream soundStream = compoundSoundSource.mainSource.stream;
                if (soundStream == null || !soundStream.isValid()) {
                    compoundSoundSource.resume();
                }
                if (compoundSoundSource.isValid()) {
                    compoundSoundSource.update();
                } else {
                    compoundSoundSource.stop();
                    this.soundSources.remove(i);
                    this.idToSoundSource.remove(compoundSoundSource.soundId);
                    i--;
                }
                i++;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // info.flowersoft.theotown.city.components.SoundManager
    public synchronized void pause() {
        this.active = false;
        Iterator<CompoundSoundSource> it = this.soundSources.iterator();
        while (it.hasNext()) {
            it.next().pause();
        }
    }

    @Override // info.flowersoft.theotown.city.components.SoundManager
    public synchronized void resume() {
        this.active = true;
        Iterator<CompoundSoundSource> it = this.soundSources.iterator();
        while (it.hasNext()) {
            it.next().resume();
        }
    }

    public synchronized void playOnce(int i, SoundType soundType, SoundSource soundSource) {
        if (this.active) {
            soundSource.setSound(i, soundType, false);
            soundSource.resume();
        }
    }

    public synchronized void playLoop(int i, SoundType soundType, SoundSource soundSource) {
        try {
            soundSource.setSound(-1, soundType, true);
            soundSource.resume();
            if (this.idToSoundSource.containsKey(i)) {
                this.idToSoundSource.get(i).soundSources.add(soundSource);
            } else {
                CompoundSoundSource compoundSoundSource = new CompoundSoundSource(i);
                this.idToSoundSource.put(i, compoundSoundSource);
                this.soundSources.add(compoundSoundSource);
                compoundSoundSource.soundSources.add(soundSource);
                compoundSoundSource.mainSource.setSound(i, soundType, true);
                if (this.active) {
                    compoundSoundSource.resume();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static class CompoundSoundSource {
        public int soundId;
        public SoundSource mainSource = new SoundSource(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) { // from class: info.flowersoft.theotown.components.DefaultSoundManager.CompoundSoundSource.1
            @Override // info.flowersoft.theotown.components.DefaultSoundManager.SoundSource
            public float getStartRate() {
                if (!CompoundSoundSource.this.soundSources.isEmpty()) {
                    return CompoundSoundSource.this.soundSources.get(0).getStartRate();
                }
                return super.getStartRate();
            }

            @Override // info.flowersoft.theotown.components.DefaultSoundManager.SoundSource
            public void update() {
                if (this.stream == null) {
                    return;
                }
                int i = 0;
                while (i < CompoundSoundSource.this.soundSources.size()) {
                    SoundSource soundSource = CompoundSoundSource.this.soundSources.get(i);
                    if (soundSource.isValid() && soundSource.stream != null) {
                        soundSource.update();
                    } else {
                        SoundPlayer.SoundStream soundStream = soundSource.stream;
                        if (soundStream != null) {
                            soundStream.stop();
                        }
                        CompoundSoundSource.this.soundSources.remove(i);
                        i--;
                    }
                    i++;
                }
                if (!CompoundSoundSource.this.soundSources.isEmpty()) {
                    float fClamp = 1.0f;
                    float fClamp2 = 1.0f;
                    for (int i2 = 0; i2 < CompoundSoundSource.this.soundSources.size(); i2++) {
                        SoundSource soundSource2 = CompoundSoundSource.this.soundSources.get(i2);
                        SoundPlayer.SoundStream soundStream2 = soundSource2.stream;
                        if (soundStream2 != null) {
                            fClamp *= 1.0f - MathUtils.clamp(soundStream2.getVolumeLeft(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
                            fClamp2 *= 1.0f - MathUtils.clamp(soundSource2.stream.getVolumeRight(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
                        }
                    }
                    this.stream.setVolume(1.0f - fClamp, 1.0f - fClamp2);
                    return;
                }
                this.stream.stop();
            }

            @Override // info.flowersoft.theotown.components.DefaultSoundManager.SoundSource
            public boolean isValid() {
                for (int i = 0; i < CompoundSoundSource.this.soundSources.size(); i++) {
                    if (CompoundSoundSource.this.soundSources.get(i).isValid()) {
                        return true;
                    }
                }
                return false;
            }
        };
        public List<SoundSource> soundSources = new ArrayList();

        public CompoundSoundSource(int i) {
            this.soundId = i;
        }

        public void pause() {
            this.mainSource.pause();
        }

        public void resume() {
            this.mainSource.resume();
            update();
        }

        public boolean isValid() {
            return this.mainSource.isValid();
        }

        public void update() {
            this.mainSource.update();
        }

        public void stop() {
            this.mainSource.pause();
            this.soundSources.clear();
        }
    }

    public static abstract class SoundSource {
        public float initialVolume;
        public boolean loop;
        public int soundID;
        public SoundPlayer.SoundStream stream;
        public SoundType type;

        public float getStartRate() {
            return 1.0f;
        }

        public abstract boolean isValid();

        public abstract void update();

        public SoundSource(float f) {
            this.initialVolume = f;
        }

        public final void setSound(int i, SoundType soundType, boolean z) {
            this.soundID = i;
            this.type = soundType;
            this.loop = z;
        }

        public void pause() {
            SoundPlayer.SoundStream soundStream = this.stream;
            if (soundStream != null) {
                soundStream.stop();
            }
        }

        public void resume() {
            SoundPlayer.SoundStream soundStream = this.stream;
            if (soundStream != null) {
                soundStream.stop();
            }
            SoundPlayer soundPlayer = SoundPlayer.getInstance();
            int i = this.soundID;
            SoundType soundType = this.type;
            float f = this.initialVolume;
            this.stream = soundPlayer.play(i, soundType, f, f, this.loop, getStartRate());
            update();
        }
    }
}
