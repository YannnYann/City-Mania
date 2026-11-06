package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ԇ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0267 extends SQLiteOpenHelper {
    public C0267(Context context, String str) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        if (!sQLiteDatabase.isReadOnly()) {
            sQLiteDatabase.execSQL(StringFog.decrypt("6cHAICeUNOPW4eQODbtL7tzqvCgk\n", "uZOBZ2rVFIU=\n"));
        }
        sQLiteDatabase.execSQL(StringFog.decrypt("6Mot+J73hhHq2iT86vvgZeXXPJmP6u8W/8tI0rzt1THE6g2RodffZf/dMO3q4vQM5tk64Or54xyH\nuB7YppLyAPPMQQ==\n", "q5houcqypkU=\n"));
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
