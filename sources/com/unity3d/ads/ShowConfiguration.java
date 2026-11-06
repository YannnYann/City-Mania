package com.unity3d.ads;

import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ShowConfiguration.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ShowConfiguration {
    private final String customRewardString;
    private final Map<String, String> extras;

    public /* synthetic */ ShowConfiguration(String str, Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, map);
    }

    private ShowConfiguration(String str, Map<String, String> map) {
        this.customRewardString = str;
        this.extras = map;
    }

    public final String getCustomRewardString() {
        return this.customRewardString;
    }

    public /* synthetic */ ShowConfiguration(String str, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? MapsKt__MapsKt.emptyMap() : map);
    }

    public final Map<String, String> getExtras() {
        return this.extras;
    }

    /* JADX INFO: compiled from: ShowConfiguration.kt */
    public static final class Builder {
        private String customRewardString;
        private Map<String, String> extras = MapsKt__MapsKt.emptyMap();

        public final Builder withCustomRewardString(String customRewardString) {
            Intrinsics.checkNotNullParameter(customRewardString, "customRewardString");
            this.customRewardString = customRewardString;
            return this;
        }

        public final Builder withExtras(Map<String, String> extras) {
            Intrinsics.checkNotNullParameter(extras, "extras");
            this.extras = extras;
            return this;
        }

        public final ShowConfiguration build() {
            return new ShowConfiguration(this.customRewardString, this.extras, null);
        }
    }
}
