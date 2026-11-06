package info.flowersoft.theotown.components.disaster;

import info.flowersoft.theotown.city.components.Catastrophe;
import info.flowersoft.theotown.city.components.Disaster;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultSoundManager;
import info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource;
import info.flowersoft.theotown.components.soundsource.BuildingSoundSource;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.SoundType;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class EarthQuakeDisaster extends Disaster {
    public final List<Quake> quakes = new ArrayList();

    @Override // info.flowersoft.theotown.city.components.Disaster
    public float getAutoProbability() {
        return 0.002f;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void save(JsonWriter jsonWriter) throws IOException {
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            jsonReader.nextName();
            jsonReader.skipValue();
        }
    }

    public final void startSound(final Quake quake) {
        ((DefaultSoundManager) this.city.getComponent(15)).playLoop(Resources.SOUND_EARTHQUAKE, SoundType.GAME, new AbstractTileSoundSource(this.city) { // from class: info.flowersoft.theotown.components.disaster.EarthQuakeDisaster.1
            @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
            public int getTileHeight() {
                return 5;
            }

            @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
            public int getTileWidth() {
                return 5;
            }

            @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
            public float getTileX() {
                return quake.x - 2;
            }

            @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
            public float getTileY() {
                return quake.y - 2;
            }

            @Override // info.flowersoft.theotown.components.DefaultSoundManager.SoundSource
            public boolean isValid() {
                return !quake.invalid;
            }
        });
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized boolean isActive() {
        return !this.quakes.isEmpty();
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized void update() {
        try {
            float absoluteDay = this.date.getAbsoluteDay() + this.date.getDayPart();
            Iterator<Quake> it = this.quakes.iterator();
            while (it.hasNext()) {
                Quake next = it.next();
                float f = (absoluteDay - next.issueDay) / 8.0f;
                float f2 = 4.0f * f;
                if (f >= 1.0f) {
                    next.invalid = true;
                    it.remove();
                } else if (f2 > next.destructionCount) {
                    destructionWave(next);
                    Quake.access$408(next);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void destructionWave(Quake quake) {
        synchronized (this.city) {
            try {
                float fSqrt = (float) Math.sqrt((quake.dx * quake.dx) + (quake.dy * quake.dy));
                int iCeil = (int) Math.ceil(fSqrt);
                for (int i = quake.x - iCeil; i <= quake.x + iCeil; i++) {
                    for (int i2 = quake.y - iCeil; i2 <= quake.y + iCeil; i2++) {
                        if (this.city.isValid(i, i2)) {
                            int i3 = i - quake.x;
                            int i4 = i2 - quake.y;
                            if (((float) Math.sqrt((i3 * i3) + (i4 * i4))) <= fSqrt) {
                                float fAbs = Math.abs((((-quake.dy) / fSqrt) * i3) + ((quake.dx / fSqrt) * i4));
                                float fNextFloat = Resources.RND.nextFloat();
                                if (fAbs <= fNextFloat * fNextFloat * fSqrt * 0.1f) {
                                    Building building = this.city.getTiles().getBuilding(i, i2);
                                    if (building != null && !building.isLocked() && building.getDraft().destroyable) {
                                        ((DefaultSoundManager) this.city.getComponent(15)).playOnce(Resources.SOUND_DESTROY, SoundType.GAME, new BuildingSoundSource(this.city, building));
                                    }
                                    this.modifier.destroy(i, i2, false, null);
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized boolean issue(int i, int i2) {
        if (isActive()) {
            return false;
        }
        Quake quake = new Quake();
        quake.issueDay = this.date.getAbsoluteDay();
        quake.x = i;
        quake.y = i2;
        Random random = Resources.RND;
        float fNextFloat = random.nextFloat() * 3.1415927f * 2.0f;
        float fNextFloat2 = (random.nextFloat() * 40.0f) + 40.0f;
        double d = fNextFloat;
        quake.dx = ((float) Math.cos(d)) * fNextFloat2;
        quake.dy = fNextFloat2 * ((float) Math.sin(d));
        quake.destructionCount = 0;
        synchronized (this.quakes) {
            this.quakes.add(quake);
            startSound(quake);
        }
        ((Catastrophe) this.city.getComponent(6)).issueQuake();
        return true;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized int[] getLocation() {
        if (!this.quakes.isEmpty()) {
            Quake quake = this.quakes.get(0);
            return new int[]{quake.x, quake.y};
        }
        return new int[]{0, 0};
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean isAutoEnabled() {
        return Settings.disasterEarthquake;
    }

    public class Quake {
        public int destructionCount;
        public float dx;
        public float dy;
        public boolean invalid;
        public long issueDay;
        public int x;
        public int y;

        public Quake() {
        }

        public static /* synthetic */ int access$408(Quake quake) {
            int i = quake.destructionCount;
            quake.destructionCount = i + 1;
            return i;
        }
    }
}
