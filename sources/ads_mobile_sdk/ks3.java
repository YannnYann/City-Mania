package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ks3 {
    public final n03 a;
    public tn1 b;
    public m33 c;
    public zb d;

    public ks3(n03 publisherRequestTraceMeta, tn1 internalRequestTraceMeta, m33 renderTraceMeta, zb adTraceMeta) {
        Intrinsics.checkNotNullParameter(publisherRequestTraceMeta, "publisherRequestTraceMeta");
        Intrinsics.checkNotNullParameter(internalRequestTraceMeta, "internalRequestTraceMeta");
        Intrinsics.checkNotNullParameter(renderTraceMeta, "renderTraceMeta");
        Intrinsics.checkNotNullParameter(adTraceMeta, "adTraceMeta");
        this.a = publisherRequestTraceMeta;
        this.b = internalRequestTraceMeta;
        this.c = renderTraceMeta;
        this.d = adTraceMeta;
    }

    public final void a(ks3 traceMetaSet) {
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        tn1 tn1Var = traceMetaSet.b;
        tn1 tn1Var2 = this.b;
        tn1Var2.b = tn1Var.b;
        tn1Var2.a = tn1Var.a;
        tn1Var2.e = tn1Var.e;
        tn1Var2.d = tn1Var.d;
        tn1Var2.c = tn1Var.c;
        tn1Var2.f = tn1Var.f;
        tn1Var2.g = tn1Var.g;
        m33 m33Var = traceMetaSet.c;
        m33 m33Var2 = this.c;
        m33Var2.b = m33Var.b;
        m33Var2.d = m33Var.d;
        m33Var2.e = m33Var.e;
        m33Var2.a = m33Var.a;
        m33Var2.c = m33Var.c;
        m33Var2.f = m33Var.f;
        m33Var2.h = m33Var.h;
        zb zbVar = traceMetaSet.d;
        zb zbVar2 = this.d;
        zbVar2.b = zbVar.b;
        zbVar2.c = zbVar.c;
        zbVar2.a = zbVar.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ks3)) {
            return false;
        }
        ks3 ks3Var = (ks3) obj;
        return Intrinsics.areEqual(this.a, ks3Var.a) && Intrinsics.areEqual(this.b, ks3Var.b) && Intrinsics.areEqual(this.c, ks3Var.c) && Intrinsics.areEqual(this.d, ks3Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "TraceMetaSet(publisherRequestTraceMeta=" + this.a + ", internalRequestTraceMeta=" + this.b + ", renderTraceMeta=" + this.c + ", adTraceMeta=" + this.d + ")";
    }
}
