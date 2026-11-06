package com.google.android.libraries.ads.mobile.sdk.common;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class AdChoicesPlacement {
    public static final AdChoicesPlacement BOTTOM_LEFT;
    public static final AdChoicesPlacement BOTTOM_RIGHT;
    public static final AdChoicesPlacement TOP_LEFT;
    public static final AdChoicesPlacement TOP_RIGHT;
    public static final /* synthetic */ AdChoicesPlacement[] b;
    public final int a;

    static {
        AdChoicesPlacement adChoicesPlacement = new AdChoicesPlacement("TOP_LEFT", 0, 0);
        TOP_LEFT = adChoicesPlacement;
        AdChoicesPlacement adChoicesPlacement2 = new AdChoicesPlacement("TOP_RIGHT", 1, 1);
        TOP_RIGHT = adChoicesPlacement2;
        AdChoicesPlacement adChoicesPlacement3 = new AdChoicesPlacement("BOTTOM_RIGHT", 2, 2);
        BOTTOM_RIGHT = adChoicesPlacement3;
        AdChoicesPlacement adChoicesPlacement4 = new AdChoicesPlacement("BOTTOM_LEFT", 3, 3);
        BOTTOM_LEFT = adChoicesPlacement4;
        AdChoicesPlacement[] adChoicesPlacementArr = {adChoicesPlacement, adChoicesPlacement2, adChoicesPlacement3, adChoicesPlacement4};
        b = adChoicesPlacementArr;
        EnumEntriesKt.enumEntries(adChoicesPlacementArr);
    }

    public AdChoicesPlacement(String str, int i, int i2) {
        this.a = i2;
    }

    public static AdChoicesPlacement[] values() {
        return (AdChoicesPlacement[]) b.clone();
    }

    public final int getValue() {
        return this.a;
    }
}
