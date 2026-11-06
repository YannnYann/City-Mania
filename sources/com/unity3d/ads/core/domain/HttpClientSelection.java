package com.unity3d.ads.core.domain;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: AndroidHttpClientProvider.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class HttpClientSelection {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ HttpClientSelection[] $VALUES;
    public static final HttpClientSelection CRONET_WITHOUT_QUIC = new HttpClientSelection("CRONET_WITHOUT_QUIC", 0);
    public static final HttpClientSelection CRONET_WITH_QUIC = new HttpClientSelection("CRONET_WITH_QUIC", 1);
    public static final HttpClientSelection LEGACY = new HttpClientSelection("LEGACY", 2);
    public static final HttpClientSelection OKHTTP3 = new HttpClientSelection("OKHTTP3", 3);

    private static final /* synthetic */ HttpClientSelection[] $values() {
        return new HttpClientSelection[]{CRONET_WITHOUT_QUIC, CRONET_WITH_QUIC, LEGACY, OKHTTP3};
    }

    public static EnumEntries<HttpClientSelection> getEntries() {
        return $ENTRIES;
    }

    private HttpClientSelection(String str, int i) {
    }

    static {
        HttpClientSelection[] httpClientSelectionArr$values = $values();
        $VALUES = httpClientSelectionArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(httpClientSelectionArr$values);
    }

    public static HttpClientSelection valueOf(String str) {
        return (HttpClientSelection) Enum.valueOf(HttpClientSelection.class, str);
    }

    public static HttpClientSelection[] values() {
        return (HttpClientSelection[]) $VALUES.clone();
    }
}
