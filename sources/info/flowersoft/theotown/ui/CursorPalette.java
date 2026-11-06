package info.flowersoft.theotown.ui;

import io.blueflower.stapel2d.drawing.Color;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CursorManager.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CursorPalette {
    public final Color area;
    public final Color highlight;
    public final Color outline;
    public final Color shadow;

    public static /* synthetic */ CursorPalette copy$default(CursorPalette cursorPalette, Color color, Color color2, Color color3, Color color4, int i, Object obj) {
        if ((i & 1) != 0) {
            color = cursorPalette.outline;
        }
        if ((i & 2) != 0) {
            color2 = cursorPalette.area;
        }
        if ((i & 4) != 0) {
            color3 = cursorPalette.highlight;
        }
        if ((i & 8) != 0) {
            color4 = cursorPalette.shadow;
        }
        return cursorPalette.copy(color, color2, color3, color4);
    }

    public final Color component1() {
        return this.outline;
    }

    public final Color component2() {
        return this.area;
    }

    public final Color component3() {
        return this.highlight;
    }

    public final Color component4() {
        return this.shadow;
    }

    public final CursorPalette copy(Color outline, Color area, Color highlight, Color shadow) {
        Intrinsics.checkNotNullParameter(outline, "outline");
        Intrinsics.checkNotNullParameter(area, "area");
        Intrinsics.checkNotNullParameter(highlight, "highlight");
        Intrinsics.checkNotNullParameter(shadow, "shadow");
        return new CursorPalette(outline, area, highlight, shadow);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CursorPalette)) {
            return false;
        }
        CursorPalette cursorPalette = (CursorPalette) obj;
        return Intrinsics.areEqual(this.outline, cursorPalette.outline) && Intrinsics.areEqual(this.area, cursorPalette.area) && Intrinsics.areEqual(this.highlight, cursorPalette.highlight) && Intrinsics.areEqual(this.shadow, cursorPalette.shadow);
    }

    public int hashCode() {
        return (((((this.outline.hashCode() * 31) + this.area.hashCode()) * 31) + this.highlight.hashCode()) * 31) + this.shadow.hashCode();
    }

    public String toString() {
        return "CursorPalette(outline=" + this.outline + ", area=" + this.area + ", highlight=" + this.highlight + ", shadow=" + this.shadow + ')';
    }

    public CursorPalette(Color outline, Color area, Color highlight, Color shadow) {
        Intrinsics.checkNotNullParameter(outline, "outline");
        Intrinsics.checkNotNullParameter(area, "area");
        Intrinsics.checkNotNullParameter(highlight, "highlight");
        Intrinsics.checkNotNullParameter(shadow, "shadow");
        this.outline = outline;
        this.area = area;
        this.highlight = highlight;
        this.shadow = shadow;
    }

    public final Color getOutline() {
        return this.outline;
    }

    public final Color getArea() {
        return this.area;
    }

    public final Color getHighlight() {
        return this.highlight;
    }

    public final Color getShadow() {
        return this.shadow;
    }
}
