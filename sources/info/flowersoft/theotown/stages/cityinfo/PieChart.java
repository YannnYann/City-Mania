package info.flowersoft.theotown.stages.cityinfo;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.IntList;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class PieChart {
    public final Skin skin;
    public final String title;
    public final List<String> names = new ArrayList();
    public final IntList amounts = new IntList();
    public final List<Color> colors = new ArrayList();

    public PieChart(String str, Skin skin) {
        this.title = str;
        this.skin = skin;
    }

    public void addEntry(String str, int i, Color color) {
        this.names.add(str);
        this.amounts.add(i);
        this.colors.add(color);
    }

    public void draw(Engine engine, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        Engine engine2 = engine;
        float f = 0.5f;
        float f2 = (i3 * 0.5f) + i;
        float f3 = i2;
        float f4 = (i4 * 0.5f) + f3 + 5.0f;
        float fMin = ((Math.min(i3, i4) * 0.5f) - 1.0f) - 10.0f;
        float f5 = fMin + 1.0f;
        float f6 = fMin * 0.5f;
        int iSum = this.amounts.sum();
        engine2.setColor(this.skin.cText);
        engine2.drawText(Resources.skin.fontDefault, this.title, f2, f3, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        engine2.setColor(this.skin.cText);
        engine2.setTransparency(60);
        int i7 = -1;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (true) {
            i5 = 360;
            i6 = 1;
            if (i8 >= 360) {
                break;
            }
            int i11 = (iSum * i8) / 360;
            int i12 = i9;
            int i13 = i10;
            while (iSum > 0 && i11 >= i13 && i7 < this.amounts.size() - 1) {
                i7++;
                i13 += this.amounts.get(i7);
                engine2.setColorAndTransparency(this.colors.get(i7));
                if (this.amounts.get(i7) > 0) {
                    i12++;
                }
            }
            int i14 = i8 + 5;
            Drawing drawing = Drawing.getInstance();
            double d = (i8 - 90) * 0.017453292f;
            float f7 = fMin;
            float fCos = f2 + (f7 * ((float) Math.cos(d)));
            float fSin = (f7 * ((float) Math.sin(d))) + f4;
            double d2 = (i8 - 85) * 0.017453292f;
            int i15 = i7;
            float f8 = f2;
            float f9 = f4;
            drawing.drawTriangle(f8, f9, fCos, fSin, (((float) Math.cos(d2)) * f7) + f2, f4 + (((float) Math.sin(d2)) * f7), engine);
            fMin = f7;
            f2 = f8;
            engine2 = engine;
            i10 = i13;
            i7 = i15;
            i9 = i12;
            f = f;
            f4 = f9;
            i8 = i14;
        }
        float f10 = f4;
        float f11 = f;
        float f12 = fMin;
        float f13 = f2;
        engine2.setColorAndTransparency(this.skin.cTextSecondary);
        int i16 = 0;
        while (i16 < i5) {
            double d3 = (i16 - 90) * 0.017453292f;
            double d4 = (i16 - 85) * 0.017453292f;
            Drawing.getInstance().drawQuad((((float) Math.cos(d3)) * f12) + f13, f10 + (((float) Math.sin(d3)) * f12), (((float) Math.cos(d4)) * f12) + f13, f10 + (((float) Math.sin(d4)) * f12), (((float) Math.cos(d4)) * f5) + f13, f10 + (((float) Math.sin(d4)) * f5), (((float) Math.cos(d3)) * f5) + f13, f10 + (((float) Math.sin(d3)) * f5), engine);
            engine2 = engine;
            i9 = i9;
            i6 = 1;
            i5 = 360;
            i16 += 5;
            f13 = f13;
        }
        int i17 = i9;
        float f14 = f13;
        int i18 = i6;
        engine2.setColor(Colors.WHITE);
        if (i17 > i18) {
            int i19 = 0;
            for (int i20 = 0; i20 < this.amounts.size(); i20++) {
                int i21 = this.amounts.get(i20);
                if (i21 > 0) {
                    double d5 = ((((i19 + (i21 * f11)) / iSum) * 360.0f) - 90) * 0.017453292f;
                    Drawing.getInstance().drawShadowedText(this.names.get(i20), f14 + (((float) Math.cos(d5)) * f6), f10 + (((float) Math.sin(d5)) * f6), Resources.skin.fontSmall, Colors.BLACK, engine, 0.5f, 0.5f);
                }
                i19 += i21;
            }
            return;
        }
        for (int i22 = 0; i22 < this.amounts.size(); i22++) {
            if (this.amounts.get(i22) > 0) {
                engine.drawText(Resources.skin.fontSmall, this.names.get(i22), f14, f10, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.5f);
                return;
            }
        }
    }
}
