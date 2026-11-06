package com.unity3d.ads.adplayer;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: HandlerType.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class HandlerType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ HandlerType[] $VALUES;
    private final String jsPath;
    public static final HandlerType CALLBACK = new HandlerType("CALLBACK", 0, "handleCallback");
    public static final HandlerType INVOCATION = new HandlerType("INVOCATION", 1, "handleInvocation");
    public static final HandlerType EVENT = new HandlerType("EVENT", 2, "handleEvent");

    private static final /* synthetic */ HandlerType[] $values() {
        return new HandlerType[]{CALLBACK, INVOCATION, EVENT};
    }

    public static EnumEntries<HandlerType> getEntries() {
        return $ENTRIES;
    }

    private HandlerType(String str, int i, String str2) {
        this.jsPath = str2;
    }

    public final String getJsPath() {
        return this.jsPath;
    }

    static {
        HandlerType[] handlerTypeArr$values = $values();
        $VALUES = handlerTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(handlerTypeArr$values);
    }

    public static HandlerType valueOf(String str) {
        return (HandlerType) Enum.valueOf(HandlerType.class, str);
    }

    public static HandlerType[] values() {
        return (HandlerType[]) $VALUES.clone();
    }
}
