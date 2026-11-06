package com.unity3d.ads.core.data.model;

import java.util.Locale;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: InitializationState.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class InitializationState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ InitializationState[] $VALUES;
    public static final InitializationState NOT_INITIALIZED = new InitializationState("NOT_INITIALIZED", 0);
    public static final InitializationState INITIALIZING = new InitializationState("INITIALIZING", 1);
    public static final InitializationState INITIALIZED = new InitializationState("INITIALIZED", 2);
    public static final InitializationState FAILED = new InitializationState("FAILED", 3);

    private static final /* synthetic */ InitializationState[] $values() {
        return new InitializationState[]{NOT_INITIALIZED, INITIALIZING, INITIALIZED, FAILED};
    }

    public static EnumEntries<InitializationState> getEntries() {
        return $ENTRIES;
    }

    private InitializationState(String str, int i) {
    }

    static {
        InitializationState[] initializationStateArr$values = $values();
        $VALUES = initializationStateArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(initializationStateArr$values);
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

    public static InitializationState valueOf(String str) {
        return (InitializationState) Enum.valueOf(InitializationState.class, str);
    }

    public static InitializationState[] values() {
        return (InitializationState[]) $VALUES.clone();
    }
}
