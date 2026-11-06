package info.flowersoft.theotown.tools.marker;

import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gui.Skin;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LegendDrawer.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class LegendDrawer {
    public static final LegendDrawer INSTANCE = new LegendDrawer();

    public final void draw(List<LegendEntry> list, int i, int i2, int i3, int i4, Color color, Engine engine, Skin skin) {
        List<LegendEntry> list2 = list;
        Color iconOutlineColor = color;
        Engine engine2 = engine;
        Intrinsics.checkNotNullParameter(iconOutlineColor, "iconOutlineColor");
        Intrinsics.checkNotNullParameter(engine2, "engine");
        Intrinsics.checkNotNullParameter(skin, "skin");
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        Font font = skin.fontDefault;
        int height = (int) font.getHeight();
        int i5 = i4 / height;
        Iterator<T> it = list2.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        int width = (int) font.getWidth(((LegendEntry) it.next()).getText());
        while (it.hasNext()) {
            int width2 = (int) font.getWidth(((LegendEntry) it.next()).getText());
            if (width < width2) {
                width = width2;
            }
        }
        int iMin = Math.min(i3 / (((list2.size() + i5) - 1) / i5), width + 15);
        int size = list2.size();
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i6 < size) {
            LegendEntry legendEntry = list2.get(i6);
            String text = legendEntry.getText();
            Color color2 = legendEntry.getColor();
            int i9 = i2 + i8;
            engine2.setColorAndTransparency(iconOutlineColor);
            int i10 = i9 + (height / 2);
            engine2.drawImage(Resources.IMAGE_WORLD, i + i7, i10 - 4, 8.0f, 8.0f, Resources.FRAME_RECT);
            Color color3 = Colors.WHITE;
            engine2.setColor(Colors.interpolate(0.2f, color2, color3));
            engine2.drawImage(Resources.IMAGE_WORLD, r6 + 1, i10 - 3, 6.0f, 6.0f, Resources.FRAME_RECT);
            float width3 = font.getWidth(text);
            float f = iMin - 10;
            if (width3 > f) {
                engine2.setScale(f / width3, 1.0f);
            }
            engine2.setColor(color3);
            Font font2 = font;
            Drawing.getInstance().drawOutlinedText(text, r6 + 10, i9, font2, Colors.BLACK, engine);
            engine2 = engine;
            engine2.setScale(1.0f, 1.0f);
            i8 += height;
            if (i8 + height > i4) {
                i7 += iMin;
                i8 = 0;
            }
            i6++;
            list2 = list;
            iconOutlineColor = color;
            font = font2;
        }
        engine2.setColor(Colors.WHITE);
    }
}
