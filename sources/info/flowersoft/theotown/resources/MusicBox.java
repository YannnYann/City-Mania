package info.flowersoft.theotown.resources;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.LifecycleListener;
import com.badlogic.gdx.Preferences;
import com.badlogic.gdx.audio.Music;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.util.SSP;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.ProbabilitySelector;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class MusicBox {
    public static MusicBox instance;
    public final List<MusicFile> files = new ArrayList();
    public final Set<String> disabledMusicIds = new HashSet();
    public final Map<String, Type> musicTypesById = new HashMap();
    public int currentIndex = -1;
    public Music currentMusic = null;
    public Type currentType = null;
    public boolean paused = false;

    public static class MusicFile {
        public final Type defaultType;
        public final String displayName;
        public final FileHandle file;
        public final String id;
        public long lastPlayedMS = 0;

        public MusicFile(String str, String str2, Type type, FileHandle fileHandle) {
            this.id = str;
            this.displayName = str2;
            this.defaultType = type;
            this.file = fileHandle;
        }
    }

    public enum Type {
        GAME(2),
        ACTION(3);

        public final int legacyIndex;

        Type(int i) {
            this.legacyIndex = i;
        }

        public static Type resolveLegacy(int i) {
            if (i < 0) {
                return null;
            }
            for (Type type : values()) {
                if (type.legacyIndex == i) {
                    return type;
                }
            }
            return null;
        }
    }

    public void loadSettings() {
        this.disabledMusicIds.clear();
        this.musicTypesById.clear();
        Preferences preferences = Gdx.app.getPreferences(SSP.migratePrefFile("music"));
        try {
            JSONArray jSONArray = new JSONArray(preferences.getString("disabled ids", "[]"));
            for (int i = 0; i < jSONArray.length(); i++) {
                this.disabledMusicIds.add(jSONArray.getString(i));
            }
            JSONObject jSONObject = new JSONObject(preferences.getString("types by id", "{}"));
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Type typeResolveLegacy = Type.resolveLegacy(jSONObject.getInt(next));
                if (typeResolveLegacy != null) {
                    this.musicTypesById.put(next, typeResolveLegacy);
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public void saveSettings() {
        Preferences preferences = Gdx.app.getPreferences(SSP.migratePrefFile("music"));
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = this.disabledMusicIds.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next());
        }
        preferences.putString("disabled ids", jSONArray.toString());
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, Type> entry : this.musicTypesById.entrySet()) {
            try {
                jSONObject.put(entry.getKey(), entry.getValue().legacyIndex);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        preferences.putString("types by id", jSONObject.toString());
        preferences.flush();
    }

    public synchronized boolean isPlaying() {
        try {
            try {
                Music music = this.currentMusic;
                if (music != null && (!music.isPlaying() || this.currentIndex < 0)) {
                    Music music2 = this.currentMusic;
                    if (music2 != null) {
                        music2.stop();
                        this.currentMusic.dispose();
                        this.currentMusic = null;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                this.currentMusic = null;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.currentMusic != null;
    }

    public synchronized void selectType(Type type) {
        try {
            if (type != this.currentType || !isPlaying()) {
                this.currentType = type;
                if (isPlaying() && getCurrentType(this.currentIndex) == type) {
                } else {
                    changeMusic();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized int getCurrentIndex() {
        return this.currentIndex;
    }

    public synchronized void addMusic(String str, String str2, Type type, FileHandle fileHandle) {
        this.files.add(new MusicFile(str, str2, type, fileHandle));
    }

    public synchronized void removeAt(int i) {
        try {
            int i2 = this.currentIndex;
            if (i2 == i) {
                stopTape();
            } else if (i2 > i) {
                this.currentIndex = i2 - 1;
            }
            this.disabledMusicIds.remove(this.files.remove(i).id);
            saveSettings();
        } catch (Throwable th) {
            throw th;
        }
    }

    public int size() {
        return this.files.size();
    }

    public boolean isReady(int i) {
        MusicFile musicFile = this.files.get(i);
        return musicFile.file.exists() && musicFile.file.length() != 0;
    }

    public boolean isActive(int i) {
        return !this.disabledMusicIds.contains(this.files.get(i).id);
    }

    public void setActive(int i, boolean z) {
        if (z) {
            this.disabledMusicIds.remove(this.files.get(i).id);
        } else {
            this.disabledMusicIds.add(this.files.get(i).id);
        }
    }

    public String getId(int i) {
        return this.files.get(i).id;
    }

    public String getDisplayName(int i) {
        return this.files.get(i).displayName;
    }

    public Type getDefaultType(int i) {
        return this.files.get(i).defaultType;
    }

    public Type getCurrentType(int i) {
        Type type = this.musicTypesById.get(this.files.get(i).id);
        return type != null ? type : getDefaultType(i);
    }

    public void setCurrentType(int i, Type type) {
        if (type == getDefaultType(i)) {
            this.musicTypesById.remove(this.files.get(i).id);
        } else {
            this.musicTypesById.put(this.files.get(i).id, type);
        }
    }

    public FileHandle getFile(int i) {
        return this.files.get(i).file;
    }

    public final float getVolume() {
        return (Settings.generalSoundLevel * Settings.musicLevel) / 10000.0f;
    }

    public synchronized void update() {
        try {
            if (this.paused) {
                return;
            }
            float volume = getVolume();
            if (!isPlaying() && volume > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                changeMusic();
            } else if (isPlaying() && volume == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                this.currentMusic.stop();
                this.currentMusic.dispose();
                this.currentMusic = null;
            } else if (isPlaying()) {
                this.currentMusic.setVolume(volume);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void changeMusic() {
        if (this.paused) {
            return;
        }
        if (this.currentType == null) {
            return;
        }
        if (getVolume() <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            return;
        }
        playTape(getNextTape());
    }

    public synchronized void stopTape() {
        Music music = this.currentMusic;
        if (music != null) {
            music.stop();
            this.currentMusic.dispose();
            this.currentMusic = null;
        }
    }

    public synchronized void playTape(int i) {
        if (i >= 0) {
            if (i < this.files.size()) {
                stopTape();
                if (isReady(i)) {
                    float volume = getVolume();
                    if (volume == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                        return;
                    }
                    this.currentIndex = -1;
                    this.currentMusic = null;
                    MusicFile musicFile = this.files.get(i);
                    musicFile.lastPlayedMS = TimeUtils.millis();
                    try {
                        Music musicNewMusic = Gdx.audio.newMusic(musicFile.file);
                        if (musicNewMusic == null) {
                            return;
                        }
                        musicNewMusic.setVolume(volume);
                        musicNewMusic.setOnCompletionListener(new Music.OnCompletionListener() { // from class: info.flowersoft.theotown.resources.MusicBox$$ExternalSyntheticLambda0
                            @Override // com.badlogic.gdx.audio.Music.OnCompletionListener
                            public final void onCompletion(Music music) {
                                this.f$0.changeMusic();
                            }
                        });
                        try {
                            musicNewMusic.play();
                            this.currentIndex = i;
                            this.currentMusic = musicNewMusic;
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    } catch (GdxRuntimeException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
    }

    public final int getNextTape() {
        ProbabilitySelector probabilitySelector = new ProbabilitySelector();
        long jMillis = TimeUtils.millis();
        for (int i = 0; i < this.files.size(); i++) {
            if (getCurrentType(i) == this.currentType && isReady(i) && isActive(i)) {
                probabilitySelector.insert(Integer.valueOf(i), (int) MathUtils.clamp((jMillis - this.files.get(i).lastPlayedMS) / 1000, 0L, 3600));
            }
        }
        if (probabilitySelector.hasResult()) {
            return ((Integer) probabilitySelector.getResult()).intValue();
        }
        return -1;
    }

    public synchronized void onPause() {
        if (Gdx.app.getType() == Application.ApplicationType.Desktop) {
            return;
        }
        this.paused = true;
        Music music = this.currentMusic;
        if (music != null) {
            music.stop();
            this.currentMusic.dispose();
            this.currentMusic = null;
        }
    }

    public synchronized void onResume() {
        this.paused = false;
    }

    public static MusicBox getInstance() {
        return instance;
    }

    public static void init() {
        if (instance != null) {
            return;
        }
        instance = new MusicBox();
        Gdx.app.addLifecycleListener(new LifecycleListener() { // from class: info.flowersoft.theotown.resources.MusicBox.1
            @Override // com.badlogic.gdx.LifecycleListener
            public void dispose() {
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void pause() {
                MusicBox.instance.onPause();
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void resume() {
                MusicBox.instance.onResume();
            }
        });
    }

    public void dispose() {
        Music music = this.currentMusic;
        if (music != null) {
            music.stop();
            this.currentMusic.dispose();
            this.currentMusic = null;
        }
        this.files.clear();
        this.disabledMusicIds.clear();
        this.currentIndex = -1;
        this.currentMusic = null;
        this.currentType = null;
        this.paused = false;
    }
}
