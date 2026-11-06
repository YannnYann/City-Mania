package com.vungle.ads.internal.model;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
public final class s3 {
    public static final r3 Companion = new r3();
    public final String a;
    public String b;

    public /* synthetic */ s3(int i, String str, String str2) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, q3.a.getDescriptor());
        }
        this.a = str;
        if ((i & 2) == 0) {
            this.b = "";
        } else {
            this.b = str2;
        }
    }

    public static final void a(s3 self, CompositeEncoder output, PluginGeneratedSerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        output.encodeStringElement(serialDesc, 0, self.a);
        if (!output.shouldEncodeElementDefault(serialDesc, 1) && Intrinsics.areEqual(self.b, "")) {
            return;
        }
        output.encodeStringElement(serialDesc, 1, self.b);
    }

    public final boolean equals(Object obj) {
        if (obj != null && Intrinsics.areEqual(s3.class, obj.getClass())) {
            s3 s3Var = (s3) obj;
            if (Intrinsics.areEqual(this.a, s3Var.a) && Intrinsics.areEqual(this.b, s3Var.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("UnclosedAd(eventId=");
        sbA.append(this.a);
        sbA.append(", sessionId=");
        sbA.append(this.b);
        sbA.append(')');
        return sbA.toString();
    }

    public s3(String eventId, String sessionId) {
        Intrinsics.checkNotNullParameter(eventId, "eventId");
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        this.a = eventId;
        this.b = sessionId;
    }

    public /* synthetic */ s3(String str) {
        this(str, "");
    }

    public final void a(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.b = str;
    }
}
