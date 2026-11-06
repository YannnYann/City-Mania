package info.flowersoft.theotown.ui;

import io.blueflower.stapel2d.drawing.Color;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: CursorManager.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CursorStyle {
    public static final /* synthetic */ EnumEntries $ENTRIES;
    public static final /* synthetic */ CursorStyle[] $VALUES;
    public static final CursorStyle Aurora;
    public static final CursorStyle Blue;
    public static final CursorStyle CityLights;
    public static final CursorStyle Cyberpunk;
    public static final CursorStyle Dark;
    public static final CursorStyle Default;
    public static final CursorStyle Gold;
    public static final CursorStyle Steampunk;
    public final CursorPalette darkPalette;
    public final CursorPalette palette;

    public static final /* synthetic */ CursorStyle[] $values() {
        return new CursorStyle[]{Default, Dark, Blue, Gold, CityLights, Aurora, Steampunk, Cyberpunk};
    }

    public static EnumEntries<CursorStyle> getEntries() {
        return $ENTRIES;
    }

    public static CursorStyle valueOf(String str) {
        return (CursorStyle) Enum.valueOf(CursorStyle.class, str);
    }

    public static CursorStyle[] values() {
        return (CursorStyle[]) $VALUES.clone();
    }

    public CursorStyle(String str, int i, CursorPalette cursorPalette) {
        this.palette = cursorPalette;
        this.darkPalette = CursorManagerKt.times(0.7f, cursorPalette);
    }

    public final CursorPalette getPalette() {
        return this.palette;
    }

    static {
        Color colorFromHexRGB = Color.fromHexRGB("000000");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB, "fromHexRGB(...)");
        Color colorFromHexRGB2 = Color.fromHexRGB("cccccc");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB2, "fromHexRGB(...)");
        Color colorFromHexRGB3 = Color.fromHexRGB("ffffff");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB3, "fromHexRGB(...)");
        Color colorFromHexRGB4 = Color.fromHexRGB("7e858c");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB4, "fromHexRGB(...)");
        Default = new CursorStyle("Default", 0, new CursorPalette(colorFromHexRGB, colorFromHexRGB2, colorFromHexRGB3, colorFromHexRGB4));
        Color colorFromHexRGB5 = Color.fromHexRGB("000000");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB5, "fromHexRGB(...)");
        Color colorFromHexRGB6 = Color.fromHexRGB("333333");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB6, "fromHexRGB(...)");
        Color colorFromHexRGB7 = Color.fromHexRGB("ffffff");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB7, "fromHexRGB(...)");
        Color colorFromHexRGB8 = Color.fromHexRGB("cccccc");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB8, "fromHexRGB(...)");
        Dark = new CursorStyle("Dark", 1, new CursorPalette(colorFromHexRGB5, colorFromHexRGB6, colorFromHexRGB7, colorFromHexRGB8));
        Color colorFromHexRGB9 = Color.fromHexRGB("000000");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB9, "fromHexRGB(...)");
        Color colorFromHexRGB10 = Color.fromHexRGB("1885B4");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB10, "fromHexRGB(...)");
        Color colorFromHexRGB11 = Color.fromHexRGB("8CFFFF");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB11, "fromHexRGB(...)");
        Color colorFromHexRGB12 = Color.fromHexRGB("001241");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB12, "fromHexRGB(...)");
        Blue = new CursorStyle("Blue", 2, new CursorPalette(colorFromHexRGB9, colorFromHexRGB10, colorFromHexRGB11, colorFromHexRGB12));
        Color colorFromHexRGB13 = Color.fromHexRGB("000000");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB13, "fromHexRGB(...)");
        Color colorFromHexRGB14 = Color.fromHexRGB("FFE514");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB14, "fromHexRGB(...)");
        Color colorFromHexRGB15 = Color.fromHexRGB("FFFAB6");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB15, "fromHexRGB(...)");
        Color colorFromHexRGB16 = Color.fromHexRGB("AA8B02");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB16, "fromHexRGB(...)");
        Gold = new CursorStyle("Gold", 3, new CursorPalette(colorFromHexRGB13, colorFromHexRGB14, colorFromHexRGB15, colorFromHexRGB16));
        Color colorFromHexRGB17 = Color.fromHexRGB("000000");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB17, "fromHexRGB(...)");
        Color colorFromHexRGB18 = Color.fromHexRGB("FFD700");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB18, "fromHexRGB(...)");
        Color colorFromHexRGB19 = Color.fromHexRGB("FF4500");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB19, "fromHexRGB(...)");
        Color colorFromHexRGB20 = Color.fromHexRGB("1E90FF");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB20, "fromHexRGB(...)");
        CityLights = new CursorStyle("CityLights", 4, new CursorPalette(colorFromHexRGB17, colorFromHexRGB18, colorFromHexRGB19, colorFromHexRGB20));
        Color colorFromHexRGB21 = Color.fromHexRGB("000000");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB21, "fromHexRGB(...)");
        Color colorFromHexRGB22 = Color.fromHexRGB("8A2BE2");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB22, "fromHexRGB(...)");
        Color colorFromHexRGB23 = Color.fromHexRGB("00FF7F");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB23, "fromHexRGB(...)");
        Color colorFromHexRGB24 = Color.fromHexRGB("FF1493");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB24, "fromHexRGB(...)");
        Aurora = new CursorStyle("Aurora", 5, new CursorPalette(colorFromHexRGB21, colorFromHexRGB22, colorFromHexRGB23, colorFromHexRGB24));
        Color colorFromHexRGB25 = Color.fromHexRGB("000000");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB25, "fromHexRGB(...)");
        Color colorFromHexRGB26 = Color.fromHexRGB("A0522D");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB26, "fromHexRGB(...)");
        Color colorFromHexRGB27 = Color.fromHexRGB("D2B48C");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB27, "fromHexRGB(...)");
        Color colorFromHexRGB28 = Color.fromHexRGB("708090");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB28, "fromHexRGB(...)");
        Steampunk = new CursorStyle("Steampunk", 6, new CursorPalette(colorFromHexRGB25, colorFromHexRGB26, colorFromHexRGB27, colorFromHexRGB28));
        Color colorFromHexRGB29 = Color.fromHexRGB("000000");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB29, "fromHexRGB(...)");
        Color colorFromHexRGB30 = Color.fromHexRGB("00FFFF");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB30, "fromHexRGB(...)");
        Color colorFromHexRGB31 = Color.fromHexRGB("FF00FF");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB31, "fromHexRGB(...)");
        Color colorFromHexRGB32 = Color.fromHexRGB("FFFF00");
        Intrinsics.checkNotNullExpressionValue(colorFromHexRGB32, "fromHexRGB(...)");
        Cyberpunk = new CursorStyle("Cyberpunk", 7, new CursorPalette(colorFromHexRGB29, colorFromHexRGB30, colorFromHexRGB31, colorFromHexRGB32));
        CursorStyle[] cursorStyleArr$values = $values();
        $VALUES = cursorStyleArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(cursorStyleArr$values);
    }

    public final CursorPalette getDarkPalette() {
        return this.darkPalette;
    }
}
