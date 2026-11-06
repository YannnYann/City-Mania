package com.vungle.ads.internal.model;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
public final class h1 {
    public static final g1 Companion = new g1();
    public final String a;
    public final String b;
    public final long c;
    public final String d;

    public /* synthetic */ h1(int i, String str, String str2, long j, String str3) {
        if (15 != (i & 15)) {
            PluginExceptionsKt.throwMissingFieldException(i, 15, f1.a.getDescriptor());
        }
        this.a = str;
        this.b = str2;
        this.c = j;
        this.d = str3;
    }

    public static final void a(h1 self, CompositeEncoder output, PluginGeneratedSerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        output.encodeStringElement(serialDesc, 0, self.a);
        output.encodeStringElement(serialDesc, 1, self.b);
        output.encodeLongElement(serialDesc, 2, self.c);
        output.encodeStringElement(serialDesc, 3, self.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h1)) {
            return false;
        }
        h1 h1Var = (h1) obj;
        return Intrinsics.areEqual(this.a, h1Var.a) && Intrinsics.areEqual(this.b, h1Var.b) && this.c == h1Var.c && Intrinsics.areEqual(this.d, h1Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((Long.hashCode(this.c) + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("GDPR(consentStatus=");
        sbA.append(this.a);
        sbA.append(", consentSource=");
        sbA.append(this.b);
        sbA.append(", consentTimestamp=");
        sbA.append(this.c);
        sbA.append(", consentMessageVersion=");
        sbA.append(this.d);
        sbA.append(')');
        return sbA.toString();
    }

    public h1(long j, String consentStatus, String consentSource, String consentMessageVersion) {
        Intrinsics.checkNotNullParameter(consentStatus, "consentStatus");
        Intrinsics.checkNotNullParameter(consentSource, "consentSource");
        Intrinsics.checkNotNullParameter(consentMessageVersion, "consentMessageVersion");
        this.a = consentStatus;
        this.b = consentSource;
        this.c = j;
        this.d = consentMessageVersion;
    }
}
