package com.google.android.libraries.ads.mobile.sdk.common;

import ads_mobile_sdk.ob;
import com.google.gson.GsonBuilder;
import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class MediationAdError extends BaseError<Integer> {
    public static final Companion Companion = new Companion(0);

    @SerializedName("Code")
    private final int a;

    @SerializedName("Message")
    private final String b;

    @SerializedName("Domain")
    private final String c;

    public static final class Companion {
        public /* synthetic */ Companion(int i) {
            this();
        }

        public Companion() {
        }
    }

    public MediationAdError(int i, String message, String domain) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(domain, "domain");
        this.a = i;
        this.b = message;
        this.c = domain;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediationAdError)) {
            return false;
        }
        MediationAdError mediationAdError = (MediationAdError) obj;
        return this.a == mediationAdError.a && Intrinsics.areEqual(this.b, mediationAdError.b) && Intrinsics.areEqual(this.c, mediationAdError.c);
    }

    public final String getDomain() {
        return this.c;
    }

    public String getMessage() {
        return this.b;
    }

    public int hashCode() {
        return this.c.hashCode() + ob.a(this.b, Integer.hashCode(this.a) * 31, 31);
    }

    public String toString() {
        String json = new GsonBuilder().setPrettyPrinting().serializeNulls().create().toJson(this);
        Intrinsics.checkNotNullExpressionValue(json, "toJson(...)");
        return json;
    }

    public Integer getCode() {
        return Integer.valueOf(this.a);
    }
}
