package ads_mobile_sdk;

import io.bidmachine.protobuf.EventTypeExtended;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class tu2 extends rr3 {
    public final su2 g;
    public final tx h;
    public final ur3 i;
    public tu2 j;
    public final uj2 k;

    public final void a(int i, tu2 nextTrace) {
        Intrinsics.checkNotNullParameter(nextTrace, "nextTrace");
        if (!b().get()) {
            this.k.a = i;
            this.j = nextTrace;
            return;
        }
        sr3.a("This trace " + this.k.c.name() + " has already finished");
    }

    @Override // ads_mobile_sdk.rr3
    public final void h() {
        uj2 uj2Var = this.k;
        Duration.Companion companion = Duration.Companion;
        this.h.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        DurationUnit durationUnit = DurationUnit.MILLISECONDS;
        uj2Var.p = Duration.m2896minusLRDsOJo(DurationKt.toDuration(jCurrentTimeMillis, durationUnit), DurationKt.toDuration(this.c, durationUnit));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tu2(s11 s11Var, List list, UUID uuid, ks3 ks3Var, su2 su2Var, tx txVar, ur3 ur3Var, int i, rr3 rr3Var, int i2, Boolean bool, boolean z) {
        super(s11Var, ks3Var, uuid, rr3Var, tx.a(), z);
        txVar.getClass();
        this.g = su2Var;
        this.h = txVar;
        this.i = ur3Var;
        int iC = rr3Var != null ? rr3Var.c() : -1;
        long jF = f();
        long jF2 = f() - xl.a;
        long jF3 = xl.b < 0 ? -1L : f() - xl.b;
        pa2 pa2VarA = oa2.a();
        Integer numValueOf = pa2VarA != null ? Integer.valueOf(((ca2) pa2VarA).a()) : null;
        pa2 pa2VarA2 = oa2.a();
        this.k = new uj2(i2, ks3Var, s11Var, list, uuid, iC, i, jF, jF2, jF3, z, bool, numValueOf, pa2VarA2 != null ? Integer.valueOf(((ca2) pa2VarA2).b()) : null, 536868864);
    }

    @Override // ads_mobile_sdk.rr3
    public final uj2 e() {
        return this.k;
    }

    @Override // ads_mobile_sdk.rr3
    public final rr3 a(s11 cuiName, List tags, boolean z) {
        tu2 tu2Var;
        Intrinsics.checkNotNullParameter(cuiName, "cuiName");
        Intrinsics.checkNotNullParameter(tags, "tags");
        uj2 uj2Var = this.k;
        tu2 trace = new tu2(cuiName, tags, uj2Var.e, this.a, this.g, this.h, this.i, uj2Var.g + 1, this, z, 1536);
        trace.k.x = this.k.x;
        su2 su2Var = this.g;
        su2Var.getClass();
        Intrinsics.checkNotNullParameter(trace, "trace");
        do {
            Object obj = su2Var.a.get();
            Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
            tu2Var = (tu2) obj;
            trace.a(tu2Var.k.a + 1, tu2Var);
        } while (!tu2$$ExternalSyntheticBackportWithForwarding0.m(su2Var.a, tu2Var, trace));
        return trace;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ tu2(s11 s11Var, List list, UUID uuid, ks3 ks3Var, su2 su2Var, tx txVar, ur3 ur3Var, int i, rr3 rr3Var, boolean z, int i2) {
        rr3 rr3Var2 = (i2 & 256) != 0 ? null : rr3Var;
        int i3 = (i2 & EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE) != 0 ? -1 : 0;
        pa2 pa2VarA = oa2.a();
        this(s11Var, list, uuid, ks3Var, su2Var, txVar, ur3Var, i, rr3Var2, i3, pa2VarA != null ? Boolean.valueOf(((ca2) pa2VarA).c()) : null, z);
    }

    @Override // ads_mobile_sdk.rr3
    public final void a() {
        uj2[] uj2VarArr;
        super.a();
        uj2 uj2Var = this.k;
        if (uj2Var.a == 0) {
            ur3 ur3Var = this.i;
            UUID uuid = uj2Var.e;
            tu2 tu2Var = (tu2) this.g.a.get();
            if (tu2Var == null) {
                uj2VarArr = new uj2[0];
            } else {
                uj2[] uj2VarArr2 = new uj2[tu2Var.k.a + 1];
                while (tu2Var != null) {
                    uj2 uj2Var2 = tu2Var.k;
                    uj2VarArr2[uj2Var2.a] = uj2Var2;
                    tu2Var = tu2Var.j;
                }
                uj2VarArr = (uj2[]) ArraysKt___ArraysKt.filterNotNull(uj2VarArr2).toArray(new uj2[0]);
            }
            os3 traceSnapshot = new os3(uuid, uj2VarArr);
            as3 as3Var = (as3) ur3Var;
            as3Var.getClass();
            Intrinsics.checkNotNullParameter(traceSnapshot, "traceSnapshot");
            ArrayList arrayList = new ArrayList();
            for (uj2 uj2Var3 : uj2VarArr) {
                Boolean bool = (Boolean) as3Var.o.get(String.valueOf(uj2Var3.c.getNumber()));
                if (bool != null ? bool.booleanValue() : as3Var.k) {
                    arrayList.add(uj2Var3);
                }
            }
            os3 os3Var = !arrayList.isEmpty() ? new os3(traceSnapshot.a, (uj2[]) arrayList.toArray(new uj2[0])) : null;
            if (os3Var != null) {
                as3Var.d.a(os3Var);
                if (as3Var.n) {
                    for (uj2 uj2Var4 : os3Var.b) {
                        Throwable th = uj2Var4.o;
                        if (th == null) {
                            th = uj2Var4.n;
                        }
                        Throwable th2 = th;
                        if (th2 != null) {
                            rq0 rq0Var = as3Var.e;
                            String strName = uj2Var4.c.name();
                            ks3 ks3Var = uj2Var4.b;
                            long j = uj2Var4.h;
                            Integer num = uj2Var4.O;
                            rq0Var.a(new tq0(th2, strName, ks3Var, true, j, num != null ? num.intValue() : -1, false));
                        }
                    }
                }
            }
        }
    }
}
