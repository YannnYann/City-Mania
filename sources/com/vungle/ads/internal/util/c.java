package com.vungle.ads.internal.util;

import android.content.Intent;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class c {
    public final WeakReference a;
    public final Intent b;
    public final Intent c;
    public final com.vungle.ads.internal.ui.m d;

    public c(WeakReference context, Intent intent, Intent intent2, com.vungle.ads.internal.ui.m mVar) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = context;
        this.b = intent;
        this.c = intent2;
        this.d = mVar;
    }

    public final com.vungle.ads.internal.ui.m a() {
        return this.d;
    }

    public final WeakReference b() {
        return this.a;
    }

    public final Intent c() {
        return this.b;
    }

    public final Intent d() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.areEqual(this.a, cVar.a) && Intrinsics.areEqual(this.b, cVar.b) && Intrinsics.areEqual(this.c, cVar.c) && Intrinsics.areEqual(this.d, cVar.d);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        Intent intent = this.b;
        int iHashCode2 = (iHashCode + (intent == null ? 0 : intent.hashCode())) * 31;
        Intent intent2 = this.c;
        int iHashCode3 = (iHashCode2 + (intent2 == null ? 0 : intent2.hashCode())) * 31;
        com.vungle.ads.internal.ui.m mVar = this.d;
        return iHashCode3 + (mVar != null ? mVar.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("TargetActivityInfo(context=");
        sbA.append(this.a);
        sbA.append(", deepLinkOverrideIntent=");
        sbA.append(this.b);
        sbA.append(", defaultIntent=");
        sbA.append(this.c);
        sbA.append(", adOpenCallback=");
        sbA.append(this.d);
        sbA.append(')');
        return sbA.toString();
    }
}
