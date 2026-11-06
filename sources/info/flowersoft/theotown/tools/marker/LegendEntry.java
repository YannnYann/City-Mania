package info.flowersoft.theotown.tools.marker;

import io.blueflower.stapel2d.drawing.Color;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LegendEntry.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class LegendEntry {
    public final Color color;
    public final String text;

    public LegendEntry(String text, Color color) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(color, "color");
        this.text = text;
        this.color = color;
    }

    public final String getText() {
        return this.text;
    }

    public final Color getColor() {
        return this.color;
    }
}
