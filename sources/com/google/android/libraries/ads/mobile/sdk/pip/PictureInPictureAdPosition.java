package com.google.android.libraries.ads.mobile.sdk.pip;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class PictureInPictureAdPosition {
    public static final PictureInPictureAdPosition BOTTOM_LEFT;
    public static final PictureInPictureAdPosition BOTTOM_RIGHT;
    public static final PictureInPictureAdPosition DEFAULT;
    public static final PictureInPictureAdPosition TOP_LEFT;
    public static final PictureInPictureAdPosition TOP_RIGHT;
    public static final /* synthetic */ PictureInPictureAdPosition[] a;

    static {
        PictureInPictureAdPosition pictureInPictureAdPosition = new PictureInPictureAdPosition("DEFAULT", 0);
        DEFAULT = pictureInPictureAdPosition;
        PictureInPictureAdPosition pictureInPictureAdPosition2 = new PictureInPictureAdPosition("BOTTOM_RIGHT", 1);
        BOTTOM_RIGHT = pictureInPictureAdPosition2;
        PictureInPictureAdPosition pictureInPictureAdPosition3 = new PictureInPictureAdPosition("BOTTOM_LEFT", 2);
        BOTTOM_LEFT = pictureInPictureAdPosition3;
        PictureInPictureAdPosition pictureInPictureAdPosition4 = new PictureInPictureAdPosition("TOP_LEFT", 3);
        TOP_LEFT = pictureInPictureAdPosition4;
        PictureInPictureAdPosition pictureInPictureAdPosition5 = new PictureInPictureAdPosition("TOP_RIGHT", 4);
        TOP_RIGHT = pictureInPictureAdPosition5;
        PictureInPictureAdPosition[] pictureInPictureAdPositionArr = {pictureInPictureAdPosition, pictureInPictureAdPosition2, pictureInPictureAdPosition3, pictureInPictureAdPosition4, pictureInPictureAdPosition5};
        a = pictureInPictureAdPositionArr;
        EnumEntriesKt.enumEntries(pictureInPictureAdPositionArr);
    }

    public PictureInPictureAdPosition(String str, int i) {
    }

    public static PictureInPictureAdPosition[] values() {
        return (PictureInPictureAdPosition[]) a.clone();
    }
}
