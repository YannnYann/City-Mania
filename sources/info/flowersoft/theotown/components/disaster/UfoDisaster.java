package info.flowersoft.theotown.components.disaster;

import com.ironsource.C3522b4;
import com.ironsource.R6;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.BuildingList;
import info.flowersoft.theotown.city.IsoConverter;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.components.Catastrophe;
import info.flowersoft.theotown.city.components.Disaster;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultCatastrophe;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultSoundManager;
import info.flowersoft.theotown.components.soundsource.TileSoundSource;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.SoundType;
import info.flowersoft.theotown.util.Saveable;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class UfoDisaster extends Disaster {
    public int animationTime;
    public Long currentDay;
    public float dayPart;
    public int timeDelta;
    public final List<Ufo> ufos = new ArrayList();
    public final List<Rocket> rockets = new ArrayList();
    public final List<Explosion> explosions = new ArrayList();
    public final AnimationDraft ufoAnimation = (AnimationDraft) Drafts.ALL.get("$ufo00");
    public final AnimationDraft beamAnimation = (AnimationDraft) Drafts.ALL.get("$ufo_beam00");
    public final AnimationDraft dustAnimation = (AnimationDraft) Drafts.ALL.get("$animationtornadodirt00");
    public final AnimationDraft lightAnimation = (AnimationDraft) Drafts.ALL.get("$ufo_light00");
    public final BuildingDraft craterDraft = (BuildingDraft) Drafts.ALL.get("$ufo_crater00");
    public final AnimationDraft explosionAnimation = (AnimationDraft) Drafts.ALL.get("$animexplosion00");
    public final AnimationDraft rocketAnimation = (AnimationDraft) Drafts.ALL.get("$mlty_rocket00");

    @Override // info.flowersoft.theotown.city.components.Disaster
    public float getAutoProbability() {
        return 0.001f;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void prepare() {
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("ufos")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginObject();
                    Ufo ufo = new Ufo();
                    ufo.load(jsonReader);
                    this.ufos.add(ufo);
                    jsonReader.endObject();
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("ufos").beginArray();
        for (int i = 0; i < this.ufos.size(); i++) {
            jsonWriter.beginObject();
            this.ufos.get(i).save(jsonWriter);
            jsonWriter.endObject();
        }
        jsonWriter.endArray();
    }

    public final void fetchTime() {
        DefaultDate defaultDate = (DefaultDate) this.city.getComponent(1);
        this.currentDay = Long.valueOf(defaultDate.getAbsoluteDay());
        this.dayPart = defaultDate.getDayPart();
        this.animationTime = defaultDate.getAnimationTime();
        this.timeDelta = defaultDate.getAnimationTimeDelta();
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized void update() {
        try {
            fetchTime();
            int i = 0;
            int i2 = 0;
            while (i2 < this.ufos.size()) {
                Ufo ufo = this.ufos.get(i2);
                updateUfo(ufo);
                if (ufo.invalid) {
                    this.ufos.remove(i2);
                    i2--;
                }
                i2++;
            }
            int i3 = 0;
            while (i3 < this.rockets.size()) {
                if (this.rockets.get(i3).invalid) {
                    this.rockets.remove(i3);
                    i3--;
                }
                i3++;
            }
            while (i < this.explosions.size()) {
                if (this.explosions.get(i).invalid) {
                    this.explosions.remove(i);
                    i--;
                }
                i++;
            }
            Collections.sort(this.ufos, new Comparator<Ufo>() { // from class: info.flowersoft.theotown.components.disaster.UfoDisaster.1
                @Override // java.util.Comparator
                public int compare(Ufo ufo2, Ufo ufo3) {
                    float f = ufo2.x;
                    float f2 = ufo2.y;
                    float fOriginalToRotatedX = UfoDisaster.this.city.originalToRotatedX(f, f2);
                    float fOriginalToRotatedY = UfoDisaster.this.city.originalToRotatedY(f, f2);
                    float f3 = ufo3.x;
                    float f4 = ufo3.y;
                    return Math.round(Math.signum(((fOriginalToRotatedX - fOriginalToRotatedY) - UfoDisaster.this.city.originalToRotatedX(f3, f4)) + UfoDisaster.this.city.originalToRotatedY(f3, f4)));
                }
            });
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void updateUfo(Ufo ufo) {
        int i = ufo.mode;
        if (i != 2) {
            if (i == 4 && this.currentDay.longValue() - ufo.startDay >= 4) {
                createCrater(ufo);
                ufo.invalid = true;
                return;
            }
            return;
        }
        if (this.currentDay.longValue() - ufo.startDay >= 6) {
            onDestroy(ufo);
        }
        if (this.currentDay.longValue() - ufo.startDay >= 7) {
            Ufo.access$908(ufo);
            if (ufo.attacks >= 3 || !selectTarget(ufo)) {
                ufo.mode = 3;
                ufo.startDay = this.currentDay.longValue();
            } else {
                ufo.mode = 1;
                ufo.startDay = this.currentDay.longValue();
            }
        }
    }

    public final void createCrater(Ufo ufo) {
        ((Catastrophe) this.city.getComponent(6)).issueQuake();
        this.modifier.tryToPlaceCrater(this.craterDraft, ((int) Math.floor(ufo.x)) - 3, ((int) Math.floor(ufo.y)) - 3, null);
    }

    public final boolean selectTarget(Ufo ufo) {
        BuildingList buildings = this.city.getBuildings();
        if (buildings.isEmpty()) {
            return false;
        }
        try {
            Building building = buildings.get(Resources.RND.nextInt(buildings.size()));
            ufo.startX = ufo.x;
            ufo.startY = ufo.y;
            ufo.targetX = building.getX() + (building.getWidth() / 2.0f);
            ufo.targetY = building.getY() + (building.getHeight() / 2.0f);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public final void onDestroy(Ufo ufo) {
        int i;
        Tiles tiles = this.city.getTiles();
        int iRound = Math.round(ufo.x);
        int iRound2 = Math.round(ufo.y);
        int i2 = iRound2 - 5;
        int iMax = Math.max(i2, 0);
        while (true) {
            i = iRound2 + 5;
            if (iMax > Math.min(i, this.city.getHeight() - 1)) {
                break;
            }
            for (int iMax2 = Math.max(iRound - 5, 0); iMax2 <= Math.min(iRound + 5, this.city.getWidth() - 1); iMax2++) {
                int i3 = iMax2 - iRound;
                int i4 = iMax - iRound2;
                if ((i3 * i3) + (i4 * i4) <= 9) {
                    this.modifier.destroy(iMax2, iMax, false, null);
                }
            }
            iMax++;
        }
        for (int iMax3 = Math.max(i2, 0); iMax3 <= Math.min(i, this.city.getHeight() - 1); iMax3++) {
            for (int iMax4 = Math.max(iRound - 5, 0); iMax4 <= Math.min(iRound + 5, this.city.getWidth() - 1); iMax4++) {
                int i5 = iMax4 - iRound;
                int i6 = iMax3 - iRound2;
                int i7 = (i5 * i5) + (i6 * i6);
                Building building = tiles.getBuilding(iMax4, iMax3);
                if (i7 <= 25 && building != null) {
                    ((FireDisaster) ((DefaultCatastrophe) this.city.getComponent(6)).getDisaster(FireDisaster.class)).issue(building);
                }
            }
        }
    }

    public void addRocket(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        Rocket rocket = new Rocket();
        rocket.x = f;
        rocket.y = f2;
        rocket.z = f3;
        rocket.speedX = f4;
        rocket.speedY = f5;
        rocket.speedZ = f6;
        rocket.targetX = f7;
        rocket.targetY = f8;
        rocket.targetZ = f9;
        rocket.startDay = ((DefaultDate) this.city.getComponent(1)).getAbsoluteDay();
        this.rockets.add(rocket);
    }

    public Ufo getUfoAt(float f, float f2) {
        IsoConverter isoConverter = this.city.getIsoConverter();
        for (int i = 0; i < this.ufos.size(); i++) {
            Ufo ufo = this.ufos.get(i);
            if (ufo.mode == 2 || ufo.mode == 1) {
                float f3 = ufo.x;
                float f4 = ufo.y;
                float absScaleY = isoConverter.getAbsScaleY();
                float absScaleY2 = isoConverter.getAbsScaleY();
                float fOriginalToRotatedX = this.city.originalToRotatedX(f3, f4);
                float fOriginalToRotatedY = this.city.originalToRotatedY(f3, f4);
                float fIsoToAbsX = (f - isoConverter.isoToAbsX(fOriginalToRotatedX, fOriginalToRotatedY)) / absScaleY;
                float fIsoToAbsY = ((f2 - (isoConverter.isoToAbsY(fOriginalToRotatedX, fOriginalToRotatedY) - (ufo.height * absScaleY2))) * 2.0f) / absScaleY2;
                if (((float) Math.sqrt((fIsoToAbsX * fIsoToAbsX) + (fIsoToAbsY * fIsoToAbsY))) <= 80.0f) {
                    return ufo;
                }
            }
        }
        return null;
    }

    public final void addUfo(float f, float f2) {
        final Ufo ufo = new Ufo();
        ufo.height = (this.city.getTiles().getTerrainAvgHeight((int) f, (int) f2) * 12.0f) + 256.0f;
        ufo.x = f;
        ufo.y = f2;
        ufo.mode = 0;
        ufo.startDay = ((DefaultDate) this.city.getComponent(1)).getAbsoluteDay();
        this.ufos.add(ufo);
        ((DefaultSoundManager) this.city.getComponent(15)).playLoop(Resources.SOUND_UFO_AMBIENT, SoundType.GAME, new TileSoundSource(this.city, (int) ufo.x, (int) ufo.y) { // from class: info.flowersoft.theotown.components.disaster.UfoDisaster.2
            @Override // info.flowersoft.theotown.components.soundsource.TileSoundSource, info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
            public int getTileHeight() {
                return 3;
            }

            @Override // info.flowersoft.theotown.components.soundsource.TileSoundSource, info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
            public int getTileWidth() {
                return 3;
            }

            @Override // info.flowersoft.theotown.components.soundsource.TileSoundSource, info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
            public float getTileX() {
                return ufo.x - 1.0f;
            }

            @Override // info.flowersoft.theotown.components.soundsource.TileSoundSource, info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
            public float getTileY() {
                return ufo.y - 1.0f;
            }

            @Override // info.flowersoft.theotown.components.soundsource.TileSoundSource, info.flowersoft.theotown.components.DefaultSoundManager.SoundSource
            public boolean isValid() {
                return ufo.mode < 4;
            }
        });
    }

    public final void addExplosion(float f, float f2, float f3) {
        Explosion explosion = new Explosion();
        explosion.x = f;
        explosion.y = f2;
        explosion.z = f3;
        explosion.animationStart = this.animationTime;
        this.explosions.add(explosion);
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized boolean isActive() {
        return !this.ufos.isEmpty();
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized boolean issue(int i, int i2) {
        Ufo ufo = null;
        for (int i3 = 0; i3 < this.ufos.size(); i3++) {
            try {
                if (this.ufos.get(i3).mode == 2 || this.ufos.get(i3).mode == 1) {
                    ufo = this.ufos.get(i3);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (ufo != null) {
            fetchTime();
            ufo.mode = 1;
            ufo.startX = ufo.x;
            ufo.startY = ufo.y;
            ufo.targetX = i;
            ufo.targetY = i2;
            ufo.startDay = this.currentDay.longValue();
        } else {
            addUfo(i + 0.5f, i2 + 0.5f);
        }
        return true;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized int[] getLocation() {
        if (this.ufos.isEmpty()) {
            return null;
        }
        Ufo ufo = this.ufos.get(0);
        return new int[]{Math.round(ufo.x), Math.round(ufo.y)};
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean isAutoEnabled() {
        return Settings.disasterUfo;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void draw(Engine engine) {
        fetchTime();
        for (int i = 0; i < this.rockets.size(); i++) {
            Rocket rocket = this.rockets.get(i);
            if (!rocket.invalid) {
                updateRocket(rocket);
                drawRocket(rocket, engine);
            }
        }
        for (int i2 = 0; i2 < this.ufos.size(); i2++) {
            Ufo ufo = this.ufos.get(i2);
            if (!ufo.invalid) {
                drawUfo(ufo, engine);
            }
        }
        for (int i3 = 0; i3 < this.explosions.size(); i3++) {
            Explosion explosion = this.explosions.get(i3);
            if (!explosion.invalid) {
                drawExplosion(explosion, engine);
            }
        }
    }

    public final void drawRocket(Rocket rocket, Engine engine) {
        engine.setColor(Colors.WHITE);
        IsoConverter isoConverter = this.city.getIsoConverter();
        float f = rocket.x;
        float f2 = rocket.y;
        isoConverter.getAbsScaleX();
        float absScaleY = isoConverter.getAbsScaleY();
        float fOriginalToRotatedX = this.city.originalToRotatedX(f, f2);
        float fOriginalToRotatedY = this.city.originalToRotatedY(f, f2);
        float fIsoToAbsX = isoConverter.isoToAbsX(fOriginalToRotatedX, fOriginalToRotatedY);
        float fIsoToAbsY = isoConverter.isoToAbsY(fOriginalToRotatedX, fOriginalToRotatedY);
        float f3 = rocket.z;
        Image image = Resources.IMAGE_WORLD;
        float f4 = fIsoToAbsY - (f3 * absScaleY);
        int[] iArr = this.rocketAnimation.frames;
        engine.drawImage(image, fIsoToAbsX, f4, iArr[this.animationTime % iArr.length]);
    }

    public final void drawExplosion(Explosion explosion, Engine engine) {
        engine.setColor(Colors.WHITE);
        IsoConverter isoConverter = this.city.getIsoConverter();
        float f = explosion.x;
        float f2 = explosion.y;
        isoConverter.getAbsScaleX();
        float absScaleY = isoConverter.getAbsScaleY();
        float fOriginalToRotatedX = this.city.originalToRotatedX(f, f2);
        float fOriginalToRotatedY = this.city.originalToRotatedY(f, f2);
        float fIsoToAbsX = isoConverter.isoToAbsX(fOriginalToRotatedX, fOriginalToRotatedY);
        float fIsoToAbsY = isoConverter.isoToAbsY(fOriginalToRotatedX, fOriginalToRotatedY);
        float f3 = explosion.z;
        int length = this.explosionAnimation.frames.length;
        int i = (this.animationTime - explosion.animationStart) / 100;
        if (i < length) {
            engine.drawImage(Resources.IMAGE_WORLD, fIsoToAbsX, fIsoToAbsY - (f3 * absScaleY), this.explosionAnimation.frames[i]);
        } else {
            explosion.invalid = true;
        }
    }

    public final void updateRocket(Rocket rocket) {
        float f = this.timeDelta / 1000.0f;
        Rocket.access$1416(rocket, rocket.speedX * f);
        Rocket.access$1516(rocket, rocket.speedY * f);
        Rocket.access$1616(rocket, rocket.speedZ * f);
        float f2 = f * 0.8f;
        float f3 = 1.0f - f2;
        rocket.speedX = (rocket.speedX * f3) + ((rocket.targetX - rocket.x) * f2);
        rocket.speedY = (rocket.speedY * f3) + ((rocket.targetY - rocket.y) * f2);
        rocket.speedZ = (f3 * rocket.speedZ) + (f2 * (rocket.targetZ - rocket.z));
        float fSqrt = ((float) Math.sqrt((rocket.speedX * rocket.speedX) + (rocket.speedY * rocket.speedY) + ((rocket.speedZ * rocket.speedZ) / 64.0f))) * 0.125f;
        Rocket.access$1740(rocket, fSqrt);
        Rocket.access$1840(rocket, fSqrt);
        Rocket.access$1940(rocket, fSqrt);
        if ((rocket.speedX * (rocket.targetX - rocket.x)) + (rocket.speedY * (rocket.targetY - rocket.y)) <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || rocket.z <= this.city.getTileHeight((int) Math.floor(rocket.x), (int) Math.floor(rocket.y))) {
            explodeRocket(rocket);
        }
        if (rocket.x < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || rocket.y < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || rocket.x >= this.city.getWidth() || rocket.y >= this.city.getHeight()) {
            rocket.invalid = true;
        }
    }

    public final void explodeRocket(Rocket rocket) {
        int iFloor = (int) Math.floor(rocket.x);
        int iFloor2 = (int) Math.floor(rocket.y);
        int iRound = Math.round(rocket.z);
        if (this.city.isValid(iFloor, iFloor2)) {
            Building building = this.city.getTiles().getBuilding(iFloor, iFloor2);
            if (building != null && iRound <= building.getDraft().buildHeight * 8) {
                this.modifier.destroyBuilding(building, false, null);
            }
            for (int i = 0; i < this.ufos.size(); i++) {
                Ufo ufo = this.ufos.get(i);
                if (ufo.mode == 2 || ufo.mode == 1) {
                    float f = ufo.x - iFloor;
                    float f2 = ufo.y - iFloor2;
                    float f3 = ufo.height - iRound;
                    if (((float) Math.sqrt((f * f) + (f2 * f2) + (f3 * f3))) <= 4.0f) {
                        ufo.startDay = this.currentDay.longValue();
                        ufo.mode = 4;
                    }
                }
            }
            addExplosion(iFloor, iFloor2, iRound);
        }
        rocket.invalid = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void drawUfo(final info.flowersoft.theotown.components.disaster.UfoDisaster.Ufo r25, io.blueflower.stapel2d.drawing.Engine r26) {
        /*
            Method dump skipped, instruction units count: 775
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.components.disaster.UfoDisaster.drawUfo(info.flowersoft.theotown.components.disaster.UfoDisaster$Ufo, io.blueflower.stapel2d.drawing.Engine):void");
    }

    public synchronized List<Ufo> getUfos(List<Ufo> list) {
        if (list == null) {
            try {
                list = new ArrayList<>();
            } catch (Throwable th) {
                throw th;
            }
        }
        list.clear();
        list.addAll(this.ufos);
        return list;
    }

    public static class Explosion {
        public int animationStart;
        public boolean invalid;
        public float x;
        public float y;
        public float z;
    }

    public static class Rocket {
        public boolean invalid;
        public float speedX;
        public float speedY;
        public float speedZ;
        public long startDay;
        public float targetX;
        public float targetY;
        public float targetZ;
        public float x;
        public float y;
        public float z;

        public static /* synthetic */ float access$1416(Rocket rocket, float f) {
            float f2 = rocket.x + f;
            rocket.x = f2;
            return f2;
        }

        public static /* synthetic */ float access$1516(Rocket rocket, float f) {
            float f2 = rocket.y + f;
            rocket.y = f2;
            return f2;
        }

        public static /* synthetic */ float access$1616(Rocket rocket, float f) {
            float f2 = rocket.z + f;
            rocket.z = f2;
            return f2;
        }

        public static /* synthetic */ float access$1740(Rocket rocket, float f) {
            float f2 = rocket.speedX / f;
            rocket.speedX = f2;
            return f2;
        }

        public static /* synthetic */ float access$1840(Rocket rocket, float f) {
            float f2 = rocket.speedY / f;
            rocket.speedY = f2;
            return f2;
        }

        public static /* synthetic */ float access$1940(Rocket rocket, float f) {
            float f2 = rocket.speedZ / f;
            rocket.speedZ = f2;
            return f2;
        }
    }

    public static class Ufo implements Saveable {
        public int attacks;
        public float height;
        public boolean invalid;
        public int mode;
        public float speedX;
        public float speedY;
        public long startDay;
        public float startX;
        public float startY;
        public float targetX;
        public float targetY;
        public float x;
        public float y;

        public static /* synthetic */ int access$908(Ufo ufo) {
            int i = ufo.attacks;
            ufo.attacks = i + 1;
            return i;
        }

        @Override // info.flowersoft.theotown.util.Saveable
        public void load(JsonReader jsonReader) throws IOException {
            while (jsonReader.hasNext()) {
                String strNextName = jsonReader.nextName();
                strNextName.getClass();
                switch (strNextName) {
                    case "start x":
                        this.startX = jsonReader.nextFloat();
                        break;
                    case "start y":
                        this.startY = jsonReader.nextFloat();
                        break;
                    case "height":
                        this.height = jsonReader.nextFloat();
                        break;
                    case "attacks":
                        this.attacks = jsonReader.nextInt();
                        break;
                    case "x":
                        this.x = jsonReader.nextFloat();
                        break;
                    case "y":
                        this.y = jsonReader.nextFloat();
                        break;
                    case "sd":
                        this.startDay = jsonReader.nextLong();
                        break;
                    case "sx":
                        this.speedX = jsonReader.nextFloat();
                        break;
                    case "sy":
                        this.speedY = jsonReader.nextFloat();
                        break;
                    case "tx":
                        this.targetX = jsonReader.nextFloat();
                        break;
                    case "ty":
                        this.targetY = jsonReader.nextFloat();
                        break;
                    case "mode":
                        this.mode = jsonReader.nextInt();
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            }
        }

        @Override // info.flowersoft.theotown.util.Saveable
        public void save(JsonWriter jsonWriter) throws IOException {
            jsonWriter.name(R6.z0).value(this.startDay);
            jsonWriter.name("x").value(this.x);
            jsonWriter.name("y").value(this.y);
            jsonWriter.name("start x").value(this.startX);
            jsonWriter.name("start y").value(this.startY);
            jsonWriter.name("tx").value(this.targetX);
            jsonWriter.name("ty").value(this.targetY);
            jsonWriter.name("sx").value(this.speedX);
            jsonWriter.name("sy").value(this.speedY);
            jsonWriter.name(C3522b4.a.t).value(this.mode);
            jsonWriter.name("attacks").value(this.attacks);
            jsonWriter.name("height").value(this.height);
        }
    }
}
