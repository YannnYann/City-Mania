package info.flowersoft.theotown.city.buildability;

import io.blueflower.stapel2d.gamestack.Translator;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: NotBuildableReason.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class NotBuildableReason {
    public static final /* synthetic */ EnumEntries $ENTRIES;
    public static final /* synthetic */ NotBuildableReason[] $VALUES;
    public final int nameId;
    public static final NotBuildableReason Generic = new NotBuildableReason("Generic", 0, 1320);
    public static final NotBuildableReason Land = new NotBuildableReason("Land", 1, 2882);
    public static final NotBuildableReason Water = new NotBuildableReason("Water", 2, 1741);
    public static final NotBuildableReason Zone = new NotBuildableReason("Zone", 3, 1273);
    public static final NotBuildableReason MaxCount = new NotBuildableReason("MaxCount", 4, 380);
    public static final NotBuildableReason Terrain = new NotBuildableReason("Terrain", 5, 31);
    public static final NotBuildableReason NoMoney = new NotBuildableReason("NoMoney", 6, 1632);
    public static final NotBuildableReason Blocked = new NotBuildableReason("Blocked", 7, 1719);

    public static final /* synthetic */ NotBuildableReason[] $values() {
        return new NotBuildableReason[]{Generic, Land, Water, Zone, MaxCount, Terrain, NoMoney, Blocked};
    }

    public static EnumEntries<NotBuildableReason> getEntries() {
        return $ENTRIES;
    }

    public static NotBuildableReason valueOf(String str) {
        return (NotBuildableReason) Enum.valueOf(NotBuildableReason.class, str);
    }

    public static NotBuildableReason[] values() {
        return (NotBuildableReason[]) $VALUES.clone();
    }

    public NotBuildableReason(String str, int i, int i2) {
        this.nameId = i2;
    }

    public final int getNameId() {
        return this.nameId;
    }

    static {
        NotBuildableReason[] notBuildableReasonArr$values = $values();
        $VALUES = notBuildableReasonArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(notBuildableReasonArr$values);
    }

    public final String localize(Translator translator) {
        Intrinsics.checkNotNullParameter(translator, "translator");
        String strTranslate = translator.translate(this.nameId);
        Intrinsics.checkNotNullExpressionValue(strTranslate, "translate(...)");
        return strTranslate;
    }
}
