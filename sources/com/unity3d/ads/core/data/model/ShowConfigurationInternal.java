package com.unity3d.ads.core.data.model;

import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ShowConfigurationInternal.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ShowConfigurationInternal {
    private final String customRewardString;
    private final Map<String, String> extras;

    /* JADX WARN: Multi-variable type inference failed */
    public ShowConfigurationInternal() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ShowConfigurationInternal copy$default(ShowConfigurationInternal showConfigurationInternal, String str, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            str = showConfigurationInternal.customRewardString;
        }
        if ((i & 2) != 0) {
            map = showConfigurationInternal.extras;
        }
        return showConfigurationInternal.copy(str, map);
    }

    public final String component1() {
        return this.customRewardString;
    }

    public final Map<String, String> component2() {
        return this.extras;
    }

    public final ShowConfigurationInternal copy(String str, Map<String, String> extras) {
        Intrinsics.checkNotNullParameter(extras, "extras");
        return new ShowConfigurationInternal(str, extras);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShowConfigurationInternal)) {
            return false;
        }
        ShowConfigurationInternal showConfigurationInternal = (ShowConfigurationInternal) obj;
        return Intrinsics.areEqual(this.customRewardString, showConfigurationInternal.customRewardString) && Intrinsics.areEqual(this.extras, showConfigurationInternal.extras);
    }

    public int hashCode() {
        String str = this.customRewardString;
        return ((str == null ? 0 : str.hashCode()) * 31) + this.extras.hashCode();
    }

    public String toString() {
        return "ShowConfigurationInternal(customRewardString=" + this.customRewardString + ", extras=" + this.extras + ')';
    }

    public ShowConfigurationInternal(String str, Map<String, String> extras) {
        Intrinsics.checkNotNullParameter(extras, "extras");
        this.customRewardString = str;
        this.extras = extras;
    }

    public final String getCustomRewardString() {
        return this.customRewardString;
    }

    public /* synthetic */ ShowConfigurationInternal(String str, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? MapsKt__MapsKt.emptyMap() : map);
    }

    public final Map<String, String> getExtras() {
        return this.extras;
    }
}
