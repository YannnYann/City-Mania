package info.flowersoft.theotown.ui;

import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.Localizer;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.drawing.Image;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class SuccessOverlay {
    public static SuccessOverlay instance;
    public int[] ICONS;
    public long lastDisplayMS;
    public final int[][] placements = new int[6][];
    public final int[] defaultPlacement = {0, 0};
    public final List<Event> events = new ArrayList();
    public final Random rnd = new Random();
    public final List<Particle> particles = new ArrayList();
    public final List<Toast> toasts = new ArrayList();

    public static class Event {
        public double amount;
        public int effectiveDisplayedTimeMS;
        public int targetDisplayTimeMS;
        public int type;
    }

    public AnimationDraft getDustAnimation() {
        return (AnimationDraft) Drafts.ALL.get("$anim_dust00");
    }

    public void setPlacement(int i, int i2, int i3) {
        this.placements[i] = new int[]{i2, i3};
    }

    public void addEvent(int i, double d) {
        Event event;
        Event event2 = new Event();
        event2.type = i;
        event2.amount = d;
        event2.targetDisplayTimeMS = 3200;
        if (this.events.isEmpty()) {
            event = null;
        } else {
            event = this.events.get(r4.size() - 1);
        }
        if (event != null && this.events.size() < 3 && event.type != i) {
            event2.effectiveDisplayedTimeMS = Math.min(0, event.effectiveDisplayedTimeMS - 3000);
        }
        this.events.add(event2);
    }

    public void addParticle(AnimationDraft animationDraft, float f, float f2, float f3, float f4, float f5, float f6, Color color, Color color2, int i) {
        Particle particle = new Particle();
        particle.animation = animationDraft;
        particle.x = f;
        particle.y = f2;
        particle.xSpeed = f3;
        particle.ySpeed = f4;
        particle.startScale = f5;
        particle.endScale = f6;
        particle.startColor = color;
        if (color == null) {
            particle.startColor = Colors.WHITE;
        }
        particle.endColor = color2;
        if (color2 == null) {
            particle.endColor = Colors.BLACK;
        }
        particle.startTime = TimeUtils.millis();
        particle.lifeTime = i;
        this.particles.add(particle);
    }

    public void addToast(String str) {
        synchronized (this.toasts) {
            try {
                if (this.toasts.size() < 10) {
                    Toast toast = new Toast();
                    toast.text = str;
                    toast.targetDisplayTimeMS = this.toasts.size() > 1 ? 500 : 2000;
                    this.toasts.add(toast);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public synchronized boolean isActive() {
        return !this.events.isEmpty();
    }

    public synchronized Event getEventOfType(int i) {
        for (int i2 = 0; i2 < this.events.size(); i2++) {
            if (this.events.get(i2).type == i) {
                return this.events.get(i2);
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x01a2 A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:4:0x0005, B:8:0x0019, B:10:0x0024, B:14:0x003e, B:20:0x0050, B:19:0x0049, B:22:0x0054, B:24:0x005e, B:28:0x0077, B:30:0x00ff, B:29:0x00f8, B:31:0x0104, B:33:0x010c, B:35:0x0110, B:37:0x0142, B:43:0x0156, B:45:0x01a2, B:46:0x01a4, B:52:0x01ae, B:41:0x014e, B:53:0x01af, B:47:0x01a5, B:48:0x01aa), top: B:58:0x0005, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void draw(io.blueflower.stapel2d.drawing.Engine r21) {
        /*
            Method dump skipped, instruction units count: 440
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.ui.SuccessOverlay.draw(io.blueflower.stapel2d.drawing.Engine):void");
    }

    public final void drawEvent(Engine engine, Event event, float f) {
        String strLocalizeMoney;
        float f2;
        int i;
        SuccessOverlay successOverlay = this;
        Engine engine2 = engine;
        if (successOverlay.ICONS == null) {
            successOverlay.ICONS = new int[]{Resources.ICON_DIAMOND, Resources.ICON_MONEY, Resources.ICON_DOWNLOAD, Resources.ICON_ONLINE_REGION_COIN, Resources.ICON_PLAYFASTFAST, Resources.ICON_SHORT_BUILD_TIME};
        }
        int i2 = event.type;
        if (i2 >= 0) {
            int[] iArr = successOverlay.ICONS;
            if (i2 >= iArr.length) {
                return;
            }
            int i3 = iArr[i2];
            if (i2 == 0) {
                strLocalizeMoney = Localizer.localizeDiamonds((int) event.amount);
            } else if (i2 == 3) {
                strLocalizeMoney = Localizer.localizeRegionCoins((int) event.amount);
            } else if (i2 != 1) {
                strLocalizeMoney = "";
            } else {
                strLocalizeMoney = Localizer.localizeMoney(event.amount);
            }
            String str = strLocalizeMoney;
            int[] iArr2 = successOverlay.placements[i2];
            if (iArr2 == null) {
                iArr2 = successOverlay.defaultPlacement;
            }
            int[] iArr3 = iArr2;
            Font font = Resources.skin.fontBig;
            float f3 = 4.0f * f;
            float f4 = (f3 - 1.0f) / 3.0f;
            if (f3 >= 1.0f) {
                f3 = 1.0f - f4;
            }
            int iPow = (int) (((float) Math.pow(f3, 0.8d)) * 255.0f);
            int virtualWidth = engine2.getVirtualWidth();
            int virtualHeight = (engine2.getVirtualHeight() - 60) / 2;
            int i4 = virtualHeight + 30;
            int width = (virtualWidth / 2) - ((((int) font.getWidth(str)) * 2) / 2);
            int height = i4 - ((((int) font.getHeight(str)) * 2) / 2);
            engine2.setColor(Colors.BLACK);
            engine2.setTransparency(iPow / 2);
            float f5 = virtualWidth;
            engine2.drawImage(Resources.IMAGE_WORLD, 0, virtualHeight, f5, 60, Resources.FRAME_RECT);
            engine2.setTransparency(iPow);
            engine2.setColor(Colors.WHITE);
            engine2.setScale(2.0f, 2.0f);
            if (f3 < 1.0f) {
                f2 = 2.0f;
                i = 0;
                engine2.drawImage(Resources.IMAGE_WORLD, width - 26, i4, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.5f, i3);
            } else {
                f2 = 2.0f;
                i = 0;
            }
            engine2.drawText(font, str, width, height);
            engine2.setScale(1.0f, 1.0f);
            if (f4 >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                successOverlay.rnd.setSeed(0L);
                Image image = Resources.IMAGE_WORLD;
                int i5 = i;
                while (i5 < 100) {
                    float fCos = ((float) (0.5d - (Math.cos(((double) f4) * 3.141592653589793d) * 0.5d))) * ((successOverlay.rnd.nextFloat() * 0.5f) + 1.0f);
                    float f6 = f2 - (1.5f * fCos);
                    engine2.setScale(f6, f6);
                    float f7 = width - 26;
                    float f8 = i4;
                    float fNextFloat = successOverlay.rnd.nextFloat() * f2 * 3.1415927f;
                    float fPow = 0.8f * f5 * ((float) Math.pow(successOverlay.rnd.nextFloat(), 2.0d));
                    double d = fNextFloat;
                    float fCos2 = (((float) Math.cos(d)) * fPow) + f7;
                    float fSin = (fPow * ((float) Math.sin(d))) + fCos2;
                    float f9 = 1.0f - fCos;
                    engine2 = engine;
                    engine2.drawImage(image, (((f7 * f9) + (fCos * fCos2)) * f9) + (((fCos2 * f9) + ((iArr3[i] + 16) * fCos)) * fCos), (f9 * ((f8 * f9) + (fCos * fSin))) + (fCos * ((fSin * f9) + ((iArr3[1] + 8) * fCos))), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.5f, i3);
                    i5++;
                    successOverlay = this;
                }
            }
            engine2.setColor(Colors.WHITE);
            engine2.setTransparency(255);
            engine2.setScale(1.0f, 1.0f);
        }
    }

    public static SuccessOverlay getInstance() {
        if (instance == null) {
            instance = new SuccessOverlay();
        }
        return instance;
    }

    public static void dispose() {
        instance = null;
    }

    public static class Particle {
        public AnimationDraft animation;
        public Color endColor;
        public float endScale;
        public long lifeTime;
        public Color startColor;
        public float startScale;
        public long startTime;
        public float x;
        public float xSpeed;
        public float y;
        public float ySpeed;

        public Particle() {
        }
    }

    public static class Toast {
        public int displayedTimeMS;
        public int targetDisplayTimeMS;
        public String text;

        public Toast() {
        }
    }
}
