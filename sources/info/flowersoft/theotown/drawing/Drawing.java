package info.flowersoft.theotown.drawing;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.objects.AnimationSpots;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.AnimationSpot;
import info.flowersoft.theotown.draft.SmokeDraft;
import info.flowersoft.theotown.draft.SmokeSpot;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.drawing.Texture;
import io.blueflower.stapel2d.gui.Gadget;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class Drawing {
    public static Drawing instance;
    public final float CORNER_MID_COS = (float) Math.cos(0.7853981633974483d);
    public final AnimationDraft FIRE_DRAFT;
    public final AnimationDraft IS_NEW_MARKER;
    public final AnimationSpot animationSpot;
    public float[] rectCoords;
    public final SmokeDraft smoke;
    public final SmokeSpot smokeSpot;
    public final float[] tempCoords;

    public final float smoothSingle(float f) {
        return ((-2.0f) * f * f * f) + (3.0f * f * f);
    }

    public final float trans(float f) {
        if (f > 0.8f) {
            float f2 = 1.0f - ((f - 0.8f) / 0.2f);
            return f2 * f2;
        }
        float f3 = 1.0f - (f / 0.8f);
        return 1.0f - (((f3 * f3) * f3) * f3);
    }

    public final float transModulator(float f) {
        return ((-f) * f) + (f * 2.0f);
    }

    public static Drawing getInstance() {
        if (instance == null) {
            instance = new Drawing();
        }
        return instance;
    }

    public static void dispose() {
        instance = null;
    }

    public Drawing() {
        AnimationDraft animationDraft = (AnimationDraft) Drafts.get("$animationfire04", AnimationDraft.class);
        this.FIRE_DRAFT = animationDraft;
        SmokeDraft smokeDraft = (SmokeDraft) Drafts.get("$qualm01", SmokeDraft.class);
        this.smoke = smokeDraft;
        this.smokeSpot = new SmokeSpot(smokeDraft, 0, 0, null, null);
        this.animationSpot = new AnimationSpot(animationDraft, 0, 0, 0, 0, null, 0);
        this.IS_NEW_MARKER = (AnimationDraft) Drafts.get("$anim_ui_new00", AnimationDraft.class);
        this.tempCoords = new float[4];
    }

    public void drawFire(Drawer drawer, int i, int i2, int i3) {
        Engine engine = drawer.engine;
        int i4 = (((i2 * 37) + (i3 * 1921)) % 8) + 12;
        int i5 = ((i2 * 917) + (i3 * Sdk.SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE)) % 4;
        int i6 = drawer.time + (((i2 * 1971) + (i3 * 1973)) % 1000);
        SmokeSpot smokeSpot = this.smokeSpot;
        smokeSpot.x = i4;
        int i7 = i / 2;
        smokeSpot.y = (i5 - 6) - i7;
        drawSmoke(drawer, -1, smokeSpot, i6, i / 8);
        AnimationSpot animationSpot = this.animationSpot;
        animationSpot.x = i4;
        animationSpot.y = i5 - i7;
        engine.setAdditive(255);
        drawer.setUseShading(false);
        drawAnimation(drawer, this.animationSpot, 0, ((i5 + 2) * 97) + (i6 / 200.0f) + (i4 * 5), 0, 1.0f, 0, null, true);
        drawer.setUseShading(true);
        engine.setAdditive(0);
    }

    public void drawFires(Drawer drawer, int i, int i2, int i3, int i4, float f) {
        int i5;
        int i6;
        Engine engine = drawer.engine;
        for (int i7 = 0; i7 < (i + i2) - 1; i7++) {
            if (i7 < i) {
                i6 = 0;
                i5 = i7;
            } else {
                i5 = i - 1;
                i6 = (i7 - i) + 1;
            }
            int i8 = (((i5 + i6) * 32) / 2) + 16;
            int i9 = ((i5 - i6) * 16) / 2;
            SmokeSpot smokeSpot = this.smokeSpot;
            smokeSpot.x = i8;
            smokeSpot.y = i9 - 12;
            drawSmoke(drawer, -1, smokeSpot, i3 / 2, 4.0f);
            AnimationSpot animationSpot = this.animationSpot;
            animationSpot.x = i8;
            animationSpot.y = i9 - 6;
            engine.setAdditive(255);
            drawer.setUseShading(false);
            drawAnimation(drawer, this.animationSpot, i4, ((i9 + 4) * 97) + f + (i8 * 5), 0, 1.0f, 0, null, true);
            drawer.setUseShading(true);
            engine.setAdditive(0);
        }
    }

    public void drawSmoke(Drawer drawer, int i, SmokeSpot smokeSpot, int i2) {
        drawSmoke(drawer, i, smokeSpot, i2, smokeSpot.draft.scale);
    }

    public void drawSmoke(Drawer drawer, int i, SmokeSpot smokeSpot, int i2, float f) {
        Drawing drawing;
        boolean z;
        int i3;
        int i4;
        int i5;
        int i6;
        SmokeSpot smokeSpot2 = smokeSpot;
        if (smokeSpot2.isTargeted(i)) {
            int iRound = Math.round(f) + 1;
            int length = smokeSpot2.draft.frames.length;
            Drawer drawer2 = drawer;
            Engine engine = drawer2.engine;
            if (smokeSpot2.color != null) {
                int red = engine.getRed();
                int green = engine.getGreen();
                int blue = engine.getBlue();
                int transparency = engine.getTransparency();
                drawing = this;
                drawing.tintEngineColor(engine, smokeSpot2.color);
                i4 = green;
                i5 = blue;
                i6 = transparency;
                z = true;
                i3 = red;
            } else {
                drawing = this;
                z = false;
                i3 = 0;
                i4 = 0;
                i5 = 0;
                i6 = 0;
            }
            int i7 = 0;
            while (i7 < iRound) {
                drawing.drawSmoke(drawer2, smokeSpot2, i2, (i7 * (length - 1.0f)) / iRound, f);
                i7++;
                drawing = this;
                drawer2 = drawer;
                smokeSpot2 = smokeSpot;
            }
            if (z) {
                engine.setColorAndTransparency(i3, i4, i5, i6);
            }
        }
    }

    public final void drawSmoke(Drawer drawer, SmokeSpot smokeSpot, int i, float f, float f2) {
        int i2 = smokeSpot.x;
        int i3 = smokeSpot.y;
        SmokeDraft smokeDraft = smokeSpot.draft;
        int length = smokeDraft.frames.length;
        int transparency = drawer.engine.getTransparency();
        float fAbs = ((((smokeDraft.speed * i) % (length * 300)) + (Math.abs(smokeSpot.x + (smokeSpot.y * 5637)) % r12)) / 300.0f) + f;
        float f3 = length - 1;
        float fMin = Math.min(fAbs % f3, length - 1.001f);
        double d = fMin;
        int i4 = smokeDraft.frames[(int) Math.floor(d)];
        int i5 = smokeDraft.frames[(int) Math.ceil(d)];
        float fFloor = fMin - ((float) Math.floor(d));
        float f4 = 1.0f - (fMin / f3);
        int iRound = i2 + Math.round(((((6.0f * f2) * fMin) * fMin) / f3) / f3);
        int iRound2 = i3 - Math.round(((f2 * 9.0f) * fMin) / f3);
        float f5 = transparency;
        drawer.engine.setTransparency(Math.round(trans((1.0f - fFloor) * f4) * f5));
        float f6 = iRound;
        float f7 = iRound2;
        drawer.draw(Resources.IMAGE_WORLD, f6, f7, i4);
        drawer.engine.setTransparency(Math.round(f5 * trans(f4 * fFloor)));
        drawer.draw(Resources.IMAGE_WORLD, f6, f7, i5);
        drawer.engine.setTransparency(transparency);
    }

    public void drawShadowedText(String str, float f, float f2, Font font, Color color, Engine engine, float f3, float f4) {
        drawShadowedText(str, f - ((font.getWidth(str) * engine.getScaleX()) * f3), f2 - ((font.getHeight(str) * engine.getScaleY()) * f4), font, color, engine);
    }

    public void drawShadowedText(String str, float f, float f2, Font font, Color color, Engine engine) {
        int red = engine.getRed();
        int green = engine.getGreen();
        int blue = engine.getBlue();
        engine.setTransparency(100);
        engine.setColor(color);
        engine.drawText(font, str, f + 1.0f, 1.0f + f2);
        engine.setTransparency(255);
        engine.setColor(red, green, blue);
        engine.drawText(font, str, f, f2);
    }

    public void drawOutlinedText(String str, float f, float f2, Font font, Color color, Engine engine, float f3, float f4) {
        drawOutlinedText(str, f - ((font.getWidth(str) * engine.getScaleX()) * f3), f2 - ((font.getHeight(str) * engine.getScaleY()) * f4), font, color, engine);
    }

    public void drawOutlinedText(String str, float f, float f2, Font font, Color color, Engine engine) {
        int red = engine.getRed();
        int green = engine.getGreen();
        int blue = engine.getBlue();
        engine.setColor(color);
        engine.setTransparency(100);
        float f3 = f + 0.5f;
        float f4 = f2 + 0.5f;
        engine.drawText(font, str, f3, f4);
        float f5 = f - 0.5f;
        engine.drawText(font, str, f5, f4);
        float f6 = f2 - 0.5f;
        engine.drawText(font, str, f5, f6);
        engine.drawText(font, str, f3, f6);
        engine.setTransparency(60);
        float f7 = f + 1.0f;
        engine.drawText(font, str, f7, f2);
        float f8 = f - 1.0f;
        engine.drawText(font, str, f8, f2);
        float f9 = f2 + 1.0f;
        engine.drawText(font, str, f, f9);
        float f10 = f2 - 1.0f;
        engine.drawText(font, str, f, f10);
        engine.setTransparency(50);
        engine.drawText(font, str, f7, f10);
        engine.drawText(font, str, f8, f10);
        engine.drawText(font, str, f7, f9);
        engine.drawText(font, str, f8, f9);
        engine.setTransparency(255);
        engine.setColor(red, green, blue);
        engine.drawText(font, str, f, f2);
    }

    public void draw(Image image, float f, float f2, int i, int i2, float f3, Engine engine) {
        float fSmoothSingle = smoothSingle(f3);
        int transparency = engine.getTransparency();
        float f4 = transparency;
        int iRound = Math.round(transModulator(fSmoothSingle) * f4);
        int iRound2 = Math.round(f4 * transModulator(1.0f - fSmoothSingle));
        engine.setTransparency(iRound);
        engine.drawImage(image, f, f2, i);
        engine.setTransparency(iRound2);
        engine.drawImage(image, f, f2, i2);
        engine.setTransparency(transparency);
    }

    public void drawArrow(int i, int i2, Gadget gadget, int i3) {
        drawArrow(i + gadget.getX(), i2 + gadget.getY(), gadget.getWidth(), gadget.getHeight(), i3, gadget.getSkin().engine);
    }

    public void drawArrow(int i, int i2, int i3, int i4, int i5, Engine engine) {
        int i6;
        int i7;
        float fSin = ((float) Math.sin(((TimeUtils.millis() % 1000) * 6.283185307179586d) / 1000.0d)) * 2.0f;
        if (i5 == 0) {
            i6 = 1;
            i7 = 0;
        } else if (i5 == 1) {
            i6 = 0;
            i7 = -1;
        } else if (i5 == 2) {
            i7 = 0;
            i6 = -1;
        } else if (i5 != 3) {
            i6 = 0;
            i7 = 0;
        } else {
            i7 = 1;
            i6 = 0;
        }
        float f = i + (((1 - i7) * i3) / 2) + (i7 * fSin);
        float f2 = i6;
        float f3 = i2 + (((1 - i6) * i4) / 2) + (fSin * f2);
        float fSqrt = (float) Math.sqrt(2.0d);
        int red = engine.getRed();
        int green = engine.getGreen();
        int blue = engine.getBlue();
        engine.setColor(0, 0, 0);
        float f4 = (i7 * fSqrt) + f;
        float f5 = (i6 * fSqrt) + f3;
        float f6 = f - (11 * i7);
        float f7 = 11 + (1 * fSqrt);
        float f8 = f2 * f7;
        float f9 = f3 - (11 * i6);
        float f10 = (-i7) * f7;
        drawTriangle(f4, f5, f6 + f8, f9 + f10, f6 - f8, f9 - f10, engine);
        engine.setColor(red, green, blue);
        drawTriangle(f, f3, f - ((i7 + i6) * 10), f3 - ((i6 + r10) * 10), f - ((i7 - i6) * 10), f3 - ((i6 - r10) * 10), engine);
    }

    public void drawCircle(float f, float f2, float f3, float f4, Engine engine) {
        drawCircle(f, f2, f3, f4, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 6.2831855f, 1.0f, 1.0f, engine);
    }

    public void drawCircle(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, Engine engine) {
        float f9 = (f6 - f5) / 32;
        int i = 0;
        float f10 = 0.0f;
        float f11 = 0.0f;
        float f12 = 0.0f;
        float f13 = 0.0f;
        while (i <= 32) {
            double d = f5 + (i * f9);
            float fCos = ((float) Math.cos(d)) * f7;
            float fSin = ((float) Math.sin(d)) * f8;
            float f14 = f + (f4 * fCos);
            float f15 = f2 + (f4 * fSin);
            float f16 = f + (fCos * f3);
            float f17 = f2 + (fSin * f3);
            if (i > 0) {
                drawQuad(f10, f11, f16, f17, f14, f15, f12, f13, engine);
            }
            i++;
            f10 = f16;
            f11 = f17;
            f12 = f14;
            f13 = f15;
        }
    }

    public void drawTriangle(float f, float f2, float f3, float f4, float f5, float f6, Engine engine) {
        if (this.rectCoords == null) {
            this.rectCoords = Resources.IMAGE_WORLD.getUVCoords(Resources.FRAME_RECT, new float[4]);
        }
        Texture texture = Resources.TEXTURE_WORLD;
        float[] fArr = this.rectCoords;
        float f7 = fArr[0];
        float f8 = fArr[1];
        float f9 = fArr[2];
        engine.drawTextureTriangle(texture, f, f2, f3, f4, f5, f6, f7, f8, f9, fArr[3], f9, f8, 0);
    }

    public void drawQuad(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, Engine engine) {
        if (this.rectCoords == null) {
            this.rectCoords = Resources.IMAGE_WORLD.getUVCoords(Resources.FRAME_RECT, new float[4]);
        }
        Texture texture = Resources.TEXTURE_WORLD;
        float[] fArr = this.rectCoords;
        engine.drawTextureRect(texture, f, f2, f3, f4, f5, f6, f7, f8, fArr[0], fArr[1], fArr[2], fArr[3], 0);
    }

    public void drawQuad(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, int i, Engine engine) {
        Texture texture = Resources.IMAGE_WORLD.getTexture(i);
        float[] uVCoords = Resources.IMAGE_WORLD.getUVCoords(i, this.tempCoords);
        engine.drawTextureRect(texture, f, f2, f3, f4, f5, f6, f7, f8, uVCoords[0], uVCoords[1], uVCoords[2], uVCoords[3], 0);
    }

    public void drawLine(float f, float f2, float f3, float f4, float f5, Engine engine) {
        if (this.rectCoords == null) {
            this.rectCoords = Resources.IMAGE_WORLD.getUVCoords(Resources.FRAME_RECT, new float[4]);
        }
        float fSqrt = ((float) Math.sqrt((r1 * r1) + (r2 * r2))) * 2.0f;
        float f6 = ((f4 - f2) / fSqrt) * f5;
        float f7 = (-((f3 - f) / fSqrt)) * f5;
        float f8 = f3 - f6;
        float f9 = f4 - f7;
        float f10 = f + f6;
        float f11 = f2 + f7;
        float[] fArr = this.rectCoords;
        float f12 = fArr[2];
        float f13 = fArr[1];
        engine.drawTextureTriangle(Resources.TEXTURE_WORLD, f3 + f6, f4 + f7, f8, f9, f10, f11, f12, f13, f12, fArr[3], fArr[0], f13, 0);
        float f14 = f2 - f7;
        float[] fArr2 = this.rectCoords;
        float f15 = fArr2[2];
        float f16 = fArr2[3];
        float f17 = fArr2[0];
        engine.drawTextureTriangle(Resources.TEXTURE_WORLD, f8, f9, f - f6, f14, f10, f11, f15, f16, f17, f16, f17, fArr2[1], 0);
    }

    public void drawGadgetCircle(Gadget gadget, int i, int i2) {
        drawGadgetCircle(gadget, i, i2, gadget.getWidth() / 2);
    }

    public void drawAnimatedGadgetCircle(Gadget gadget, int i, int i2) {
        drawGadgetCircle(gadget, i, i2, (gadget.getWidth() / 2) + ((float) (((double) (gadget.getWidth() / 8)) * ((Math.sin(((double) (((TimeUtils.millis() % ((long) 2000)) / 2000) * 2.0f)) * 3.141592653589793d) * 0.5d) + 0.5d))));
    }

    public void drawGadgetCircle(Gadget gadget, int i, int i2, float f) {
        Engine engine = gadget.getSkin().engine;
        engine.setTransparency(30);
        float x = gadget.getX() + i + (gadget.getWidth() / 2);
        float y = gadget.getY() + i2 + (gadget.getHeight() / 2);
        drawCircle(x, y, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f, gadget.getSkin().engine);
        engine.setTransparency(80);
        drawCircle(x, y, f - 1.0f, f, gadget.getSkin().engine);
        engine.setTransparency(255);
    }

    public void drawHalo(int i, int i2, Engine engine) {
        drawHalo(i, i2, engine, 1.0f);
    }

    public void drawHalo(int i, int i2, Engine engine, float f) {
        float f2 = f * 0.8f;
        float fMillis = ((TimeUtils.millis() % 8000) / 8000.0f) * 2.0f * 3.1415927f;
        engine.setAdditive(255);
        engine.setScale(f2, f2);
        float f3 = i;
        float f4 = i2;
        engine.drawImageRotated(Resources.IMAGE_WORLD, f3, f4, Resources.FRAME_HALO, fMillis);
        engine.setScale(-f2, f2);
        engine.drawImageRotated(Resources.IMAGE_WORLD, f3, f4, Resources.FRAME_HALO, -fMillis);
        engine.setScale(1.0f, 1.0f);
        engine.setAdditive(0);
    }

    public void drawAnimations(Drawer drawer, List<AnimationSpot> list, int[][] iArr, int i, int i2, float f, int i3, boolean z) {
        drawAnimations(drawer, list, iArr, i, i2, f, i3, null, null, null, z);
    }

    public void drawAnimations(Drawer drawer, List<AnimationSpot> list, int[][] iArr, int i, int i2, float f, int i3, AnimationSpots animationSpots, boolean z) {
        float[] speeds;
        int[] offsets;
        Color[] colors;
        if (animationSpots != null) {
            speeds = animationSpots.getSpeeds();
            offsets = animationSpots.getOffsets();
            colors = animationSpots.getColors();
        } else {
            speeds = null;
            offsets = null;
            colors = null;
        }
        drawAnimations(drawer, list, iArr, i, i2, f, i3, speeds, offsets, colors, z, 0, list.size());
    }

    public void drawAnimations(Drawer drawer, List<AnimationSpot> list, int[][] iArr, int i, int i2, float f, int i3, float[] fArr, int[] iArr2, Color[] colorArr, boolean z) {
        drawAnimations(drawer, list, iArr, i, i2, f, i3, fArr, iArr2, colorArr, z, 0, list.size());
    }

    public void drawAnimations(Drawer drawer, List<AnimationSpot> list, int[][] iArr, int i, int i2, float f, int i3, float[] fArr, int[] iArr2, Color[] colorArr, boolean z, int i4, int i5) {
        Color color;
        Drawing drawing;
        Drawer drawer2;
        int i6;
        float f2;
        int i7;
        boolean z2;
        if (iArr != null) {
            int[] iArr3 = iArr[i2 % iArr.length];
            for (int i8 = 0; i8 < iArr3.length; i8++) {
                AnimationSpot animationSpot = list.get(iArr3[i8]);
                AnimationDraft animationDraft = animationSpot.draft;
                if (animationSpot.isTargeted(animationSpot.rotationAware ? i : i2) && (z || !animationDraft.lightSwitching)) {
                    drawAnimation(drawer, animationSpot, i, f, i3, fArr != null ? fArr[i8] : 1.0f, iArr2 != null ? iArr2[i8] : 0, colorArr != null ? colorArr[i8] : null, z);
                    List<AnimationSpot> list2 = animationDraft.animationSpots;
                    if (list2 != null) {
                        drawAnimations(drawer, list2, animationDraft.animationSpotIndices, i, i2, f, i3, z);
                    }
                }
            }
            return;
        }
        for (int i9 = i4; i9 < i5; i9++) {
            AnimationSpot animationSpot2 = list.get(i9);
            AnimationDraft animationDraft2 = animationSpot2.draft;
            if (animationSpot2.isTargeted(animationSpot2.rotationAware ? i : i2) && (z || !animationDraft2.lightSwitching)) {
                float f3 = fArr != null ? fArr[i9] : 1.0f;
                int i10 = iArr2 != null ? iArr2[i9] : 0;
                if (colorArr != null) {
                    color = colorArr[i9];
                    drawer2 = drawer;
                    i6 = i;
                    f2 = f;
                    i7 = i3;
                    z2 = z;
                    drawing = this;
                } else {
                    color = null;
                    drawing = this;
                    drawer2 = drawer;
                    i6 = i;
                    f2 = f;
                    i7 = i3;
                    z2 = z;
                }
                drawing.drawAnimation(drawer2, animationSpot2, i6, f2, i7, f3, i10, color, z2);
                List<AnimationSpot> list3 = animationDraft2.animationSpots;
                if (list3 != null) {
                    drawAnimations(drawer, list3, animationDraft2.animationSpotIndices, i, i2, f, i3, z);
                }
            }
        }
    }

    public void drawAnimation(Drawer drawer, AnimationSpot animationSpot, int i, float f, int i2, float f2, int i3, Color color, boolean z) {
        AnimationDraft animationDraft;
        int[] iArr;
        int length;
        int red;
        int green;
        int blue;
        int transparency;
        int i4;
        int i5;
        int i6 = animationSpot.flags;
        if (i6 == 0 || (i2 & i6) != 0) {
            int i7 = animationSpot.daysTotal;
            if ((i7 > 0 && ((i4 = (int) (drawer.absoluteDay % ((long) i7))) < (i5 = animationSpot.startDay) || i4 >= (i5 + animationSpot.days) % i7)) || (iArr = (animationDraft = animationSpot.draft).frames) == null || iArr.length == 0) {
                return;
            }
            int iRound = Math.round(((f * animationDraft.speed) + animationSpot.shift) * f2) + i3;
            boolean z2 = true;
            if (animationDraft.rotationAware) {
                int iMax = Math.max(animationDraft.frames.length / 4, 1);
                length = ((iRound % iMax) + (iMax * (((8 - drawer.rotation) + ((animationSpot.frameShift * i) % 4)) % 4))) % animationDraft.frames.length;
            } else {
                length = iRound % animationDraft.frames.length;
            }
            if (!animationDraft.lightSwitching || animationDraft.nightLightProbability * animationSpot.nightLightProbability >= 1.0f || Math.abs((((long) (((drawer.bTileX * 237) + (drawer.bTileY * 3591)) + animationSpot.seed)) + (((long) Math.floor(drawer.daytimeDay + 0.5d)) * 2987)) % 100) / 100.0f <= animationDraft.nightLightProbability * animationSpot.nightLightProbability) {
                Engine engine = drawer.engine;
                if (animationDraft.colors == null && animationSpot.color == null && color == null) {
                    red = 0;
                    z2 = false;
                    green = 0;
                    blue = 0;
                    transparency = 0;
                } else {
                    red = engine.getRed();
                    green = engine.getGreen();
                    blue = engine.getBlue();
                    transparency = engine.getTransparency();
                    Color[] colorArr = animationDraft.colors;
                    if (colorArr != null) {
                        tintEngineColor(engine, colorArr[colorArr.length > 1 ? ((((drawer.bTileX * 237) + (drawer.bTileY * 3591)) + animationSpot.seed) & 255) % colorArr.length : 0]);
                    }
                    Color color2 = animationSpot.color;
                    if (color2 != null) {
                        tintEngineColor(engine, color2);
                    }
                    if (color != null) {
                        tintEngineColor(engine, color);
                    }
                }
                boolean z3 = drawer.useShading;
                if (animationDraft.light) {
                    drawer.useShading = false;
                }
                drawer.draw(Resources.IMAGE_WORLD, animationSpot.x, animationSpot.y, animationDraft.frames[length]);
                drawer.useShading = z3;
                if (z2) {
                    engine.setColorAndTransparency(red, green, blue, transparency);
                }
            }
        }
    }

    public void tintEngineColor(Engine engine, Color color) {
        if (color == null) {
            return;
        }
        engine.setColorAndTransparency((engine.getRed() * color.getRed()) / 255, (engine.getGreen() * color.getGreen()) / 255, (engine.getBlue() * color.getBlue()) / 255, (engine.getTransparency() * color.getAlpha()) / 255);
    }

    public void drawTiled(Engine engine, Image image, float f, float f2, int i) {
        drawTiled(engine, image, f, f2, i, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, engine.getVirtualWidth(), engine.getVirtualHeight());
    }

    public void drawTiled(Engine engine, Image image, float f, float f2, int i, float f3, float f4, float f5, float f6) {
        float width = image.getWidth(i);
        float height = image.getHeight(i);
        float fAbs = Math.abs(engine.getScaleX());
        float fAbs2 = Math.abs(engine.getScaleY());
        float f7 = width * fAbs;
        float f8 = height * fAbs2;
        float f9 = (((f % f7) + f7) % f7) + (f3 - f7);
        float f10 = (((f2 % f8) + f8) % f8) + (f4 - f8);
        float f11 = f3 + f5;
        float f12 = f4 + f6;
        if (fAbs < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            f9 -= f7;
            f11 += f7;
        }
        if (fAbs2 < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            f10 -= f8;
            f12 += f8;
        }
        while (f9 < f11) {
            for (float f13 = f10; f13 < f12; f13 += f8) {
                engine.drawImage(image, f9, f13, i);
            }
            f9 += f7;
        }
    }

    public void drawNewMarker(Engine engine, int i, int i2, int i3, int i4, float f, float f2) {
        engine.drawImage(Resources.IMAGE_WORLD, i, i2 + (-Math.max(((float) Math.sin(((double) (((TimeUtils.millis() % 1000) / 1000.0f) * 2.0f)) * 3.141592653589793d)) * 3.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT)), i3, i4, f, f2, this.IS_NEW_MARKER.frames[0]);
    }

    public void drawRoundedFit(Engine engine, Image image, float f, float f2, float f3, float f4, int i, float f5) {
        Drawing drawing;
        Engine engine2;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        float[] uVStream = image.getUVStream();
        int i2 = i * 8;
        float f13 = uVStream[i2];
        float f14 = uVStream[i2 + 1];
        float fLerp = uVStream[i2 + 2];
        float fLerp2 = uVStream[i2 + 3];
        float f15 = uVStream[i2 + 4];
        float f16 = uVStream[i2 + 5];
        Texture texture = image.getTexture(i);
        int typeMask = image.getTypeMask(i);
        float f17 = f3 / f4;
        float f18 = f15 / f16;
        if (f18 > f17) {
            float f19 = (1.0f - (f17 / f18)) * 0.5f;
            float fLerp3 = MathUtils.lerp(f13, fLerp, f19);
            fLerp = MathUtils.lerp(f13, fLerp, 1.0f - f19);
            drawing = this;
            engine2 = engine;
            f6 = f;
            f7 = f2;
            f8 = f3;
            f9 = f4;
            f10 = f5;
            f11 = fLerp3;
        } else {
            if (f18 < f17) {
                float f20 = (1.0f - (f18 / f17)) * 0.5f;
                float fLerp4 = MathUtils.lerp(f14, fLerp2, f20);
                fLerp2 = MathUtils.lerp(f14, fLerp2, 1.0f - f20);
                drawing = this;
                engine2 = engine;
                f6 = f;
                f7 = f2;
                f8 = f3;
                f9 = f4;
                f10 = f5;
                f12 = fLerp4;
                f11 = f13;
                drawing.drawRounded(engine2, f6, f7, f8, f9, f11, f12, fLerp, fLerp2, texture, typeMask, f10);
            }
            drawing = this;
            engine2 = engine;
            f6 = f;
            f7 = f2;
            f8 = f3;
            f9 = f4;
            f10 = f5;
            f11 = f13;
        }
        f12 = f14;
        drawing.drawRounded(engine2, f6, f7, f8, f9, f11, f12, fLerp, fLerp2, texture, typeMask, f10);
    }

    public void drawRounded(Engine engine, Image image, float f, float f2, float f3, float f4, int i, float f5) {
        float[] uVStream = image.getUVStream();
        int i2 = i * 8;
        drawRounded(engine, f, f2, f3, f4, uVStream[i2], uVStream[i2 + 1], uVStream[i2 + 2], uVStream[i2 + 3], image.getTexture(i), image.getTypeMask(i), f5);
    }

    public void drawRounded(Engine engine, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, Texture texture, int i, float f9) {
        float f10 = f2 + f9;
        float f11 = f + f3;
        float f12 = f2 + f4;
        float f13 = f12 - f9;
        float f14 = f9 / f4;
        float f15 = (f4 - f9) / f4;
        engine.drawTextureRect(texture, f, f10, f11, f13, f5, MathUtils.lerp(f6, f8, f14), f7, MathUtils.lerp(f6, f8, f15), i);
        if (f9 <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            return;
        }
        float f16 = f + f9;
        float f17 = f11 - f9;
        float f18 = f9 / f3;
        float f19 = (f3 - f9) / f3;
        engine.drawTextureRect(texture, f16, f2, f17, f10, MathUtils.lerp(f5, f7, f18), f6, MathUtils.lerp(f5, f7, f19), MathUtils.lerp(f6, f8, f14), i);
        engine.drawTextureRect(texture, f16, f13, f17, f12, MathUtils.lerp(f5, f7, f18), MathUtils.lerp(f6, f8, f15), MathUtils.lerp(f5, f7, f19), f8, i);
        float f20 = f9 - (this.CORNER_MID_COS * f9);
        float f21 = f + f20;
        float f22 = f2 + f20;
        float f23 = f20 / f3;
        float f24 = f20 / f4;
        engine.drawTextureRect(texture, f21, f22, f16, f2, f16, f10, f, f10, MathUtils.lerp(f5, f7, f23), MathUtils.lerp(f6, f8, f24), MathUtils.lerp(f5, f7, f18), f6, MathUtils.lerp(f5, f7, f18), MathUtils.lerp(f6, f8, f14), f5, MathUtils.lerp(f6, f8, f14), i);
        float f25 = f11 - f20;
        float f26 = (f3 - f20) / f3;
        engine.drawTextureRect(texture, f17, f2, f25, f22, f11, f10, f17, f10, MathUtils.lerp(f5, f7, f19), f6, MathUtils.lerp(f5, f7, f26), MathUtils.lerp(f6, f8, f24), f7, MathUtils.lerp(f6, f8, f14), MathUtils.lerp(f5, f7, f19), MathUtils.lerp(f6, f8, f14), i);
        float f27 = f12 - f20;
        float f28 = (f4 - f20) / f4;
        engine.drawTextureRect(texture, f17, f13, f11, f13, f25, f27, f17, f12, MathUtils.lerp(f5, f7, f19), MathUtils.lerp(f6, f8, f15), f7, MathUtils.lerp(f6, f8, f15), MathUtils.lerp(f5, f7, f26), MathUtils.lerp(f6, f8, f28), MathUtils.lerp(f5, f7, f19), f8, i);
        engine.drawTextureRect(texture, f, f13, f16, f13, f16, f12, f21, f27, f5, MathUtils.lerp(f6, f8, f15), MathUtils.lerp(f5, f7, f18), MathUtils.lerp(f6, f8, f15), MathUtils.lerp(f5, f7, f18), f8, MathUtils.lerp(f5, f7, f23), MathUtils.lerp(f6, f8, f28), i);
    }
}
