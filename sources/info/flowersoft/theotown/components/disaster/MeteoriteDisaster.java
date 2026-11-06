package info.flowersoft.theotown.components.disaster;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.IsoConverter;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.components.Catastrophe;
import info.flowersoft.theotown.city.components.Disaster;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Tree;
import info.flowersoft.theotown.components.DefaultCatastrophe;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultSoundManager;
import info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.SmokeDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.SoundType;
import info.flowersoft.theotown.util.SafeListAccessor;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class MeteoriteDisaster extends Disaster {
    public final List<Meteorite> meteorites = new ArrayList();
    public final AnimationDraft meteorAnimation = (AnimationDraft) Drafts.ALL.get("$animationmeteorball00");
    public final AnimationDraft fireAnimation = (AnimationDraft) Drafts.ALL.get("$animationfire04");
    public final SmokeDraft smokeDraft = (SmokeDraft) Drafts.ALL.get("$smoke03");

    @Override // info.flowersoft.theotown.city.components.Disaster
    public float getAutoProbability() {
        return 0.005f;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void prepare() {
        super.prepare();
        Iterator it = new SafeListAccessor(this.meteorites).iterator();
        while (it.hasNext()) {
            startSound((Meteorite) it.next());
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("meteorites")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    Meteorite meteorite = new Meteorite();
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String strNextName2 = jsonReader.nextName();
                        strNextName2.getClass();
                        switch (strNextName2) {
                            case "start day":
                                meteorite.startDay = jsonReader.nextLong();
                                break;
                            case "x":
                                meteorite.x = jsonReader.nextInt();
                                break;
                            case "y":
                                meteorite.y = jsonReader.nextInt();
                                break;
                            case "flight time":
                                meteorite.flightTime = jsonReader.nextInt();
                                break;
                            default:
                                jsonReader.skipValue();
                                break;
                        }
                    }
                    jsonReader.endObject();
                    this.meteorites.add(meteorite);
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("meteorites").beginArray();
        for (Meteorite meteorite : this.meteorites) {
            if (!meteorite.invalid) {
                jsonWriter.beginObject();
                jsonWriter.name("x").value(meteorite.x);
                jsonWriter.name("y").value(meteorite.y);
                jsonWriter.name("start day").value(meteorite.startDay);
                jsonWriter.name("flight time").value(meteorite.flightTime);
                jsonWriter.endObject();
            }
        }
        jsonWriter.endArray();
    }

    public final void startSound(final Meteorite meteorite) {
        ((DefaultSoundManager) this.city.getComponent(15)).playLoop(Resources.SOUND_METEORITE_FLY, SoundType.GAME, new AbstractTileSoundSource(this.city) { // from class: info.flowersoft.theotown.components.disaster.MeteoriteDisaster.1
            @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
            public int getTileHeight() {
                return 11;
            }

            @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
            public int getTileWidth() {
                return 11;
            }

            @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
            public float getTileX() {
                return meteorite.x - 5;
            }

            @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
            public float getTileY() {
                return meteorite.y - 5;
            }

            @Override // info.flowersoft.theotown.components.DefaultSoundManager.SoundSource
            public boolean isValid() {
                return !meteorite.invalid;
            }

            @Override // info.flowersoft.theotown.components.soundsource.AreaSoundSource
            public float getVolume() {
                return meteorite.alpha;
            }
        });
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized void update() {
        float absoluteDay = this.date.getAbsoluteDay() + this.date.getDayPart();
        Iterator<Meteorite> it = this.meteorites.iterator();
        while (it.hasNext()) {
            Meteorite next = it.next();
            if ((absoluteDay - next.startDay) / next.flightTime >= 1.0f) {
                onImpact(next);
                next.invalid = true;
                it.remove();
            }
        }
    }

    public final void onImpact(final Meteorite meteorite) {
        synchronized (this.city) {
            try {
                ((DefaultSoundManager) this.city.getComponent(15)).playOnce(Resources.SOUND_METEORITE_IMPACT, SoundType.GAME, new AbstractTileSoundSource(this.city) { // from class: info.flowersoft.theotown.components.disaster.MeteoriteDisaster.2
                    @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
                    public int getTileHeight() {
                        return 5;
                    }

                    @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
                    public int getTileWidth() {
                        return 5;
                    }

                    @Override // info.flowersoft.theotown.components.soundsource.AreaSoundSource
                    public float getVolume() {
                        return 1.0f;
                    }

                    @Override // info.flowersoft.theotown.components.DefaultSoundManager.SoundSource
                    public boolean isValid() {
                        return true;
                    }

                    @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
                    public float getTileX() {
                        return meteorite.x - 2;
                    }

                    @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
                    public float getTileY() {
                        return meteorite.y - 2;
                    }
                });
                Catastrophe catastrophe = (Catastrophe) this.city.getComponent(6);
                catastrophe.issueFlash();
                catastrophe.issueQuake();
                for (int i = meteorite.x - 8; i <= meteorite.x + 8; i++) {
                    for (int i2 = meteorite.y - 8; i2 <= meteorite.y + 8; i2++) {
                        float fNextFloat = (((i - meteorite.x) * (i - meteorite.x)) + ((i2 - meteorite.y) * (i2 - meteorite.y))) * ((Resources.RND.nextFloat() * 0.5f) + 0.5f);
                        if (this.city.isValid(i, i2) && fNextFloat <= 64) {
                            if (fNextFloat <= 36) {
                                onInnerImpact(i, i2);
                            } else {
                                onOuterImpact(i, i2);
                            }
                        }
                    }
                }
                int iNextInt = Resources.RND.nextInt(4);
                for (int i3 = 0; i3 < iNextInt; i3++) {
                    Random random = Resources.RND;
                    float fNextFloat2 = random.nextFloat();
                    float fNextFloat3 = (random.nextFloat() * 5.0f) + 5.0f;
                    double d = ((double) (fNextFloat2 * 2.0f)) * 3.141592653589793d;
                    int iRound = Math.round(meteorite.x + (((float) Math.cos(d)) * fNextFloat3));
                    int iRound2 = Math.round(meteorite.y + (fNextFloat3 * ((float) Math.sin(d))));
                    if (this.city.isValid(iRound, iRound2)) {
                        onSmallerImpact(iRound, iRound2);
                    }
                }
                this.modifier.tryToPlaceCrater((BuildingDraft) Drafts.ALL.get("$crater4x4"), meteorite.x - 1, meteorite.y - 1, null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void onSmallerImpact(int i, int i2) {
        int i3 = i - 1;
        if (this.city.isValid(i3, i2)) {
            onOuterImpact(i3, i2);
        }
        int i4 = i + 1;
        if (this.city.isValid(i4, i2)) {
            onOuterImpact(i4, i2);
        }
        int i5 = i2 - 1;
        if (this.city.isValid(i, i5)) {
            onOuterImpact(i, i5);
        }
        int i6 = i2 + 1;
        if (this.city.isValid(i, i6)) {
            onOuterImpact(i, i6);
        }
        this.modifier.destroy(i, i2, false, null);
        this.modifier.tryToPlaceCrater((BuildingDraft) Drafts.ALL.get("$crater1x1"), i, i2, null);
    }

    public final void onOuterImpact(int i, int i2) {
        Tiles tiles = this.city.getTiles();
        Building building = tiles.getBuilding(i, i2);
        Tree tree = tiles.getTree(i, i2);
        if (building != null) {
            ((FireDisaster) ((DefaultCatastrophe) this.city.getComponent(6)).getDisaster(FireDisaster.class)).issue(building);
        } else if (tree != null) {
            ((FireDisaster) ((DefaultCatastrophe) this.city.getComponent(6)).getDisaster(FireDisaster.class)).issue(tree);
        }
    }

    public final void onInnerImpact(int i, int i2) {
        this.modifier.destroy(i, i2, false, null);
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized void draw(Engine engine) {
        float absoluteDay = r0.getAbsoluteDay() + ((DefaultDate) this.city.getComponent(1)).getDayPart();
        Iterator<Meteorite> it = this.meteorites.iterator();
        while (it.hasNext()) {
            onDraw(it.next(), r2.flightTime - (absoluteDay - r2.startDay), engine);
        }
    }

    public final void onDraw(Meteorite meteorite, float f, Engine engine) {
        float f2 = meteorite.x;
        float f3 = meteorite.y;
        float fOriginalToRotatedX = this.city.originalToRotatedX(f2, f3) + 0.5f;
        float fOriginalToRotatedY = this.city.originalToRotatedY(f2, f3) + 0.5f;
        IsoConverter isoConverter = this.city.getIsoConverter();
        int iRound = Math.round(isoConverter.isoToAbsX(fOriginalToRotatedX, fOriginalToRotatedY));
        int iRound2 = Math.round(isoConverter.isoToAbsY(fOriginalToRotatedX, fOriginalToRotatedY) - ((isoConverter.getAbsScaleX() * 12.0f) * this.city.getTiles().getTerrainAvgHeight(meteorite.x, meteorite.y)));
        int i = this.meteorAnimation.frames[0];
        float fRound = Math.round(100 * f);
        float scaleX = engine.getScaleX();
        float f4 = fRound * scaleX;
        float scaleY = fRound * engine.getScaleY();
        engine.drawImage(Resources.IMAGE_WORLD, Math.round(f4) + iRound, iRound2 - Math.round(scaleY), i);
        int i2 = (int) fRound;
        int i3 = (i2 - (i2 % 5)) + 5;
        for (int i4 = 100; i3 < meteorite.flightTime * i4; i4 = 100) {
            float f5 = (i3 - fRound) / 5.0f;
            int i5 = i3 / 5;
            int iAbs = Math.abs(((i5 * 37) % 13) + meteorite.x);
            int[] iArr = this.smokeDraft.frames;
            engine.drawImage(Resources.IMAGE_WORLD, iRound + Math.round((r11 + f5) * scaleX), iRound2 - Math.round(((r11 + (f5 * (i5 % 2 == 0 ? 1.5f : 0.5f))) - 8.0f) * r10), iArr[iAbs % iArr.length]);
            i3 += 5;
        }
        int animationTime = ((DefaultDate) this.city.getComponent(1)).getAnimationTime();
        int[] iArr2 = this.fireAnimation.frames;
        int i6 = iArr2[(animationTime / 200) % iArr2.length];
        engine.setAdditive(255);
        engine.drawImage(Resources.IMAGE_WORLD, iRound + Math.round(f4), iRound2 - Math.round(scaleY), i6);
        engine.setAdditive(0);
        meteorite.alpha = Math.min(Math.max(1.0f - (f / meteorite.flightTime), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT), 1.0f);
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized boolean isActive() {
        return !this.meteorites.isEmpty();
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized boolean issue(int i, int i2) {
        if (!this.city.isValid(i, i2)) {
            return false;
        }
        long absoluteDay = this.date.getAbsoluteDay();
        Meteorite meteorite = new Meteorite();
        meteorite.startDay = absoluteDay;
        meteorite.x = i;
        meteorite.y = i2;
        meteorite.flightTime = 4;
        this.meteorites.add(meteorite);
        startSound(meteorite);
        return true;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized int[] getLocation() {
        if (!this.meteorites.isEmpty()) {
            Meteorite meteorite = this.meteorites.get(0);
            return new int[]{meteorite.x, meteorite.y};
        }
        return new int[]{0, 0};
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean isAutoEnabled() {
        return Settings.disasterMeteorite;
    }

    public class Meteorite {
        public float alpha;
        public int flightTime;
        public boolean invalid;
        public long startDay;
        public int x;
        public int y;

        public Meteorite() {
        }
    }
}
