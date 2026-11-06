package com.google.android.libraries.ads.mobile.sdk.iconad;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class IconAdPlacement {
    public static final IconAdPlacement BROWSER;
    public static final IconAdPlacement FOLDER;
    public static final IconAdPlacement HOME;
    public static final IconAdPlacement LOCKSCREEN;
    public static final IconAdPlacement MINUS_ONE_SCREEN;
    public static final IconAdPlacement NOTIFICATION;
    public static final IconAdPlacement SEARCH;
    public static final IconAdPlacement SHARE;
    public static final IconAdPlacement STORE;
    public static final IconAdPlacement UNSPECIFIED;
    public static final /* synthetic */ IconAdPlacement[] b;
    public final int a;

    static {
        IconAdPlacement iconAdPlacement = new IconAdPlacement("UNSPECIFIED", 0, 1);
        UNSPECIFIED = iconAdPlacement;
        IconAdPlacement iconAdPlacement2 = new IconAdPlacement("BROWSER", 1, 2);
        BROWSER = iconAdPlacement2;
        IconAdPlacement iconAdPlacement3 = new IconAdPlacement("FOLDER", 2, 3);
        FOLDER = iconAdPlacement3;
        IconAdPlacement iconAdPlacement4 = new IconAdPlacement("HOME", 3, 4);
        HOME = iconAdPlacement4;
        IconAdPlacement iconAdPlacement5 = new IconAdPlacement("LOCKSCREEN", 4, 5);
        LOCKSCREEN = iconAdPlacement5;
        IconAdPlacement iconAdPlacement6 = new IconAdPlacement("MINUS_ONE_SCREEN", 5, 6);
        MINUS_ONE_SCREEN = iconAdPlacement6;
        IconAdPlacement iconAdPlacement7 = new IconAdPlacement("NOTIFICATION", 6, 7);
        NOTIFICATION = iconAdPlacement7;
        IconAdPlacement iconAdPlacement8 = new IconAdPlacement("SEARCH", 7, 8);
        SEARCH = iconAdPlacement8;
        IconAdPlacement iconAdPlacement9 = new IconAdPlacement("SHARE", 8, 9);
        SHARE = iconAdPlacement9;
        IconAdPlacement iconAdPlacement10 = new IconAdPlacement("STORE", 9, 10);
        STORE = iconAdPlacement10;
        IconAdPlacement[] iconAdPlacementArr = {iconAdPlacement, iconAdPlacement2, iconAdPlacement3, iconAdPlacement4, iconAdPlacement5, iconAdPlacement6, iconAdPlacement7, iconAdPlacement8, iconAdPlacement9, iconAdPlacement10};
        b = iconAdPlacementArr;
        EnumEntriesKt.enumEntries(iconAdPlacementArr);
    }

    public IconAdPlacement(String str, int i, int i2) {
        this.a = i2;
    }

    public static IconAdPlacement[] values() {
        return (IconAdPlacement[]) b.clone();
    }

    public final int getValue() {
        return this.a;
    }
}
