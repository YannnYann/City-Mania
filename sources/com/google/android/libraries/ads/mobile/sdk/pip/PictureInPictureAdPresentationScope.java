package com.google.android.libraries.ads.mobile.sdk.pip;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class PictureInPictureAdPresentationScope {
    public static final PictureInPictureAdPresentationScope APPLICATION;
    public static final PictureInPictureAdPresentationScope SCREEN;
    public static final /* synthetic */ PictureInPictureAdPresentationScope[] a;

    static {
        PictureInPictureAdPresentationScope pictureInPictureAdPresentationScope = new PictureInPictureAdPresentationScope("SCREEN", 0);
        SCREEN = pictureInPictureAdPresentationScope;
        PictureInPictureAdPresentationScope pictureInPictureAdPresentationScope2 = new PictureInPictureAdPresentationScope("APPLICATION", 1);
        APPLICATION = pictureInPictureAdPresentationScope2;
        PictureInPictureAdPresentationScope[] pictureInPictureAdPresentationScopeArr = {pictureInPictureAdPresentationScope, pictureInPictureAdPresentationScope2};
        a = pictureInPictureAdPresentationScopeArr;
        EnumEntriesKt.enumEntries(pictureInPictureAdPresentationScopeArr);
    }

    public PictureInPictureAdPresentationScope(String str, int i) {
    }

    public static PictureInPictureAdPresentationScope[] values() {
        return (PictureInPictureAdPresentationScope[]) a.clone();
    }
}
