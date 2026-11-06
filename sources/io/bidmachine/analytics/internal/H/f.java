package io.bidmachine.analytics.internal.H;

import android.database.sqlite.SQLiteDatabase;
import io.bidmachine.analytics.internal.g.C4118e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class f implements e {
    private final SQLiteDatabase a;
    private final Lazy b = LazyKt__LazyJVMKt.lazy(new a());

    public static final class a extends Lambda implements Function0 {
        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.bidmachine.analytics.internal.F.c invoke() {
            return new io.bidmachine.analytics.internal.F.c(f.this.a);
        }
    }

    public f(SQLiteDatabase sQLiteDatabase) {
        this.a = sQLiteDatabase;
    }

    @Override // io.bidmachine.analytics.internal.H.e
    public Object b(C4118e c4118e) {
        return a().c(io.bidmachine.analytics.internal.G.f.a(c4118e));
    }

    @Override // io.bidmachine.analytics.internal.H.e
    public Object c(List list) {
        io.bidmachine.analytics.internal.F.c cVarA = a();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(io.bidmachine.analytics.internal.G.f.a((C4118e) it.next()));
        }
        return cVarA.d(arrayList);
    }

    private final io.bidmachine.analytics.internal.F.c a() {
        return (io.bidmachine.analytics.internal.F.c) this.b.getValue();
    }

    @Override // io.bidmachine.analytics.internal.H.e
    public Object b(List list) {
        io.bidmachine.analytics.internal.F.c cVarA = a();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(io.bidmachine.analytics.internal.G.f.a((C4118e) it.next()));
        }
        return cVarA.a(arrayList);
    }

    @Override // io.bidmachine.analytics.internal.H.e
    public Object a(C4118e c4118e) {
        return a().a(io.bidmachine.analytics.internal.G.f.a(c4118e));
    }

    @Override // io.bidmachine.analytics.internal.H.e
    public Object a(String str, C4118e.a aVar) {
        Object objA = a().a(str, io.bidmachine.analytics.internal.G.f.a(aVar).toString());
        try {
            Result.Companion companion = Result.Companion;
            ResultKt.throwOnFailure(objA);
            io.bidmachine.analytics.internal.G.e eVar = (io.bidmachine.analytics.internal.G.e) objA;
            return Result.m2760constructorimpl(eVar != null ? io.bidmachine.analytics.internal.G.f.a(eVar) : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    @Override // io.bidmachine.analytics.internal.H.e
    public Object a(String str) {
        return a(a().a(str));
    }

    @Override // io.bidmachine.analytics.internal.H.e
    public Object a(List list) {
        io.bidmachine.analytics.internal.F.c cVarA = a();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(io.bidmachine.analytics.internal.G.f.a((C4118e) it.next()));
        }
        return cVarA.e(arrayList);
    }

    public final Object b() {
        return a().b();
    }

    @Override // io.bidmachine.analytics.internal.H.e
    public Object a(String str, List list) {
        io.bidmachine.analytics.internal.F.c cVarA = a();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(io.bidmachine.analytics.internal.G.f.a((C4118e.a) it.next()).toString());
        }
        return cVarA.a(str, arrayList);
    }

    @Override // io.bidmachine.analytics.internal.H.e
    public Object a(List list, List list2) {
        a().b(list);
        io.bidmachine.analytics.internal.F.c cVarA = a();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(io.bidmachine.analytics.internal.G.f.a((C4118e.a) it.next()).toString());
        }
        cVarA.c(arrayList);
        Result.Companion companion = Result.Companion;
        return Result.m2760constructorimpl(Unit.INSTANCE);
    }

    private final Object a(Object obj) {
        try {
            Result.Companion companion = Result.Companion;
            ResultKt.throwOnFailure(obj);
            Iterable iterable = (Iterable) obj;
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10));
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(io.bidmachine.analytics.internal.G.f.a((io.bidmachine.analytics.internal.G.e) it.next()));
            }
            return Result.m2760constructorimpl(arrayList);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }
}
