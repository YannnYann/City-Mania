package com.unity3d.ads.core.data.model;

import java.util.Locale;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: OperationType.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class OperationType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ OperationType[] $VALUES;
    public static final OperationType UNKNOWN = new OperationType("UNKNOWN", 0);
    public static final OperationType INITIALIZATION = new OperationType("INITIALIZATION", 1);
    public static final OperationType LOAD = new OperationType("LOAD", 2);
    public static final OperationType LOAD_HEADER_BIDDING = new OperationType("LOAD_HEADER_BIDDING", 3);
    public static final OperationType SHOW = new OperationType("SHOW", 4);
    public static final OperationType REFRESH = new OperationType("REFRESH", 5);
    public static final OperationType AD_VIEWER_REQUEST = new OperationType("AD_VIEWER_REQUEST", 6);
    public static final OperationType PRIVACY_UPDATE = new OperationType("PRIVACY_UPDATE", 7);
    public static final OperationType INITIALIZATION_COMPLETED = new OperationType("INITIALIZATION_COMPLETED", 8);
    public static final OperationType TRANSACTION_EVENT = new OperationType("TRANSACTION_EVENT", 9);
    public static final OperationType AD_REVENUE_EVENT = new OperationType("AD_REVENUE_EVENT", 10);
    public static final OperationType LIFECYCLE_EVENT = new OperationType("LIFECYCLE_EVENT", 11);
    public static final OperationType GET_TOKEN = new OperationType("GET_TOKEN", 12);
    public static final OperationType DIAGNOSTIC_EVENT = new OperationType("DIAGNOSTIC_EVENT", 13);
    public static final OperationType OPERATIVE_EVENT = new OperationType("OPERATIVE_EVENT", 14);
    public static final OperationType UNIVERSAL_EVENT = new OperationType("UNIVERSAL_EVENT", 15);

    private static final /* synthetic */ OperationType[] $values() {
        return new OperationType[]{UNKNOWN, INITIALIZATION, LOAD, LOAD_HEADER_BIDDING, SHOW, REFRESH, AD_VIEWER_REQUEST, PRIVACY_UPDATE, INITIALIZATION_COMPLETED, TRANSACTION_EVENT, AD_REVENUE_EVENT, LIFECYCLE_EVENT, GET_TOKEN, DIAGNOSTIC_EVENT, OPERATIVE_EVENT, UNIVERSAL_EVENT};
    }

    public static EnumEntries<OperationType> getEntries() {
        return $ENTRIES;
    }

    private OperationType(String str, int i) {
    }

    static {
        OperationType[] operationTypeArr$values = $values();
        $VALUES = operationTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(operationTypeArr$values);
    }

    @Override // java.lang.Enum
    public String toString() {
        String string = super.toString();
        Locale ROOT = Locale.ROOT;
        Intrinsics.checkNotNullExpressionValue(ROOT, "ROOT");
        String lowerCase = string.toLowerCase(ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    public static OperationType valueOf(String str) {
        return (OperationType) Enum.valueOf(OperationType.class, str);
    }

    public static OperationType[] values() {
        return (OperationType[]) $VALUES.clone();
    }
}
