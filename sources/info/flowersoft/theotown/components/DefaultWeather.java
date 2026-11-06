package info.flowersoft.theotown.components;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.IsoConverter;
import info.flowersoft.theotown.city.components.CityComponent;
import info.flowersoft.theotown.components.DefaultSoundManager;
import info.flowersoft.theotown.components.firework.Firework;
import info.flowersoft.theotown.components.soundsource.TileSoundSource;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.SoundType;
import info.flowersoft.theotown.resources.WinterManager;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.util.ScreenRect;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.Random;
import vm2.LuaFunction;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultWeather extends CityComponent {
    public static LuaFunction drawLightningFunc;
    public static int lastThunder;
    public static int nextThunder;
    public final AnimationDraft cloudDraft;
    public final AnimationDraft defaultOverlay;
    public float downfallSpeed;
    public final Firework firework;
    public final AnimationDraft flareOverlay;
    public final AnimationDraft fogDraft;
    public boolean fogEnabled;
    public long lastThunderTime;
    public int loadedSoundId;
    public AnimationDraft overlay;
    public DefaultSoundManager.SoundSource soundSource;
    public int thunderX;
    public int thunderY;
    public int time;
    public boolean timeLocked;

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public int getType() {
        return 12;
    }

    public DefaultWeather() {
        this.fogDraft = (AnimationDraft) Drafts.get("$anim_weather_fog00", AnimationDraft.class);
        this.cloudDraft = (AnimationDraft) Drafts.get("$anim_weather_clouds00", AnimationDraft.class);
        AnimationDraft animationDraft = (AnimationDraft) Drafts.get("$anim_overlay00", AnimationDraft.class);
        this.defaultOverlay = animationDraft;
        this.flareOverlay = (AnimationDraft) Drafts.get("$anim_weather_flare00", AnimationDraft.class);
        this.downfallSpeed = 1.0f;
        this.time = Resources.RND.nextInt(1000000);
        this.firework = new Firework();
        this.overlay = animationDraft;
        drawLightningFunc = ScriptingEnvironment.getInstance().getGlobals().get("TheoTown").get("drawLightning").optfunction(null);
    }

    public DefaultWeather(JsonReader jsonReader) throws IOException {
        this();
        this.overlay = this.defaultOverlay;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "locked":
                    this.timeLocked = jsonReader.nextBoolean();
                    break;
                case "overlay":
                    setOverlay(jsonReader.nextString());
                    break;
                case "content_firework":
                    jsonReader.beginObject();
                    this.firework.load(jsonReader);
                    jsonReader.endObject();
                    break;
                case "fog":
                    this.fogEnabled = jsonReader.nextBoolean();
                    break;
                case "time":
                    this.time = jsonReader.nextInt();
                    break;
                default:
                    jsonReader.nextName();
                    break;
            }
        }
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("time").value(this.time);
        jsonWriter.name("locked").value(this.timeLocked);
        jsonWriter.name("fog").value(this.fogEnabled);
        jsonWriter.name("content_firework").beginObject();
        this.firework.save(jsonWriter);
        jsonWriter.endObject();
        AnimationDraft animationDraft = this.overlay;
        if (animationDraft == this.defaultOverlay || animationDraft == null) {
            return;
        }
        jsonWriter.name("overlay").value(this.overlay.id);
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        this.firework.bind(city);
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void prepare() {
        super.prepare();
        this.firework.prepare();
    }

    public void setDownfallSpeed(float f) {
        this.downfallSpeed = f;
    }

    public boolean isFogEnabled() {
        return this.fogEnabled;
    }

    public void setFogEnabled(boolean z) {
        this.fogEnabled = z;
    }

    public int getTime() {
        return this.time;
    }

    public void setTime(int i) {
        this.time = i;
    }

    public boolean isTimeLocked() {
        return this.timeLocked;
    }

    public void setTimeLocked(boolean z) {
        this.timeLocked = z;
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void update() {
        super.update();
        if (!this.timeLocked) {
            int animationTimeDelta = this.time + ((DefaultDate) this.city.getComponent(1)).getAnimationTimeDelta();
            this.time = animationTimeDelta;
            if (animationTimeDelta < 0) {
                this.time = 0;
            }
        }
        int i = WinterManager.getInstance().isWinter() ? Resources.SOUND_SNOW : Resources.SOUND_RAIN;
        float rain = getRain();
        if (rain > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && this.soundSource == null && Settings.weather) {
            this.soundSource = new DefaultSoundManager.SoundSource(1.0f) { // from class: info.flowersoft.theotown.components.DefaultWeather.1
                @Override // info.flowersoft.theotown.components.DefaultSoundManager.SoundSource
                public void update() {
                    float fMin = Math.min(Math.max(DefaultWeather.this.getRain(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT), 1.0f);
                    this.stream.setVolume(fMin, fMin);
                }

                @Override // info.flowersoft.theotown.components.DefaultSoundManager.SoundSource
                public boolean isValid() {
                    return DefaultWeather.this.soundSource == this && Settings.weather;
                }
            };
            ((DefaultSoundManager) this.city.getComponent(15)).playLoop(i, SoundType.WEATHER, this.soundSource);
            this.loadedSoundId = i;
        } else {
            DefaultSoundManager.SoundSource soundSource = this.soundSource;
            if (soundSource != null && (rain < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || !soundSource.isValid() || this.loadedSoundId != i)) {
                this.soundSource = null;
            }
        }
        this.firework.update();
    }

    public void setOverlay(String str) {
        if (str != null) {
            Draft draft = Drafts.ALL.get(str);
            if (draft instanceof AnimationDraft) {
                this.overlay = (AnimationDraft) draft;
                return;
            }
        }
        this.overlay = this.defaultOverlay;
    }

    public float getRain() {
        return ((float) (((Math.cos(this.time / 33000.0f) - 1.0d) * 2.0d) + (Math.sin(this.time / 12000.0f) * 1.2d))) - 0.1f;
    }

    public void spawnLightning(int i, int i2) {
        this.thunderX = i;
        this.thunderY = i2;
        this.lastThunderTime = ((DefaultDate) this.city.getComponent(1)).getAnimationTime();
        ((DefaultSoundManager) this.city.getComponent(15)).playOnce(Resources.SOUND_THUNDER, SoundType.WEATHER, new TileSoundSource(this.city, this.thunderX - 4, this.thunderY - 4, 8, 8));
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void drawAfter(Drawer drawer) {
        Engine engine = drawer.engine;
        int animationTime = ((DefaultDate) this.city.getComponent(1)).getAnimationTime();
        engine.setType(24);
        if (this.city.getLod().drawWeather()) {
            ScreenRect view = this.city.getView();
            int animationTime2 = (int) ((((double) this.downfallSpeed) * ((double) ((DefaultDate) this.city.getComponent(1)).getAnimationTime())) % 1000000.0d);
            IsoConverter isoConverter = this.city.getIsoConverter();
            float rain = getRain();
            float f = (-rain) * 0.025f;
            float f2 = f > 1.0f ? 1.0f : f;
            if (f2 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                drawHeat(engine, f2, (int) Math.ceil(view.getWidth()), (int) Math.ceil(view.getHeight()));
            }
            if (rain > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || this.fogEnabled) {
                float fMax = Math.max((rain - 1.0f) * 5.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                if (rain > 1.0f) {
                    rain = 1.0f;
                }
                float f3 = 0.15f * rain;
                if (this.fogEnabled) {
                    f3 = 0.4f;
                }
                if (drawDownfall(engine, animationTime2, (isoConverter.getAbsShiftX() * this.city.getScale()) + (view.getWidth() / 2.0f), (isoConverter.getAbsShiftY() * this.city.getScale()) + (view.getHeight() / 2.0f), rain, fMax, f3, this.city.getScale(), view.getWidth(), view.getHeight())) {
                    Random random = Resources.RND;
                    spawnLightning(random.nextInt(this.city.getWidth()), random.nextInt(this.city.getHeight()));
                }
            }
            if (Math.min(1.0f - (rain * 2.0f), 1.0f - f2) > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                int i = Settings.loadCounter;
            }
        }
        long j = animationTime;
        long j2 = this.lastThunderTime;
        if (j - j2 < 200 && j >= j2 && drawLightningFunc != null) {
            float f4 = (j - j2) / 100.0f;
            float scaleX = engine.getScaleX();
            float scaleY = engine.getScaleY();
            try {
                drawLightningFunc.call(LuaValue.valueOf(this.thunderX), LuaValue.valueOf(this.thunderY), LuaValue.valueOf((f4 * 2.0f) % 2.0f));
            } catch (Exception e) {
                e.printStackTrace();
            }
            engine.setScale(scaleX, scaleY);
        }
        this.firework.draw(engine);
        if (this.city.getLod().drawOverlay()) {
            drawOverlay(engine, this.overlay);
        }
    }

    public final void drawOverlay(Engine engine, AnimationDraft animationDraft) {
        int[] iArr;
        if (animationDraft == null || (iArr = animationDraft.frames) == null || iArr.length <= 0) {
            return;
        }
        ScreenRect view = this.city.getView();
        float scaleX = engine.getScaleX();
        float scaleY = engine.getScaleY();
        engine.setScale(1.0f, 1.0f);
        engine.setType(25);
        engine.drawImage(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, view.getWidth(), view.getHeight(), iArr[0]);
        engine.setScale(scaleX, scaleY);
    }

    public void drawCloudShadows(Engine engine, int i, float f, float f2, float f3) {
        float scaleX = engine.getScaleX();
        float scaleY = engine.getScaleY();
        int i2 = this.cloudDraft.frames[0];
        engine.setColor(Colors.BLACK);
        engine.setTransparency((int) (f3 * 6.0f));
        engine.setScale(32.0f * scaleX, 16.0f * scaleY);
        float f4 = f + (((i * 4.0f) / 200.0f) * scaleX);
        float f5 = 4;
        float f6 = f5 * scaleX;
        Drawing.getInstance().drawTiled(engine, Resources.IMAGE_WORLD, f4 + f6, f2, i2);
        Drawing.getInstance().drawTiled(engine, Resources.IMAGE_WORLD, f4 - f6, f2, i2);
        float f7 = f5 * scaleY;
        Drawing.getInstance().drawTiled(engine, Resources.IMAGE_WORLD, f4, f2 + f7, i2);
        Drawing.getInstance().drawTiled(engine, Resources.IMAGE_WORLD, f4, f2 - f7, i2);
        float f8 = 8;
        float f9 = f8 * scaleX;
        Drawing.getInstance().drawTiled(engine, Resources.IMAGE_WORLD, f4 + f9, f2, i2);
        Drawing.getInstance().drawTiled(engine, Resources.IMAGE_WORLD, f4 - f9, f2, i2);
        float f10 = f8 * scaleY;
        Drawing.getInstance().drawTiled(engine, Resources.IMAGE_WORLD, f4, f2 + f10, i2);
        Drawing.getInstance().drawTiled(engine, Resources.IMAGE_WORLD, f4, f2 - f10, i2);
        Drawing.getInstance().drawTiled(engine, Resources.IMAGE_WORLD, f4, f2, i2);
        engine.setColor(Colors.WHITE);
        engine.setScale(scaleX, scaleY);
        engine.setTransparency(255);
    }

    public void drawHeat(Engine engine, float f, int i, int i2) {
        float scaleX = engine.getScaleX();
        float scaleY = engine.getScaleY();
        engine.setScale(1.0f, 1.0f);
        engine.setColor(255, 230, 180);
        engine.setAdditive(255);
        engine.setTransparency(Math.round(100.0f * f));
        float f2 = i;
        float f3 = i2;
        engine.drawImage(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f2, f3, Resources.FRAME_RECT);
        if (!Settings.useLowColorDepth) {
            engine.setTransparency(Math.round(400.0f * f));
            engine.setColor(Colors.WHITE);
            engine.drawImage(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f2, f3, this.flareOverlay.frames[0]);
        }
        engine.setTransparency(255);
        engine.setAdditive(0);
        engine.setColor(Colors.WHITE);
        engine.setScale(scaleX, scaleY);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x017c A[PHI: r2
      0x017c: PHI (r2v1 io.blueflower.stapel2d.drawing.Engine) = 
      (r2v0 io.blueflower.stapel2d.drawing.Engine)
      (r2v0 io.blueflower.stapel2d.drawing.Engine)
      (r2v8 io.blueflower.stapel2d.drawing.Engine)
      (r2v8 io.blueflower.stapel2d.drawing.Engine)
      (r2v8 io.blueflower.stapel2d.drawing.Engine)
     binds: [B:21:0x00ca, B:23:0x00ce, B:25:0x00f5, B:38:0x0145, B:40:0x0149] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean drawDownfall(io.blueflower.stapel2d.drawing.Engine r25, int r26, float r27, float r28, float r29, float r30, float r31, float r32, float r33, float r34) {
        /*
            Method dump skipped, instruction units count: 474
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.components.DefaultWeather.drawDownfall(io.blueflower.stapel2d.drawing.Engine, int, float, float, float, float, float, float, float, float):boolean");
    }

    public Firework getFirework() {
        return this.firework;
    }
}
