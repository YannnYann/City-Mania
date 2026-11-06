package info.flowersoft.theotown.ui;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: CursorManager.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CursorType {
    public static final /* synthetic */ EnumEntries $ENTRIES;
    public static final /* synthetic */ CursorType[] $VALUES;
    public static final CursorType Normal = new CursorType("Normal", 0);
    public static final CursorType Delete = new CursorType("Delete", 1);
    public static final CursorType Build = new CursorType("Build", 2);
    public static final CursorType Crosshair = new CursorType("Crosshair", 3);
    public static final CursorType Hand = new CursorType("Hand", 4);
    public static final CursorType Move = new CursorType("Move", 5);
    public static final CursorType NotAllowed = new CursorType("NotAllowed", 6);
    public static final CursorType Wait = new CursorType("Wait", 7);
    public static final CursorType NoMoney = new CursorType("NoMoney", 8);

    public static final /* synthetic */ CursorType[] $values() {
        return new CursorType[]{Normal, Delete, Build, Crosshair, Hand, Move, NotAllowed, Wait, NoMoney};
    }

    public static EnumEntries<CursorType> getEntries() {
        return $ENTRIES;
    }

    public static CursorType valueOf(String str) {
        return (CursorType) Enum.valueOf(CursorType.class, str);
    }

    public static CursorType[] values() {
        return (CursorType[]) $VALUES.clone();
    }

    public CursorType(String str, int i) {
    }

    static {
        CursorType[] cursorTypeArr$values = $values();
        $VALUES = cursorTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(cursorTypeArr$values);
    }
}
