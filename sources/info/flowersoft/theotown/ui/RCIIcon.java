package info.flowersoft.theotown.ui;

import info.flowersoft.theotown.city.components.Demand;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Icon;

/* JADX INFO: loaded from: classes4.dex */
public class RCIIcon extends Icon {
    public Demand demand;
    public float[] interest;

    public RCIIcon(Demand demand, Gadget gadget) {
        super(0, 0, 0, 0, 0, gadget);
        this.interest = new float[3];
        this.demand = demand;
    }

    @Override // io.blueflower.stapel2d.gui.Icon, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        int i3;
        int x = getX() + i + 1;
        int y = getY() + i2;
        int i4 = y + 1;
        char c = 2;
        int width = getWidth() - 2;
        int height = getHeight();
        int i5 = height - 2;
        int i6 = width / 3;
        int i7 = i6 - 1;
        int i8 = x + (((width - (i7 * 3)) - 2) / 2);
        this.interest[0] = this.demand.getResidential();
        this.interest[1] = this.demand.getCommercial();
        this.interest[2] = this.demand.getIndustrial();
        int i9 = 0;
        while (true) {
            if (i9 >= 3) {
                break;
            }
            float[] fArr = this.interest;
            fArr[i9] = Math.signum(fArr[i9]) * (1.0f - ((float) Math.exp(Math.abs(this.interest[i9]) * (-0.025f))));
            float[] fArr2 = this.interest;
            float f = fArr2[i9];
            fArr2[i9] = Math.round(((((0.9f * f) * (height - 8)) / 2.0f) - 1.0f) + Math.signum(f));
            i9++;
            c = c;
            width = width;
        }
        char c2 = c;
        int i10 = width;
        Engine engine = this.skin.engine;
        engine.setTransparency(100);
        int i11 = 0;
        for (i3 = 3; i11 < i3; i3 = i3) {
            drawRect((i11 * i6) + i8, y + 4, i7, height - 8, Colors.DARK_GRAY);
            i11++;
        }
        engine.setTransparency(255);
        int i12 = i4 + (i5 / 2);
        int i13 = i6 - 3;
        drawBar(engine, i8 + 1, i12, i13, -Math.round(this.interest[0]), Resources.COLOR_RES1);
        int i14 = i8 + i6;
        drawBar(engine, i14 + 1, i12, i13, -Math.round(this.interest[1]), Resources.COLOR_COM1);
        drawBar(engine, i14 + i6 + 1, i12, i13, -Math.round(this.interest[c2]), Resources.COLOR_IND1);
        engine.setColor(Colors.BLACK);
        engine.drawImage(Resources.IMAGE_WORLD, x, i12, i10, 1.0f, Resources.FRAME_RECT);
        engine.setColor(Colors.WHITE);
    }

    public static void drawBar(Engine engine, int i, int i2, int i3, int i4, Color color) {
        int i5;
        int i6 = i4;
        if (i6 < 0) {
            i6 = -i6;
            i5 = i2 - i6;
        } else {
            i5 = i2 + 1;
        }
        int i7 = i6;
        int i8 = i5;
        Color color2 = Colors.BLACK;
        engine.setColorAndTransparency(color2);
        engine.drawImage(Resources.IMAGE_WORLD, i - 1, i8 - 1, i3 + 2, i7 + 2, Resources.FRAME_RECT);
        engine.setColorAndTransparency(color);
        float f = i;
        float f2 = i8;
        float f3 = i7;
        engine.drawImage(Resources.IMAGE_WORLD, f, f2, i3, f3, Resources.FRAME_RECT);
        Color color3 = Colors.TEMP;
        engine.setColorAndTransparency(color3.setTo(color).lerp(color2, 0.3f));
        engine.drawImage(Resources.IMAGE_WORLD, (i + i3) - 1, f2, 1.0f, f3, Resources.FRAME_RECT);
        engine.setColorAndTransparency(color3.setTo(color).lerp(Colors.WHITE, 0.5f));
        engine.drawImage(Resources.IMAGE_WORLD, f, f2, 1.0f, f3, Resources.FRAME_RECT);
    }

    public final void drawRect(int i, int i2, int i3, int i4, Color color) {
        Engine engine = this.skin.engine;
        engine.setColor(color);
        engine.drawImage(Resources.IMAGE_WORLD, i, i2, i3, i4, Resources.FRAME_RECT);
    }
}
