package info.flowersoft.theotown.ui;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Panel;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class BarGraph extends Panel {
    public final List<Bar> bars;
    public final List<Headline> headlines;
    public float maxValue;
    public float minValue;

    public BarGraph(int i, int i2, int i3, int i4, Gadget gadget) {
        super(i, i2, i3, i4, gadget);
        this.bars = new ArrayList();
        this.headlines = new ArrayList();
    }

    public void setView(float f, float f2) {
        this.minValue = f;
        this.maxValue = f2;
    }

    @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        float f;
        drawNinePatch(i, i2, this.skin.npListBox);
        Engine engine = this.skin.engine;
        int x = getX() + i + 10;
        int y = i2 + getY();
        int i3 = y + 2;
        int width = getWidth() - 12;
        int height = getHeight() - 4;
        int i4 = 0;
        while (i4 < this.bars.size()) {
            Bar bar = this.bars.get(i4);
            int size = (width / this.bars.size()) * i4;
            int size2 = i4 < this.bars.size() + (-1) ? width / this.bars.size() : width - size;
            int i5 = x + size;
            bar.drawX = i5;
            bar.drawY = i3;
            bar.drawWidth = size2;
            bar.drawHeight = height;
            engine.setColorAndTransparency(bar.getBgColor());
            float f2 = height;
            int i6 = height;
            engine.drawImage(this.skin.img, i5, i3, size2, f2, Resources.FRAME_RECT);
            float f3 = this.maxValue;
            float value = bar.getValue();
            float f4 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            int iRound = Math.round(((f3 - (Math.max(value, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) * 0.9f)) / (this.maxValue - this.minValue)) * f2);
            int iRound2 = Math.round(((this.maxValue - (Math.min(bar.getValue(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) * 0.9f)) / (this.maxValue - this.minValue)) * f2);
            int i7 = x + size + 2;
            int i8 = i3 + iRound;
            int i9 = size2 - 4;
            RCIIcon.drawBar(engine, i7, i8, i9, iRound2 - iRound, bar.getColor());
            int i10 = i8 - 2;
            if (bar.getValue() < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                i10 = i3 + iRound2 + 28;
            }
            engine.setColor(255, 255, 255);
            int i11 = 0;
            for (int[] icons = bar.getIcons(); i11 < icons.length; icons = icons) {
                engine.drawImage(Resources.IMAGE_WORLD, r19 + ((r6 - 30) / 2), i10, 26.0f, 26.0f, icons[i11]);
                i11++;
                i7 = i7;
                i9 = i9;
                f4 = 0.0f;
                i10 = i10;
            }
            int i12 = i7;
            int i13 = i9;
            float f5 = f4;
            String[] name = bar.getName();
            Font font = this.skin.fontSmall;
            int iRound3 = Math.round(font.getHeight());
            if (bar.getValue() < f5) {
                iRound2 = iRound - ((name.length - 1) * iRound3);
                f = 1.1f;
            } else {
                f = -0.1f;
            }
            engine.setColor(this.skin.cText);
            int i14 = 0;
            while (i14 < name.length) {
                String[] strArr = name;
                Font font2 = font;
                int i15 = i4;
                float f6 = f;
                engine.drawText(font2, strArr[i14], i12, i3 + iRound2 + (i14 * iRound3), i13, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, f6);
                i14++;
                i6 = i6;
                font = font2;
                f = f6;
                i13 = i13;
                i4 = i15;
                i12 = i12;
                name = strArr;
            }
            i4++;
            height = i6;
        }
        int i16 = height;
        int i17 = 255;
        int i18 = 0;
        while (i18 < this.headlines.size()) {
            Headline headline = this.headlines.get(i18);
            engine.setColor(headline.color);
            engine.setTransparency(headline.color.getAlpha());
            Font font3 = this.skin.fontBig;
            Bar bar2 = this.bars.get(headline.startBar);
            Bar bar3 = this.bars.get(headline.endBar);
            engine.drawText(font3, headline.name, bar2.drawX, bar2.drawY, (bar3.drawX - bar2.drawX) + bar3.drawWidth, (bar3.drawY - bar2.drawY) + bar3.drawHeight, 0.5f, 0.01f);
            i18++;
            i17 = 255;
        }
        int i19 = i17;
        engine.setColor(this.skin.cText);
        engine.setTransparency(i19);
        float f7 = this.maxValue;
        float fRound = Math.round(i3 + ((f7 / (f7 - this.minValue)) * i16));
        engine.drawImage(this.skin.img, r3 + 2, fRound, r16 - 4, 1.0f, Resources.FRAME_RECT);
        float f8 = 0.5f * 8;
        float f9 = x - f8;
        float f10 = y + 10;
        engine.setTransparency(80);
        Drawing.getInstance().drawLine(f9, fRound, f9, f10, 1.0f, engine);
        float f11 = (2.0f * f8) + f10;
        Drawing.getInstance().drawLine(f9, f10, f9 - f8, f11, 1.0f, engine);
        Drawing.getInstance().drawLine(f9, f10, f9 + f8, f11, 1.0f, engine);
        engine.setTransparency(i19);
        engine.setColor(Colors.WHITE);
        drawChildren(i, i2);
    }

    public void addBar(int[] iArr, String str, Color color, float f, Color color2) {
        this.bars.add(new Bar(iArr, str, f, color, color2));
    }

    public void addHeadline(String str, int i, int i2, Color color) {
        this.headlines.add(new Headline(str, i, (i2 + i) - 1, color));
    }

    public void clear() {
        this.bars.clear();
        this.headlines.clear();
    }

    public static final class Bar {
        public final Color bgColor;
        public final Color color;
        public int drawHeight;
        public int drawWidth;
        public int drawX;
        public int drawY;
        public final int[] icons;
        public final String[] name;
        public final float value;

        public Bar(int[] iArr, String str, float f, Color color, Color color2) {
            this.icons = iArr;
            this.name = str.split("\n");
            this.value = f;
            this.color = color;
            this.bgColor = color2;
        }

        public int[] getIcons() {
            return this.icons;
        }

        public String[] getName() {
            return this.name;
        }

        public float getValue() {
            return this.value;
        }

        public Color getColor() {
            return this.color;
        }

        public Color getBgColor() {
            return this.bgColor;
        }
    }

    public static final class Headline {
        public final Color color;
        public final int endBar;
        public final String name;
        public final int startBar;

        public Headline(String str, int i, int i2, Color color) {
            this.name = str;
            this.startBar = i;
            this.endBar = i2;
            this.color = color;
        }
    }
}
