package io.bidmachine.analytics.internal.F;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.ironsource.C3670j8;
import com.ironsource.Cc;
import com.ironsource.G4;
import io.bidmachine.analytics.internal.G.e;
import io.bidmachine.analytics.internal.I.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class c {
    public static final a b = new a(null);
    private final SQLiteDatabase a;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b extends Lambda implements Function1 {
        final /* synthetic */ ContentValues b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(ContentValues contentValues) {
            super(1);
            this.b = contentValues;
        }

        public final void a(List list) {
            SQLiteDatabase sQLiteDatabase = c.this.a;
            ContentValues contentValues = this.b;
            String[] strArrA = null;
            String strA = list != null ? io.bidmachine.analytics.internal.I.a.a(list, "id IN") : null;
            if (list != null) {
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((e) it.next()).c());
                }
                strArrA = io.bidmachine.analytics.internal.I.a.a(arrayList);
            }
            sQLiteDatabase.update("reader_record", contentValues, strA, strArrA);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((List) obj);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.F.c$c, reason: collision with other inner class name */
    public static final class C1114c extends Lambda implements Function1 {
        public C1114c() {
            super(1);
        }

        public final void a(List list) {
            SQLiteDatabase sQLiteDatabase = c.this.a;
            String[] strArrA = null;
            String strA = list != null ? io.bidmachine.analytics.internal.I.a.a(list, "id IN") : null;
            if (list != null) {
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((e) it.next()).c());
                }
                strArrA = io.bidmachine.analytics.internal.I.a.a(arrayList);
            }
            sQLiteDatabase.delete("reader_record", strA, strArrA);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((List) obj);
            return Unit.INSTANCE;
        }
    }

    public c(SQLiteDatabase sQLiteDatabase) {
        this.a = sQLiteDatabase;
    }

    public final Object b() {
        return a(false, (List) null);
    }

    public final Object c(e eVar) {
        try {
            Result.Companion companion = Result.Companion;
            this.a.update("reader_record", b(eVar), "id = ?", new String[]{eVar.c()});
            return Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public final Object d(List list) {
        return a(false, list);
    }

    public final Object e(List list) {
        return a(true, list);
    }

    public final Object a(e eVar) {
        try {
            Result.Companion companion = Result.Companion;
            this.a.insert("reader_record", null, b(eVar));
            return Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public final Object b(List list) {
        try {
            Result.Companion companion = Result.Companion;
            this.a.delete("reader_record", io.bidmachine.analytics.internal.I.a.a(list, "name NOT IN"), io.bidmachine.analytics.internal.I.a.a(list));
            return Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public final Object a(String str, String str2) {
        Object objA = a(this, "name = ? AND rule = ? AND " + a(), new String[]{str, g.c(str2)}, null, 4, null);
        if (Result.m2765isFailureimpl(objA)) {
            Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objA);
            if (thM2763exceptionOrNullimpl == null) {
                thM2763exceptionOrNullimpl = new Exception();
            }
            return Result.m2760constructorimpl(ResultKt.createFailure(thM2763exceptionOrNullimpl));
        }
        if (Result.m2765isFailureimpl(objA)) {
            objA = null;
        }
        List list = (List) objA;
        return Result.m2760constructorimpl(list != null ? (e) CollectionsKt___CollectionsKt.firstOrNull(list) : null);
    }

    private final ContentValues b(e eVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(C3670j8.x, eVar.c());
        contentValues.put("name", eVar.d());
        contentValues.put(G4.a.d, Long.valueOf(eVar.f()));
        contentValues.put("data_hash", eVar.a());
        contentValues.put("rule", g.c(eVar.e()));
        contentValues.put(Cc.a.g, g.b(eVar.b(), eVar.c()));
        contentValues.put("is_dirty", Boolean.valueOf(eVar.g()));
        return contentValues;
    }

    public final Object c(List list) {
        try {
            Result.Companion companion = Result.Companion;
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(g.c((String) it.next()));
            }
            this.a.delete("reader_record", io.bidmachine.analytics.internal.I.a.a(arrayList, "rule NOT IN"), io.bidmachine.analytics.internal.I.a.a(arrayList));
            return Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public final Object a(String str) {
        return a(this, "name = ? AND is_reserved = 0 AND is_dirty = 1", new String[]{str}, null, 4, null);
    }

    public static /* synthetic */ Object a(c cVar, String str, String[] strArr, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            strArr = null;
        }
        if ((i & 4) != 0) {
            str2 = null;
        }
        return cVar.a(str, strArr, str2);
    }

    /* JADX WARN: Finally extract failed */
    private final Object a(String str, String[] strArr, String str2) {
        ArrayList arrayList = new ArrayList();
        try {
            Result.Companion companion = Result.Companion;
            try {
                Cursor cursorQuery = this.a.query("reader_record", new String[]{C3670j8.x, "name", G4.a.d, "data_hash", "rule", Cc.a.g, "is_dirty"}, str, strArr, null, null, "timestamp DESC", str2);
                while (cursorQuery.moveToNext()) {
                    try {
                        try {
                            Result.Companion companion2 = Result.Companion;
                            String string = cursorQuery.getString(0);
                            Result.m2760constructorimpl(Boolean.valueOf(arrayList.add(new e(string, cursorQuery.getString(1), cursorQuery.getLong(2), cursorQuery.getString(3), g.a(cursorQuery.getString(4)), g.a(cursorQuery.getBlob(5), string), cursorQuery.getInt(6) == 1))));
                        } catch (Throwable th) {
                            Result.Companion companion3 = Result.Companion;
                            Result.m2760constructorimpl(ResultKt.createFailure(th));
                        }
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } catch (Throwable th3) {
                            CloseableKt.closeFinally(cursorQuery, th2);
                            throw th3;
                        }
                    }
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(cursorQuery, null);
                Result.m2760constructorimpl(unit);
            } catch (Throwable th4) {
                th = th4;
                Result.Companion companion4 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
        } catch (Throwable th5) {
            th = th5;
        }
        return Result.m2760constructorimpl(arrayList);
    }

    private final Object a(boolean z, List list) {
        try {
            Result.Companion companion = Result.Companion;
            ContentValues contentValues = new ContentValues();
            contentValues.put("is_reserved", Boolean.valueOf(z));
            io.bidmachine.analytics.internal.I.a.a(list, this.a, 0, new b(contentValues), 2, null);
            return Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public final Object a(List list) {
        try {
            Result.Companion companion = Result.Companion;
            io.bidmachine.analytics.internal.I.a.a(list, this.a, 0, new C1114c(), 2, null);
            return Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public final Object a(String str, List list) {
        try {
            Result.Companion companion = Result.Companion;
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(g.c((String) it.next()));
            }
            this.a.delete("reader_record", "name = ? AND " + a() + " AND " + io.bidmachine.analytics.internal.I.a.a(arrayList, "rule IN"), io.bidmachine.analytics.internal.I.a.a(CollectionsKt___CollectionsKt.plus((Collection) CollectionsKt__CollectionsJVMKt.listOf(str), (Iterable) arrayList)));
            return Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    private final String a() {
        return "(LENGTH(error) = 0 OR error IS NULL)";
    }
}
