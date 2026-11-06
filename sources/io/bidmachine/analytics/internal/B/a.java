package io.bidmachine.analytics.internal.B;

import com.explorestack.protobuf.Struct;
import io.bidmachine.analytics.internal.A.b;
import io.bidmachine.analytics.internal.A.c;
import io.bidmachine.analytics.internal.I.d;
import io.bidmachine.analytics.internal.I.f;
import io.bidmachine.analytics.internal.g.C4117d;
import io.bidmachine.analytics.internal.g.h;
import io.bidmachine.protobuf.sdk.Error;
import io.bidmachine.protobuf.sdk.Event;
import io.bidmachine.protobuf.sdk.Monitor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends io.bidmachine.analytics.internal.A.a {
    private final String f;
    private final Struct g;
    private final List h;

    public /* synthetic */ a(String str, String str2, Struct struct, List list, f fVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, struct, list, (i & 16) != 0 ? f.g.a() : fVar);
    }

    @Override // io.bidmachine.analytics.internal.A.a
    public byte[] b() {
        try {
            Result.Companion companion = Result.Companion;
            Monitor.Builder name = Monitor.newBuilder().setName(this.f);
            List<C4117d> list = this.h;
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
            for (C4117d c4117d : list) {
                Monitor.Record.Builder timestamp = Monitor.Record.newBuilder().setFields(d.a(c4117d.a())).setTimestamp(d.a(c4117d.f()));
                h hVarB = c4117d.b();
                if (hVarB != null) {
                    timestamp.setError(Error.newBuilder().setName(hVarB.a()).setError(Error.Data.newBuilder().setCode(b.a(hVarB.c()).getNumber()).setDescription(hVarB.b()).build()).build());
                }
                arrayList.add(timestamp.build());
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                name.addRecords((Monitor.Record) it.next());
            }
            return Event.newBuilder().setMonitor(name.build()).setExtrasPrivate(this.g).build().toByteArray();
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.m2760constructorimpl(ResultKt.createFailure(th));
            return null;
        }
    }

    @Override // io.bidmachine.analytics.internal.A.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public a a() {
        return this;
    }

    public a(String str, String str2, Struct struct, List list, f fVar) {
        super(c.Post, str, fVar, null, 8, null);
        this.f = str2;
        this.g = struct;
        this.h = list;
    }
}
