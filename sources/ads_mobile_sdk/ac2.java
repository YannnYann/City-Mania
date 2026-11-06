package ads_mobile_sdk;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import com.ironsource.C3522b4;
import com.ironsource.G4;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class ac2 extends SQLiteOpenHelper {
    public static final String f = StringsKt__StringsKt.trim("\n      CREATE TABLE offline_buffered_pings (timestamp INTEGER PRIMARY_KEY, gws_query_id TEXT, url TEXT, event_state INTEGER)\n      ").toString();
    public final CoroutineScope a;
    public final tx b;
    public final lc2 c;
    public final vw3 d;
    public final Mutex e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ac2(Context context, CoroutineScope backgroundScope, int i, tx clock, lc2 offlineWorkManager, vw3 pinger) {
        super(context, "AdMobOfflineBufferedPings.db", (SQLiteDatabase.CursorFactory) null, i);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(offlineWorkManager, "offlineWorkManager");
        Intrinsics.checkNotNullParameter(pinger, "pinger");
        this.a = backgroundScope;
        this.b = clock;
        this.c = offlineWorkManager;
        this.d = pinger;
        this.e = MutexKt.Mutex$default(false, 1, null);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sqLiteDatabase) {
        Intrinsics.checkNotNullParameter(sqLiteDatabase, "sqLiteDatabase");
        sqLiteDatabase.execSQL(f);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sqLiteDatabase, int i, int i2) {
        Intrinsics.checkNotNullParameter(sqLiteDatabase, "sqLiteDatabase");
        sqLiteDatabase.execSQL("DROP TABLE IF EXISTS offline_buffered_pings");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sqLiteDatabase, int i, int i2) {
        Intrinsics.checkNotNull(sqLiteDatabase);
        Intrinsics.checkNotNullParameter(sqLiteDatabase, "sqLiteDatabase");
        sqLiteDatabase.execSQL("DROP TABLE IF EXISTS offline_buffered_pings");
    }

    public static final void a(ac2 ac2Var, SQLiteDatabase sQLiteDatabase) {
        ac2Var.getClass();
        sQLiteDatabase.beginTransaction();
        try {
            String[] strArrA = ac2Var.a(sQLiteDatabase);
            rb2 rb2Var = rb2.a;
            sQLiteDatabase.delete("offline_buffered_pings", "event_state = ?", new String[]{String.valueOf(1)});
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
            for (String str : strArrA) {
                if (str != null) {
                    vw3 vw3Var = ac2Var.d;
                    Uri uri = Uri.parse(str);
                    Intrinsics.checkNotNullExpressionValue(uri, "parse(...)");
                    vw3Var.getClass();
                    Intrinsics.checkNotNullParameter(uri, "uri");
                    vw3Var.e.mo2951trySendJP2dKIU(new Pair(uri, null));
                }
            }
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
            throw th;
        }
    }

    public final String[] a(SQLiteDatabase sQLiteDatabase) {
        String[] strArr = {G4.a.d, "url"};
        rb2 rb2Var = rb2.a;
        Cursor cursorQuery = sQLiteDatabase.query("offline_buffered_pings", strArr, "event_state = 1", null, null, null, "timestamp ASC", null);
        Intrinsics.checkNotNullExpressionValue(cursorQuery, "query(...)");
        String[] strArr2 = new String[cursorQuery.getCount()];
        int i = 0;
        while (cursorQuery.moveToNext()) {
            int columnIndex = cursorQuery.getColumnIndex(G4.a.d);
            int columnIndex2 = cursorQuery.getColumnIndex("url");
            if (columnIndex2 != -1) {
                long j = cursorQuery.getLong(columnIndex);
                String string = cursorQuery.getString(columnIndex2);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                strArr2[i] = a(j, string);
            }
            i++;
        }
        cursorQuery.close();
        return strArr2;
    }

    public final String a(long j, String str) {
        if (str == null) {
            return "";
        }
        Uri uri = Uri.parse(str);
        this.b.getClass();
        long jB = tx.b() - j;
        String encodedQuery = uri.getEncodedQuery();
        Uri.Builder builderClearQuery = uri.buildUpon().clearQuery();
        builderClearQuery.appendQueryParameter("bd", String.valueOf(jB));
        return builderClearQuery.build().toString() + C3522b4.j.c + encodedQuery;
    }
}
