package io.bidmachine.analytics.internal.E;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.ironsource.G5;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends SQLiteOpenHelper {
    public static final C1111a a = new C1111a(null);

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.E.a$a, reason: collision with other inner class name */
    public static final class C1111a {
        public /* synthetic */ C1111a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C1111a() {
        }
    }

    public a(Context context) {
        super(context, "BMAnalytics.db", (SQLiteDatabase.CursorFactory) null, 3);
    }

    /* JADX WARN: Finally extract failed */
    private final Object a(SQLiteDatabase sQLiteDatabase) {
        try {
            Result.Companion companion = Result.Companion;
            Cursor cursorQuery = sQLiteDatabase.query("sqlite_master", new String[]{"name"}, "type = ?", new String[]{G5.R}, null, null, null);
            while (cursorQuery.moveToNext()) {
                try {
                    try {
                        Result.Companion companion2 = Result.Companion;
                        String string = cursorQuery.getString(0);
                        if (!Intrinsics.areEqual(string, "android_metadata") && !Intrinsics.areEqual(string, "sqlite_master")) {
                            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + string);
                        }
                        Result.m2760constructorimpl(Unit.INSTANCE);
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
            return Result.m2760constructorimpl(unit);
        } catch (Throwable th4) {
            Result.Companion companion4 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th4));
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE monitor_record (id TEXT,name TEXT,timestamp INTEGER,session_id TEXT,data BLOB,error BLOB,is_reserved INTEGER DEFAULT 0)");
        sQLiteDatabase.execSQL("CREATE TABLE reader_record (id TEXT,name TEXT,timestamp INTEGER,data_hash TEXT,rule TEXT,error BLOB,is_dirty INTEGER,is_reserved INTEGER DEFAULT 0)");
        sQLiteDatabase.execSQL("CREATE TABLE irec (id TEXT,sid TEXT,itm TEXT,iat INTEGER,irv INTEGER,itp INTEGER)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        onUpgrade(sQLiteDatabase, i, i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        a(sQLiteDatabase);
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS monitor_record");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS reader_record");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS irec");
        onCreate(sQLiteDatabase);
    }
}
