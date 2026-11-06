package com.ironsource.adqualitysdk.sdk.i;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ү, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0252 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static final String[] f1565;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final SQLiteDatabase f1569;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final String f1568 = StringFog.decrypt("tB6Ofg86KBE=\n", "32jRDXtVWnQ=\n");

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f1567 = StringFog.decrypt("ckjx\n", "GS2Ijrqf55U=\n");

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String f1566 = StringFog.decrypt("6VQl\n", "nzVJPsmeXOA=\n");

    static {
        StringFog.decrypt("cbd5Eu/iVHNRkEFW98R+el2SWTLf41R9WZdd\n", "OOQ4dr6XNR8=\n");
        f1565 = new String[]{StringFog.decrypt("f7YP\n", "FNN2l2oIzH0=\n"), StringFog.decrypt("YgUs\n", "FGRA3NDqQ7w=\n")};
    }

    public C0252(Context context, String str) {
        this.f1569 = new C0267(context, str).getWritableDatabase();
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized int m1206(String str) {
        Cursor cursorQuery = null;
        try {
            cursorQuery = this.f1569.query(f1568, new String[]{StringFog.decrypt("z+/rl+EeIS7giQ==\n", "jKC+2bU2V08=\n")}, StringFog.decrypt("Ngfpzou9+1N9XQ==\n", "XWKQ7sf0sBY=\n"), new String[]{str.replace('*', '%')}, null, null, null);
            if (cursorQuery == null || !cursorQuery.moveToFirst()) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return 0;
            }
            int i = cursorQuery.getInt(0);
            cursorQuery.close();
            return i;
        } finally {
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m1209(String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(f1566, str2);
        SQLiteDatabase sQLiteDatabase = this.f1569;
        String str3 = f1568;
        if (sQLiteDatabase.update(str3, contentValues, StringFog.decrypt("or+0MpLjZQ==\n", "ydrNEq/DWrw=\n"), new String[]{str}) == 0) {
            contentValues.put(f1567, str);
            this.f1569.replace(str3, null, contentValues);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized String m1207(String str) {
        Cursor cursor = null;
        try {
            Cursor cursorQuery = this.f1569.query(f1568, f1565, StringFog.decrypt("ReoztAFbYA==\n", "Lo9KlDx7XwI=\n"), new String[]{str}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToNext()) {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(f1566));
                        cursorQuery.close();
                        return string;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized HashMap m1208(String str, int i) {
        HashMap map;
        Cursor cursorQuery = null;
        try {
            cursorQuery = this.f1569.query(f1568, f1565, StringFog.decrypt("Fbhmb5nwtfxe4g==\n", "ft0fT9W5/rk=\n"), new String[]{str.replace('*', '%')}, null, null, null, i <= 0 ? null : Integer.toString(i));
            map = new HashMap();
            while (cursorQuery != null) {
                if (!cursorQuery.moveToNext()) {
                    break;
                }
                try {
                    map.put(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(f1567)), cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(f1566)));
                } catch (IllegalArgumentException unused) {
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } finally {
        }
        return map;
    }
}
