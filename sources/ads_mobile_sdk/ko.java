package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
public final class ko {
    public final String a;
    public final AdRequest b;
    public final j53 c;
    public final int d;
    public final om2 e;
    public final long f;
    public final long g;
    public Job h;

    public ko(String webProperty, AdRequest adRequest, j53 requestType, int i, om2 token, long j, long j2, CompletableJob job) {
        Intrinsics.checkNotNullParameter(webProperty, "webProperty");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(job, "job");
        this.a = webProperty;
        this.b = adRequest;
        this.c = requestType;
        this.d = i;
        this.e = token;
        this.f = j;
        this.g = j2;
        this.h = job;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ko)) {
            return false;
        }
        ko koVar = (ko) obj;
        return Intrinsics.areEqual(this.a, koVar.a) && Intrinsics.areEqual(this.b, koVar.b) && this.c == koVar.c && this.d == koVar.d && Intrinsics.areEqual(this.e, koVar.e) && this.f == koVar.f && this.g == koVar.g && Intrinsics.areEqual(this.h, koVar.h);
    }

    public final int hashCode() {
        return this.h.hashCode() + ((Long.hashCode(this.g) + ((Long.hashCode(this.f) + ((this.e.hashCode() + y1.a(this.d, (this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31, 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "AutoRefreshEntry(webProperty=" + this.a + ", adRequest=" + this.b + ", requestType=" + this.c + ", numberOfAdsRequested=" + this.d + ", token=" + this.e + ", scheduleTimeMs=" + this.f + ", targetExecutionTimeMs=" + this.g + ", job=" + this.h + ")";
    }
}
