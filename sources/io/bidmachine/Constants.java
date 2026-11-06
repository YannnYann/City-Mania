package io.bidmachine;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class Constants {
    public static final int VIDEO_LINEARITY = 1;
    public static final int VIDEO_MAXBITR = 4096;
    public static final int VIDEO_MAXDUR = 30;
    public static final int VIDEO_MINBITR = 56;
    public static final int VIDEO_MINDUR = 5;
    public static final Constants INSTANCE = new Constants();
    public static final List<String> VIDEO_MIME_TYPES = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"video/mp4", "video/3gpp"});
    public static final List<String> IMAGE_MIME_TYPES = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"image/jpeg", "image/jpg", "image/gif", "image/png"});

    private Constants() {
    }
}
