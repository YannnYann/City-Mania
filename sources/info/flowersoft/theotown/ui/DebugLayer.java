package info.flowersoft.theotown.ui;

import com.google.android.gms.ads.AdSize;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Skin;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class DebugLayer extends Gadget {
    public List<DebugInfo> infos;

    public DebugLayer(Gadget gadget) {
        super(gadget);
        setPadding(0);
        this.infos = new ArrayList();
    }

    public void addInfo(DebugInfo debugInfo) {
        this.infos.add(debugInfo);
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        DebugLayer debugLayer = this;
        float f = i2;
        Skin skin = debugLayer.skin;
        Engine engine = skin.engine;
        Font font = skin.fontSmall;
        Iterator<DebugInfo> it = debugLayer.infos.iterator();
        float f2 = f;
        while (true) {
            float f3 = 1.0f;
            if (it.hasNext()) {
                DebugInfo next = it.next();
                String text = next.getText();
                String[] strArrSplit = text.contains("\n") ? text.split("\n") : null;
                Color color = next.getColor();
                int i3 = 0;
                float f4 = f2;
                while (true) {
                    int i4 = i3;
                    if (i4 < (strArrSplit == null ? 1 : strArrSplit.length)) {
                        String str = strArrSplit != null ? strArrSplit[i4] : text;
                        float width = f3 * font.getWidth(str);
                        float height = f3 * font.getHeight(str);
                        engine.setColor(Colors.BLACK);
                        engine.setScale(f3, f3);
                        engine.setTransparency(AdSize.WIDE_SKYSCRAPER_WIDTH);
                        float f5 = (debugLayer.width - width) + i;
                        String str2 = str;
                        float f6 = f4 + f;
                        engine.drawImage(Resources.IMAGE_WORLD, f5, f6, width, height, Resources.FRAME_RECT);
                        engine.setColor(color);
                        engine.setScale(1.0f, 1.0f);
                        engine.setTransparency(255);
                        engine.drawText(font, str2, f5, f6);
                        f4 += height;
                        i3 = i4 + 1;
                        text = str2;
                        f3 = 1.0f;
                        debugLayer = this;
                    }
                }
                debugLayer = this;
                f2 = f4;
            } else {
                engine.setColor(Colors.WHITE);
                engine.setScale(1.0f, 1.0f);
                super.draw(i, i2);
                return;
            }
        }
    }
}
