package info.flowersoft.theotown.ui;

import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;

/* JADX INFO: loaded from: classes4.dex */
public class StaticDebugInfo extends DebugInfo {
    public final Color color;
    public final String text;

    public StaticDebugInfo(String str) {
        this(str, Colors.WHITE);
    }

    public StaticDebugInfo(String str, Color color) {
        this.text = str;
        this.color = color;
    }

    @Override // info.flowersoft.theotown.ui.DebugInfo
    public String getText() {
        return this.text;
    }

    @Override // info.flowersoft.theotown.ui.DebugInfo
    public Color getColor() {
        return this.color;
    }
}
