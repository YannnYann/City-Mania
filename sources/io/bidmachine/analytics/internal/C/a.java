package io.bidmachine.analytics.internal.C;

import com.explorestack.protobuf.BytesValue;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Timestamp;
import io.bidmachine.analytics.internal.A.b;
import io.bidmachine.analytics.internal.A.c;
import io.bidmachine.analytics.internal.I.d;
import io.bidmachine.analytics.internal.I.f;
import io.bidmachine.analytics.internal.I.g;
import io.bidmachine.analytics.internal.g.C4115b;
import io.bidmachine.analytics.internal.g.C4118e;
import io.bidmachine.analytics.internal.g.h;
import io.bidmachine.protobuf.sdk.Error;
import io.bidmachine.protobuf.sdk.Event;
import io.bidmachine.protobuf.sdk.Reader;
import java.io.FileNotFoundException;
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
    private final InterfaceC1110a i;

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.C.a$a, reason: collision with other inner class name */
    public interface InterfaceC1110a {
        BytesValue a(C4118e.a aVar);
    }

    public /* synthetic */ a(String str, String str2, Struct struct, List list, InterfaceC1110a interfaceC1110a, f fVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, struct, list, interfaceC1110a, (i & 32) != 0 ? f.g.a() : fVar);
    }

    @Override // io.bidmachine.analytics.internal.A.a
    public byte[] b() {
        Object next;
        Timestamp timestampA;
        Object objM2760constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            Reader.Builder name = Reader.newBuilder().setName(this.f);
            List<C4118e> list = this.h;
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
            for (C4118e c4118e : list) {
                Reader.Record.Builder rule = Reader.Record.newBuilder().setRule(a(c4118e.e()));
                h hVarB = c4118e.b();
                if (hVarB == null) {
                    try {
                        Result.Companion companion2 = Result.Companion;
                        objM2760constructorimpl = Result.m2760constructorimpl(rule.setRawData(this.i.a(c4118e.e())));
                    } catch (Throwable th) {
                        Result.Companion companion3 = Result.Companion;
                        objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
                    }
                    Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
                    if (thM2763exceptionOrNullimpl != null) {
                        hVarB = new h(this.f, thM2763exceptionOrNullimpl instanceof C4115b ? true : thM2763exceptionOrNullimpl instanceof FileNotFoundException ? h.a.READER_NO_CONTENT : thM2763exceptionOrNullimpl instanceof SecurityException ? h.a.READER_NO_ACCESS : h.a.READER_INVALID, g.a(thM2763exceptionOrNullimpl));
                    }
                }
                if (hVarB != null) {
                    rule.setError(Error.newBuilder().setName(hVarB.a()).setError(Error.Data.newBuilder().setCode(b.a(hVarB.c()).getNumber()).setDescription(hVarB.b()).build()).build());
                }
                arrayList.add(rule.build());
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                name.addRecords((Reader.Record) it.next());
            }
            Iterator it2 = this.h.iterator();
            if (it2.hasNext()) {
                next = it2.next();
                if (it2.hasNext()) {
                    long jF = ((C4118e) next).f();
                    do {
                        Object next2 = it2.next();
                        long jF2 = ((C4118e) next2).f();
                        if (jF < jF2) {
                            next = next2;
                            jF = jF2;
                        }
                    } while (it2.hasNext());
                }
            } else {
                next = null;
            }
            C4118e c4118e2 = (C4118e) next;
            if (c4118e2 != null && (timestampA = d.a(c4118e2.f())) != null) {
                name.setTimestamp(timestampA);
            }
            return Event.newBuilder().setReader(name.build()).setExtrasPrivate(this.g).build().toByteArray();
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.Companion;
            Result.m2760constructorimpl(ResultKt.createFailure(th2));
            return null;
        }
    }

    @Override // io.bidmachine.analytics.internal.A.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public a a() {
        return this;
    }

    private final Reader.Rule.Builder a(C4118e.a aVar) {
        Reader.Rule.Builder builderNewBuilder = Reader.Rule.newBuilder();
        if (aVar instanceof C4118e.a.C1122a) {
            C4118e.a.C1122a c1122a = (C4118e.a.C1122a) aVar;
            builderNewBuilder.setGeneralRule(Reader.Rule.GeneralRule.newBuilder().setTag(d.c(c1122a.b())).setPath(d.c(c1122a.a())).build());
            return builderNewBuilder;
        }
        if (aVar instanceof C4118e.a.b) {
            C4118e.a.b bVar = (C4118e.a.b) aVar;
            Reader.Rule.PurRule.Builder shouldReport = Reader.Rule.PurRule.newBuilder().setTag(d.c(bVar.d())).setPath(d.c(bVar.a())).setShouldReport(d.a(bVar.c()));
            String strB = bVar.b();
            if (strB != null) {
                shouldReport.setQuery(d.c(strB));
            }
            builderNewBuilder.setPurRule(shouldReport.build());
        }
        return builderNewBuilder;
    }

    public a(String str, String str2, Struct struct, List list, InterfaceC1110a interfaceC1110a, f fVar) {
        super(c.Post, str, fVar, null, 8, null);
        this.f = str2;
        this.g = struct;
        this.h = list;
        this.i = interfaceC1110a;
    }
}
