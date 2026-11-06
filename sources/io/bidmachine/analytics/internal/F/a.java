package io.bidmachine.analytics.internal.F;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteFullException;
import com.ironsource.C3670j8;
import com.ironsource.R6;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public static final C1112a b = new C1112a(null);
    private final SQLiteDatabase a;

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.F.a$a, reason: collision with other inner class name */
    public static final class C1112a {
        public /* synthetic */ C1112a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C1112a() {
        }
    }

    public a(SQLiteDatabase sQLiteDatabase) {
        this.a = sQLiteDatabase;
    }

    private final Object c(String str) {
        try {
            Result.Companion companion = Result.Companion;
            Cursor cursorRawQuery = this.a.rawQuery(str, new String[0]);
            try {
                a(cursorRawQuery);
                int i = cursorRawQuery.getInt(0);
                if (i != 0 && i != 1) {
                    throw new IllegalArgumentException(("Column 't' must be 0 or 1, but was " + i).toString());
                }
                Object objM2760constructorimpl = Result.m2760constructorimpl(Integer.valueOf(i));
                CloseableKt.closeFinally(cursorRawQuery, null);
                return objM2760constructorimpl;
            } finally {
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public final Object a(io.bidmachine.analytics.internal.G.a aVar) {
        Object objM2760constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            ContentValues contentValues = new ContentValues();
            contentValues.put(C3670j8.x, aVar.b());
            contentValues.put(R6.e1, aVar.f());
            contentValues.put("itm", aVar.c());
            contentValues.put("iat", Integer.valueOf(aVar.a()));
            contentValues.put("irv", Long.valueOf(aVar.d()));
            contentValues.put(R6.f0, Integer.valueOf(aVar.e()));
            this.a.insert("irec", null, contentValues);
            objM2760constructorimpl = Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
        if (thM2763exceptionOrNullimpl != null && (thM2763exceptionOrNullimpl instanceof SQLiteFullException)) {
            try {
                this.a.execSQL("DELETE FROM irec\nWHERE rowid NOT IN (\n    SELECT rowid FROM irec\n    ORDER BY itm DESC, rowid DESC\n    LIMIT 100\n)");
                Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th2) {
                Result.Companion companion3 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th2));
            }
        }
        return objM2760constructorimpl;
    }

    public final Object b(String str) {
        try {
            Result.Companion companion = Result.Companion;
            Object objC = c(str);
            if (Result.m2765isFailureimpl(objC)) {
                Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objC);
                if (thM2763exceptionOrNullimpl == null) {
                    thM2763exceptionOrNullimpl = new Exception("Error while execute " + str);
                }
                return Result.m2760constructorimpl(ResultKt.createFailure(thM2763exceptionOrNullimpl));
            }
            if (Result.m2765isFailureimpl(objC)) {
                objC = null;
            }
            Integer num = (Integer) objC;
            if (num == null) {
                return Result.m2760constructorimpl(ResultKt.createFailure(new Exception("Empty result for " + str)));
            }
            int iIntValue = num.intValue();
            boolean z = true;
            if (iIntValue != 1) {
                z = false;
            }
            return Result.m2760constructorimpl(Boolean.valueOf(z));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public final Object a(String str) {
        try {
            Result.Companion companion = Result.Companion;
            this.a.delete("irec", "itm < ?", new String[]{str});
            return Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    private final void a(Cursor cursor) {
        if (cursor.getColumnCount() == 1) {
            if (StringsKt__StringsJVMKt.equals(cursor.getColumnName(0), "t", false)) {
                if (cursor.moveToFirst()) {
                    if (!cursor.isLast()) {
                        throw new IllegalArgumentException("Query must return exactly one row, but returned more");
                    }
                    return;
                }
                throw new IllegalArgumentException("Query returned no rows");
            }
            throw new IllegalArgumentException(("Single column must be named 't', got '" + cursor.getColumnName(0) + '\'').toString());
        }
        throw new IllegalArgumentException(("Query must return exactly one column, got " + cursor.getColumnCount()).toString());
    }
}
