package com.unity3d.ads.network.model;

import com.ironsource.C3746nc;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: RequestType.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class RequestType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RequestType[] $VALUES;
    public static final RequestType POST = new RequestType(C3746nc.b, 0);
    public static final RequestType GET = new RequestType(C3746nc.a, 1);
    public static final RequestType HEAD = new RequestType("HEAD", 2);

    private static final /* synthetic */ RequestType[] $values() {
        return new RequestType[]{POST, GET, HEAD};
    }

    public static EnumEntries<RequestType> getEntries() {
        return $ENTRIES;
    }

    private RequestType(String str, int i) {
    }

    static {
        RequestType[] requestTypeArr$values = $values();
        $VALUES = requestTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(requestTypeArr$values);
    }

    public static RequestType valueOf(String str) {
        return (RequestType) Enum.valueOf(RequestType.class, str);
    }

    public static RequestType[] values() {
        return (RequestType[]) $VALUES.clone();
    }
}
