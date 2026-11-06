package com.vungle.ads;

import com.vungle.ads.internal.AnalyticsClient;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.t;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class VungleError extends Exception {
    public final Sdk.SDKError.Reason a;
    public final String b;
    public final int c;
    public t d;

    public VungleError(Sdk.SDKError.Reason reason, String str) {
        super(str);
        this.a = reason;
        this.b = str;
        this.c = reason.getNumber();
    }

    public /* synthetic */ VungleError(Sdk.SDKError.Reason reason, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(reason, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Intrinsics.areEqual(getClass(), obj != null ? obj.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.vungle.ads.VungleError");
        VungleError vungleError = (VungleError) obj;
        return this.a == vungleError.a && Intrinsics.areEqual(this.b, vungleError.b) && Intrinsics.areEqual(this.d, vungleError.d);
    }

    public final int getCode() {
        return this.c;
    }

    public final String getErrorMessage() {
        return this.b;
    }

    @Override // java.lang.Throwable
    public String getLocalizedMessage() {
        return this.b;
    }

    public int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        t tVar = this.d;
        return iHashCode + (tVar != null ? tVar.hashCode() : 0);
    }

    public final VungleError logError$vungle_ads_release() {
        logErrorNoReturnValue$vungle_ads_release();
        return this;
    }

    public final void logErrorNoReturnValue$vungle_ads_release() {
        AnalyticsClient.INSTANCE.c(this.a, this.b, this.d);
    }

    public final VungleError setLogEntry$vungle_ads_release(t tVar) {
        this.d = tVar;
        return this;
    }
}
