package info.flowersoft.theotown.components.disaster;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.IsoConverter;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.components.Disaster;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultSoundManager;
import info.flowersoft.theotown.components.DefaultWeather;
import info.flowersoft.theotown.components.disaster.TornadoDisaster;
import info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource;
import info.flowersoft.theotown.components.soundsource.BuildingSoundSource;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.SoundType;
import info.flowersoft.theotown.util.SafeListAccessor;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class TornadoDisaster extends Disaster {
    public final List<Tornado> tornados = new ArrayList();
    public final AnimationDraft tornadoAnimation = (AnimationDraft) Drafts.ALL.get("$animationtornado00");
    public final AnimationDraft landAnimation = (AnimationDraft) Drafts.ALL.get("$animationtornadodirt00");
    public final AnimationDraft waterAnimation = (AnimationDraft) Drafts.ALL.get("$animationtornadowater00");

    @Override // info.flowersoft.theotown.city.components.Disaster
    public float getAutoProbability() {
        return 0.005f;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void prepare() {
        super.prepare();
        Iterator it = new SafeListAccessor(this.tornados).iterator();
        while (it.hasNext()) {
            startSound((Tornado) it.next());
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("tornados")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    Tornado tornado = new Tornado();
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String strNextName2 = jsonReader.nextName();
                        strNextName2.getClass();
                        switch (strNextName2) {
                            case "speed x":
                                tornado.speedX = jsonReader.nextFloat();
                                break;
                            case "speed y":
                                tornado.speedY = jsonReader.nextFloat();
                                break;
                            case "start x":
                                tornado.startX = jsonReader.nextFloat();
                                break;
                            case "start y":
                                tornado.startY = jsonReader.nextFloat();
                                break;
                            case "end day":
                                tornado.endDay = jsonReader.nextLong();
                                break;
                            case "time shift":
                                tornado.timeShift = jsonReader.nextInt();
                                break;
                            case "x":
                                tornado.x = jsonReader.nextFloat();
                                break;
                            case "y":
                                tornado.y = jsonReader.nextFloat();
                                break;
                            case "acc x":
                                tornado.accX = jsonReader.nextFloat();
                                break;
                            case "acc y":
                                tornado.accY = jsonReader.nextFloat();
                                break;
                            case "issue day":
                                tornado.issueDay = jsonReader.nextLong();
                                break;
                            default:
                                jsonReader.skipValue();
                                break;
                        }
                    }
                    jsonReader.endObject();
                    this.tornados.add(tornado);
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("tornados").beginArray();
        for (Tornado tornado : this.tornados) {
            if (!tornado.invalid) {
                jsonWriter.beginObject();
                jsonWriter.name("x").value(tornado.x);
                jsonWriter.name("y").value(tornado.y);
                jsonWriter.name("acc x").value(tornado.accX);
                jsonWriter.name("acc y").value(tornado.accY);
                jsonWriter.name("issue day").value(tornado.issueDay);
                jsonWriter.name("end day").value(tornado.endDay);
                jsonWriter.name("start x").value(tornado.startX);
                jsonWriter.name("start y").value(tornado.startY);
                jsonWriter.name("speed x").value(tornado.speedX);
                jsonWriter.name("speed y").value(tornado.speedY);
                jsonWriter.name("time shift").value(tornado.timeShift);
                jsonWriter.endObject();
            }
        }
        jsonWriter.endArray();
    }

    public final void startSound(final Tornado tornado) {
        ((DefaultSoundManager) this.city.getComponent(15)).playLoop(Resources.SOUND_WIND, SoundType.GAME, new AbstractTileSoundSource(this.city) { // from class: info.flowersoft.theotown.components.disaster.TornadoDisaster.1
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
                return tornado.x - 2.0f;
            }

            @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
            public float getTileY() {
                return tornado.y - 2.0f;
            }

            @Override // info.flowersoft.theotown.components.DefaultSoundManager.SoundSource
            public boolean isValid() {
                return !tornado.invalid;
            }

            @Override // info.flowersoft.theotown.components.soundsource.AreaSoundSource
            public float getVolume() {
                return tornado.alpha;
            }
        });
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized void update() {
        try {
            if (this.tornados.isEmpty()) {
                return;
            }
            Tiles tiles = this.city.getTiles();
            float absoluteDay = this.date.getAbsoluteDay() + this.date.getDayPart();
            Iterator<Tornado> it = this.tornados.iterator();
            while (it.hasNext()) {
                Tornado next = it.next();
                int iRound = Math.round(next.x);
                int iRound2 = Math.round(next.y);
                if (absoluteDay <= next.endDay && this.city.isValid(iRound, iRound2)) {
                    synchronized (this.city) {
                        for (int i = iRound - 4; i <= iRound + 4; i++) {
                            for (int i2 = iRound2 - 4; i2 <= iRound2 + 4; i2++) {
                                int i3 = i - iRound;
                                int i4 = i2 - iRound2;
                                try {
                                    if (((float) Math.sqrt((i3 * i3) + (i4 * i4))) * (Resources.RND.nextFloat() + 1.0f) <= 4 && this.city.isValid(i, i2)) {
                                        Building building = tiles.getBuilding(i, i2);
                                        if (building != null && !building.isLocked() && building.getDraft().destroyable) {
                                            ((DefaultSoundManager) this.city.getComponent(15)).playOnce(Resources.SOUND_DESTROY, SoundType.GAME, new BuildingSoundSource(this.city, building));
                                        }
                                        this.modifier.destroy(i, i2, false, null);
                                    }
                                } finally {
                                }
                            }
                        }
                    }
                } else {
                    next.invalid = true;
                    it.remove();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$pX8R226V21h3vmqy-zWp-J2P1B4, reason: not valid java name */
    public static /* synthetic */ int m2124$r8$lambda$pX8R226V21h3vmqyzWpJ2P1B4(Tornado tornado, Tornado tornado2) {
        return (int) Math.signum(tornado2.y - tornado.y);
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized void draw(Engine engine) {
        try {
            Collections.sort(this.tornados, new Comparator() { // from class: info.flowersoft.theotown.components.disaster.TornadoDisaster$$ExternalSyntheticLambda0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return TornadoDisaster.m2124$r8$lambda$pX8R226V21h3vmqyzWpJ2P1B4((TornadoDisaster.Tornado) obj, (TornadoDisaster.Tornado) obj2);
                }
            });
            float absoluteDay = this.date.getAbsoluteDay() + this.date.getDayPart();
            for (Tornado tornado : this.tornados) {
                float f = absoluteDay - tornado.issueDay;
                float fMax = Math.max(Math.min(Math.min(f, (tornado.endDay - absoluteDay) - 1.0f) * 0.25f, 1.0f), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                tornado.alpha = fMax;
                engine.setTransparency(Math.round(fMax * 255.0f * 0.8f));
                tornado.x = tornado.startX;
                Tornado.access$116(tornado, tornado.speedX * f);
                float f2 = f * f;
                Tornado.access$116(tornado, (tornado.accX * f2) / 2.0f);
                tornado.y = tornado.startY;
                Tornado.access$216(tornado, f * tornado.speedY);
                Tornado.access$216(tornado, (f2 * tornado.accY) / 2.0f);
                drawTornado(tornado, engine);
            }
            engine.setTransparency(255);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void drawTornado(Tornado tornado, Engine engine) {
        AnimationDraft animationDraft;
        float f = tornado.x;
        float f2 = tornado.y;
        int iFloor = (int) Math.floor(f);
        int iFloor2 = (int) Math.floor(f2);
        float f3 = f - iFloor;
        float f4 = f2 - iFloor2;
        float f5 = 1.0f - f3;
        float f6 = 1.0f - f4;
        int i = iFloor + 1;
        float terrainAvgHeight = (f5 * f6 * this.city.getTiles().getTerrainAvgHeight(iFloor, iFloor2)) + (f6 * f3 * this.city.getTiles().getTerrainAvgHeight(i, iFloor2));
        int i2 = iFloor2 + 1;
        float terrainAvgHeight2 = terrainAvgHeight + (f5 * f4 * this.city.getTiles().getTerrainAvgHeight(iFloor, i2)) + (f3 * f4 * this.city.getTiles().getTerrainAvgHeight(i, i2));
        float fOriginalToRotatedX = this.city.originalToRotatedX(f, f2) + 0.5f;
        float fOriginalToRotatedY = this.city.originalToRotatedY(f, f2) + 0.5f;
        IsoConverter isoConverter = this.city.getIsoConverter();
        int iRound = Math.round(isoConverter.isoToAbsX(fOriginalToRotatedX, fOriginalToRotatedY));
        int iRound2 = Math.round(isoConverter.isoToAbsY(fOriginalToRotatedX, fOriginalToRotatedY));
        float absScaleY = (-terrainAvgHeight2) * 12.0f * isoConverter.getAbsScaleY();
        Image image = Resources.IMAGE_WORLD;
        int animationTime = this.date.getAnimationTime();
        float fMax = Math.max(((tornado.timeShift + animationTime) / 200.0f) * this.tornadoAnimation.speed, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        int[] iArr = this.tornadoAnimation.frames;
        int length = iArr.length;
        double d = fMax;
        int i3 = iArr[((int) Math.floor(d)) % length];
        int i4 = this.tornadoAnimation.frames[((int) Math.ceil(d)) % length];
        float fFloor = fMax - ((int) Math.floor(d));
        float scale = this.city.getScale();
        float f7 = 2.0f * scale;
        engine.setScale(f7, f7);
        float f8 = iRound;
        float f9 = iRound2 + absScaleY;
        Drawing.getInstance().draw(image, f8, f9, i3, i4, fFloor, engine);
        engine.setScale(scale, scale);
        int iRound3 = Math.round(f);
        int iRound4 = Math.round(f2);
        if (this.city.isValid(iRound3, iRound4)) {
            if (this.city.getTiles().isGroundWater(iRound3, iRound4)) {
                animationDraft = this.waterAnimation;
            } else {
                animationDraft = this.landAnimation;
            }
            int iAbs = Math.abs(Math.round((animationDraft.speed * (animationTime + tornado.timeShift)) / 200.0f));
            int[] iArr2 = animationDraft.frames;
            engine.drawImage(image, f8, f9, iArr2[iAbs % iArr2.length]);
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized boolean isActive() {
        return !this.tornados.isEmpty();
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized boolean issue(int i, int i2) {
        long absoluteDay = this.date.getAbsoluteDay();
        Tornado tornado = new Tornado();
        Random random = Resources.RND;
        tornado.timeShift = random.nextInt(100);
        tornado.issueDay = absoluteDay;
        tornado.endDay = absoluteDay + ((long) random.nextInt(30)) + 30;
        float f = i;
        tornado.x = f;
        float f2 = i2;
        tornado.y = f2;
        tornado.startX = f;
        tornado.startY = f2;
        float fNextFloat = random.nextFloat() * 2.0f * 3.14159f;
        float fNextFloat2 = random.nextFloat() + 1.0f;
        double d = fNextFloat;
        tornado.speedX = ((float) Math.cos(d)) * fNextFloat2;
        tornado.speedY = ((float) Math.sin(d)) * fNextFloat2;
        float f3 = fNextFloat2 / 10.0f;
        double dNextFloat = (float) (d + (((double) ((random.nextFloat() * 2.0f) - 1.0f)) * 1.570795d));
        tornado.accX = ((float) Math.cos(dNextFloat)) * f3;
        tornado.accY = f3 * ((float) Math.sin(dNextFloat));
        this.tornados.add(tornado);
        startSound(tornado);
        ((DefaultWeather) this.city.getComponent(12)).setTime(612697);
        return true;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized int[] getLocation() {
        if (this.tornados.isEmpty()) {
            return null;
        }
        Tornado tornado = this.tornados.get(0);
        return new int[]{(int) tornado.x, (int) tornado.y};
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean isAutoEnabled() {
        return Settings.disasterTornado;
    }

    public class Tornado {
        public float accX;
        public float accY;
        public float alpha;
        public long endDay;
        public boolean invalid;
        public long issueDay;
        public float speedX;
        public float speedY;
        public float startX;
        public float startY;
        public int timeShift;
        public float x;
        public float y;

        public Tornado() {
        }

        public static /* synthetic */ float access$116(Tornado tornado, float f) {
            float f2 = tornado.x + f;
            tornado.x = f2;
            return f2;
        }

        public static /* synthetic */ float access$216(Tornado tornado, float f) {
            float f2 = tornado.y + f;
            tornado.y = f2;
            return f2;
        }
    }
}
