package info.flowersoft.theotown.ui;

import io.blueflower.stapel2d.drawing.Color;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CursorManager.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CursorManagerKt {
    public static final CursorPalette times(float f, CursorPalette palette) {
        Intrinsics.checkNotNullParameter(palette, "palette");
        return new CursorPalette(times(f, palette.getOutline()), times(f, palette.getArea()), times(f, palette.getHighlight()), times(f, palette.getShadow()));
    }

    public static final Color times(float f, Color color) {
        return new Color(color.getNormalizedR() * f, color.getNormalizedG() * f, f * color.getNormalizedB(), color.getNormalizedA());
    }
}
