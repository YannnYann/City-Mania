package io.bidmachine.analytics.internal.F;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.ironsource.C3670j8;
import com.ironsource.Cc;
import com.ironsource.G4;
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
public final class b {
    public static final a b = new a(null);
    private final SQLiteDatabase a;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.F.b$b, reason: collision with other inner class name */
    public static final class C1113b extends Lambda implements Function1 {
        final /* synthetic */ ContentValues b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1113b(ContentValues contentValues) {
            super(1);
            this.b = contentValues;
        }

        public final void a(List list) {
            SQLiteDatabase sQLiteDatabase = b.this.a;
            ContentValues contentValues = this.b;
            String[] strArrA = null;
            String strA = list != null ? io.bidmachine.analytics.internal.I.a.a(list, "id IN") : null;
            if (list != null) {
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((io.bidmachine.analytics.internal.G.c) it.next()).c());
                }
                strArrA = io.bidmachine.analytics.internal.I.a.a(arrayList);
            }
            sQLiteDatabase.update("monitor_record", contentValues, strA, strArrA);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((List) obj);
            return Unit.INSTANCE;
        }
    }

    public static final class c extends Lambda implements Function1 {
        public c() {
            super(1);
        }

        public final void a(List list) {
            SQLiteDatabase sQLiteDatabase = b.this.a;
            String[] strArrA = null;
            String strA = list != null ? io.bidmachine.analytics.internal.I.a.a(list, "id IN") : null;
            if (list != null) {
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((io.bidmachine.analytics.internal.G.c) it.next()).c());
                }
                strArrA = io.bidmachine.analytics.internal.I.a.a(arrayList);
            }
            sQLiteDatabase.delete("monitor_record", strA, strArrA);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((List) obj);
            return Unit.INSTANCE;
        }
    }

    public b(SQLiteDatabase sQLiteDatabase) {
        this.a = sQLiteDatabase;
    }

    public final Object b(List list) {
        return a(false, list);
    }

    public final Object c(List list) {
        return a(true, list);
    }

    public final Object a(io.bidmachine.analytics.internal.G.c cVar) {
        try {
            Result.Companion companion = Result.Companion;
            ContentValues contentValues = new ContentValues();
            contentValues.put(C3670j8.x, cVar.c());
            contentValues.put("name", cVar.d());
            contentValues.put(G4.a.d, Long.valueOf(cVar.f()));
            contentValues.put("session_id", cVar.e());
            contentValues.put("data", g.b(cVar.a(), cVar.c()));
            contentValues.put(Cc.a.g, g.b(cVar.b(), cVar.c()));
            this.a.insert("monitor_record", null, contentValues);
            return Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public final Object a(String str, String str2) {
        return a(str, str2, (Integer) null);
    }

    public final Object a(String str, String str2, Integer num) {
        return a("name = ? AND session_id = ? AND is_reserved = 0", new String[]{str, str2}, num != null ? num.toString() : null);
    }

    /* JADX WARN: Finally extract failed */
    private final Object a(String str, String[] strArr, String str2) {
        ArrayList arrayList = new ArrayList();
        try {
            Result.Companion companion = Result.Companion;
            try {
                Cursor cursorQuery = this.a.query("monitor_record", new String[]{C3670j8.x, "name", G4.a.d, "session_id", "data", Cc.a.g}, str, strArr, null, null, "timestamp DESC", str2);
                while (cursorQuery.moveToNext()) {
                    try {
                        try {
                            Result.Companion companion2 = Result.Companion;
                            String string = cursorQuery.getString(0);
                            String string2 = cursorQuery.getString(1);
                            long j = cursorQuery.getLong(2);
                            Result.m2760constructorimpl(Boolean.valueOf(arrayList.add(new io.bidmachine.analytics.internal.G.c(string, string2, cursorQuery.getString(3), j, g.a(cursorQuery.getBlob(4), string), g.a(cursorQuery.getBlob(5), string)))));
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

    public final Object a() {
        return a(false, (List) null);
    }

    private final Object a(boolean z, List list) {
        try {
            Result.Companion companion = Result.Companion;
            ContentValues contentValues = new ContentValues();
            contentValues.put("is_reserved", Boolean.valueOf(z));
            io.bidmachine.analytics.internal.I.a.a(list, this.a, 0, new C1113b(contentValues), 2, null);
            return Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public final Object a(List list) {
        try {
            Result.Companion companion = Result.Companion;
            io.bidmachine.analytics.internal.I.a.a(list, this.a, 0, new c(), 2, null);
            return Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public final Object a(String str, List list) {
        try {
            Result.Companion companion = Result.Companion;
            this.a.delete("monitor_record", "session_id != ? OR " + io.bidmachine.analytics.internal.I.a.a(list, "name NOT IN"), io.bidmachine.analytics.internal.I.a.a(CollectionsKt___CollectionsKt.plus((Collection) CollectionsKt__CollectionsJVMKt.listOf(str), (Iterable) list)));
            return Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }
}
