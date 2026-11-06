package com.vungle.ads.internal.bidding;

import com.iab.omid.library.vungle.internal.l;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class b {
    public final String a;
    public final String b;

    public b(String bidToken, String errorMessage) {
        Intrinsics.checkNotNullParameter(bidToken, "bidToken");
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        this.a = bidToken;
        this.b = errorMessage;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.areEqual(this.a, bVar.a) && Intrinsics.areEqual(this.b, bVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sbA = l.a("BiddingTokenInfo(bidToken=");
        sbA.append(this.a);
        sbA.append(", errorMessage=");
        sbA.append(this.b);
        sbA.append(')');
        return sbA.toString();
    }
}
