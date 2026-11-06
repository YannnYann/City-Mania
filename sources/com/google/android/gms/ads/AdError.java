package com.google.android.gms.ads;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class AdError {
    public static final Companion Companion = new Companion(0);
    public static final String GOOGLE_MOBILE_ADS_DOMAIN = "com.google.android.libraries.ads.mobile.sdk";
    public static final String UNDEFINED_DOMAIN = "undefined";
    private final int a;
    private final String b;
    private final String c;
    private final AdError d;

    public static final class Companion {
        public /* synthetic */ Companion(int i) {
            this();
        }

        private Companion() {
        }
    }

    public AdError(int i, String message, String domain, AdError adError) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(domain, "domain");
        this.a = i;
        this.b = message;
        this.c = domain;
        this.d = adError;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AdError)) {
            return false;
        }
        AdError adError = (AdError) obj;
        return this.a == adError.a && Intrinsics.areEqual(this.b, adError.b) && Intrinsics.areEqual(this.c, adError.c) && Intrinsics.areEqual(this.d, adError.d);
    }

    public final AdError getCause() {
        return this.d;
    }

    public final int getCode() {
        return this.a;
    }

    public final String getDomain() {
        return this.c;
    }

    public final String getMessage() {
        return this.b;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AdError(int i, String message, String domain) {
        this(i, message, domain, null);
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(domain, "domain");
    }
}
