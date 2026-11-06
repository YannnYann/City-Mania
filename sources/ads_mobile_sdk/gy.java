package ads_mobile_sdk;

import com.google.common.collect.ImmutableList;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class gy {
    public static final fy b;
    public static final gy c;
    public static final gy d;
    public static final gy e;
    public static final gy f;
    public static final gy g;
    public static final gy h;
    public static final gy i;
    public static final /* synthetic */ gy[] j;
    public final ImmutableList a;

    static {
        ImmutableList immutableListOf = ImmutableList.of(10, 9);
        Intrinsics.checkNotNullExpressionValue(immutableListOf, "of(...)");
        gy gyVar = new gy("TOP_LEFT", 0, immutableListOf);
        c = gyVar;
        ImmutableList immutableListOf2 = ImmutableList.of(10, 14);
        Intrinsics.checkNotNullExpressionValue(immutableListOf2, "of(...)");
        gy gyVar2 = new gy("TOP_CENTER", 1, immutableListOf2);
        d = gyVar2;
        ImmutableList immutableListOf3 = ImmutableList.of(10, 11);
        Intrinsics.checkNotNullExpressionValue(immutableListOf3, "of(...)");
        gy gyVar3 = new gy("TOP_RIGHT", 2, immutableListOf3);
        e = gyVar3;
        ImmutableList immutableListOf4 = ImmutableList.of(13);
        Intrinsics.checkNotNullExpressionValue(immutableListOf4, "of(...)");
        gy gyVar4 = new gy("CENTER", 3, immutableListOf4);
        f = gyVar4;
        ImmutableList immutableListOf5 = ImmutableList.of(12, 9);
        Intrinsics.checkNotNullExpressionValue(immutableListOf5, "of(...)");
        gy gyVar5 = new gy("BOTTOM_LEFT", 4, immutableListOf5);
        g = gyVar5;
        ImmutableList immutableListOf6 = ImmutableList.of(12, 14);
        Intrinsics.checkNotNullExpressionValue(immutableListOf6, "of(...)");
        gy gyVar6 = new gy("BOTTOM_CENTER", 5, immutableListOf6);
        h = gyVar6;
        ImmutableList immutableListOf7 = ImmutableList.of(12, 11);
        Intrinsics.checkNotNullExpressionValue(immutableListOf7, "of(...)");
        gy gyVar7 = new gy("BOTTOM_RIGHT", 6, immutableListOf7);
        i = gyVar7;
        gy[] gyVarArr = {gyVar, gyVar2, gyVar3, gyVar4, gyVar5, gyVar6, gyVar7};
        j = gyVarArr;
        EnumEntriesKt.enumEntries(gyVarArr);
        b = new fy();
    }

    public static gy[] values() {
        return (gy[]) j.clone();
    }

    public gy(String str, int i2, ImmutableList immutableList) {
        this.a = immutableList;
    }
}
