package io.bidmachine.analytics.internal.H;

import android.database.sqlite.SQLiteDatabase;
import io.bidmachine.analytics.internal.g.C4117d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class d implements c {
    private final SQLiteDatabase a;
    private final Lazy b = LazyKt__LazyJVMKt.lazy(new a());

    public static final class a extends Lambda implements Function0 {
        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.bidmachine.analytics.internal.F.b invoke() {
            return new io.bidmachine.analytics.internal.F.b(d.this.a);
        }
    }

    public d(SQLiteDatabase sQLiteDatabase) {
        this.a = sQLiteDatabase;
    }

    @Override // io.bidmachine.analytics.internal.H.c
    public Object b(List list) {
        io.bidmachine.analytics.internal.F.b bVarA = a();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(io.bidmachine.analytics.internal.G.d.a((C4117d) it.next()));
        }
        return bVarA.a(arrayList);
    }

    @Override // io.bidmachine.analytics.internal.H.c
    public Object c(List list) {
        io.bidmachine.analytics.internal.F.b bVarA = a();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(io.bidmachine.analytics.internal.G.d.a((C4117d) it.next()));
        }
        return bVarA.b(arrayList);
    }

    private final io.bidmachine.analytics.internal.F.b a() {
        return (io.bidmachine.analytics.internal.F.b) this.b.getValue();
    }

    @Override // io.bidmachine.analytics.internal.H.c
    public Object a(C4117d c4117d) {
        return a().a(io.bidmachine.analytics.internal.G.d.a(c4117d));
    }

    @Override // io.bidmachine.analytics.internal.H.c
    public Object a(String str, String str2) {
        return a(a().a(str, str2));
    }

    @Override // io.bidmachine.analytics.internal.H.c
    public Object a(String str, String str2, int i) {
        return a(a().a(str, str2, Integer.valueOf(i)));
    }

    @Override // io.bidmachine.analytics.internal.H.c
    public Object a(List list) {
        io.bidmachine.analytics.internal.F.b bVarA = a();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(io.bidmachine.analytics.internal.G.d.a((C4117d) it.next()));
        }
        return bVarA.c(arrayList);
    }

    public final Object b() {
        return a().a();
    }

    @Override // io.bidmachine.analytics.internal.H.c
    public Object a(String str, List list) {
        return a().a(str, list);
    }

    private final Object a(Object obj) {
        try {
            Result.Companion companion = Result.Companion;
            ResultKt.throwOnFailure(obj);
            Iterable iterable = (Iterable) obj;
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10));
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(io.bidmachine.analytics.internal.G.d.a((io.bidmachine.analytics.internal.G.c) it.next()));
            }
            return Result.m2760constructorimpl(arrayList);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }
}
