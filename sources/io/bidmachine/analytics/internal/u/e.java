package io.bidmachine.analytics.internal.u;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import io.bidmachine.analytics.internal.v.a;
import j$.util.DesugarTimeZone;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.Locale;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: loaded from: classes4.dex */
public final class e {
    public static final a c = new a(null);
    private static final SimpleDateFormat d;
    private final SQLiteDatabase a;
    private final String b;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final e a(String str) {
            SQLiteDatabase sQLiteDatabaseCreate = SQLiteDatabase.create(null);
            sQLiteDatabaseCreate.execSQL("PRAGMA foreign_keys=ON");
            sQLiteDatabaseCreate.execSQL("CREATE TABLE prec (\n  id INTEGER PRIMARY KEY AUTOINCREMENT,\n  pt TEXT NOT NULL CHECK (pt IN ('C','NC','ARS','NRS')),\n  pd TEXT NOT NULL CHECK (julianday(pd) IS NOT NULL),\n  ac INTEGER NOT NULL CHECK (ac IN (0,1))\n)");
            return new e(sQLiteDatabaseCreate, str, null);
        }

        private a() {
        }
    }

    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[a.EnumC1154a.values().length];
            try {
                iArr[a.EnumC1154a.INAPP_CONSUMABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[a.EnumC1154a.INAPP_NON_CONSUMABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[a.EnumC1154a.SUBS_AUTO_RENEWABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[a.EnumC1154a.SUBS_NON_AUTO_RENEWABLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.ROOT);
        simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
        d = simpleDateFormat;
    }

    public /* synthetic */ e(SQLiteDatabase sQLiteDatabase, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(sQLiteDatabase, str);
    }

    private final Object b(String str) {
        try {
            Result.Companion companion = Result.Companion;
            Object objA = a(str);
            if (Result.m2765isFailureimpl(objA)) {
                Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objA);
                if (thM2763exceptionOrNullimpl == null) {
                    thM2763exceptionOrNullimpl = new Exception("Error while execute " + str);
                }
                return Result.m2760constructorimpl(ResultKt.createFailure(thM2763exceptionOrNullimpl));
            }
            if (Result.m2765isFailureimpl(objA)) {
                objA = null;
            }
            Integer num = (Integer) objA;
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

    public final Object a() {
        try {
            Result.Companion companion = Result.Companion;
            return Result.m2760constructorimpl(Integer.valueOf(this.a.delete("prec", null, null)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public final Object c() {
        try {
            Result.Companion companion = Result.Companion;
            return b(this.b);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    private e(SQLiteDatabase sQLiteDatabase, String str) {
        this.a = sQLiteDatabase;
        this.b = str;
    }

    public final Object a(Iterable iterable) {
        try {
            Result.Companion companion = Result.Companion;
            this.a.beginTransaction();
            SQLiteStatement sQLiteStatementCompileStatement = this.a.compileStatement("INSERT INTO prec (pt, pd, ac) VALUES (?, ?, ?)");
            try {
                try {
                    Iterator it = iterable.iterator();
                    while (it.hasNext()) {
                        io.bidmachine.analytics.internal.v.a aVar = (io.bidmachine.analytics.internal.v.a) it.next();
                        sQLiteStatementCompileStatement.clearBindings();
                        sQLiteStatementCompileStatement.bindString(1, a(aVar.b()));
                        sQLiteStatementCompileStatement.bindString(2, d.format(aVar.a()));
                        sQLiteStatementCompileStatement.bindLong(3, aVar.c() ? 1L : 0L);
                        sQLiteStatementCompileStatement.executeInsert();
                    }
                    this.a.setTransactionSuccessful();
                    this.a.endTransaction();
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(sQLiteStatementCompileStatement, null);
                    return Result.m2760constructorimpl(unit);
                } catch (Throwable th) {
                    this.a.endTransaction();
                    throw th;
                }
            } finally {
            }
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th2));
        }
    }

    public final Object b() {
        try {
            Result.Companion companion = Result.Companion;
            this.a.close();
            return Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    private final Object a(String str) {
        try {
            Result.Companion companion = Result.Companion;
            Cursor cursorRawQuery = this.a.rawQuery(str, new String[0]);
            try {
                a(cursorRawQuery);
                int i = cursorRawQuery.getInt(0);
                if (i != 0 && i != 1) {
                    throw new IllegalArgumentException(("Column 'p' must be 0 or 1, but was " + i).toString());
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

    private final void a(Cursor cursor) {
        if (cursor.getColumnCount() == 1) {
            if (StringsKt__StringsJVMKt.equals(cursor.getColumnName(0), "p", false)) {
                if (cursor.moveToFirst()) {
                    if (!cursor.isLast()) {
                        throw new IllegalArgumentException("Query must return exactly one row, but returned more");
                    }
                    return;
                }
                throw new IllegalArgumentException("Query returned no rows");
            }
            throw new IllegalArgumentException(("Single column must be named 'p', got '" + cursor.getColumnName(0) + '\'').toString());
        }
        throw new IllegalArgumentException(("Query must return exactly one column, got " + cursor.getColumnCount()).toString());
    }

    private final String a(a.EnumC1154a enumC1154a) {
        int i = b.$EnumSwitchMapping$0[enumC1154a.ordinal()];
        if (i == 1) {
            return "C";
        }
        if (i == 2) {
            return "NC";
        }
        if (i == 3) {
            return "ARS";
        }
        if (i == 4) {
            return "NRS";
        }
        throw new NoWhenBranchMatchedException();
    }
}
