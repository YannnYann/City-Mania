package com.facebook.ads.redexgen.X;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class NF {
    public static byte[] A00;
    public static String[] A01 = {"KgCm6W2elLLZb0kLSCRIMIZIMt", "tzFwHHyrLqnIVhlBhrnLmq9jcs", "Dvwl2PDhKYSeIEHpVeewSiyXfi5uyeGS", "Z7ViszcMclBZj", "URVSwx4oRQjVAhuJ0fCKAaSmLbJJnkw4", "q2EatZWDXsw5ex2Swx", "YggFO2406BNuk7mxe4tC6dlSnrHv4h6h", "Jhqg7vWPGKpZ2KaSVA1BKgOLhaMAysK2"};

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static int A00(SQLiteDatabase sQLiteDatabase, int i, String str) throws NC {
        try {
        } catch (SQLException e) {
            throw new NC(e);
        }
        if (!N1.A19(sQLiteDatabase, A01(159, 17, 85))) {
            return -1;
        }
        Cursor cursorQuery = sQLiteDatabase.query(A01(159, 17, 85), new String[]{A01(244, 7, 108)}, A01(183, 32, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE), A05(i, str), null, null, null);
        try {
            if (cursorQuery.getCount() == 0) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return -1;
            }
            cursorQuery.moveToNext();
            int i2 = cursorQuery.getInt(0);
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return i2;
        } finally {
        }
        throw new NC(e);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A01;
            if (strArr[1].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[7] = "K3mSfW6ZaDJyERBWeusPDDDtkHvUypbC";
            strArr2[2] = "QT09LhxLn0O919cOkmk7SYqwUT8kyBfb";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 83);
            i4++;
        }
    }

    public static void A02() {
        A00 = new byte[]{-17, -2, -15, -19, 0, -15, -52, 0, -19, -18, -8, -15, -52, -11, -14, -52, -6, -5, 0, -52, -15, 4, -11, -1, 0, -1, -52, -15, 36, 27, -4, 24, 13, 37, 17, 30, 2, 17, 30, 31, 21, 27, 26, 31, -52, -44, 18, 17, 13, 32, 33, 30, 17, -52, -11, -6, 0, -15, -13, -15, -2, -52, -6, -5, 0, -52, -6, 1, -8, -8, -40, 21, 26, 31, 32, 13, 26, 15, 17, 11, 33, 21, 16, -52, 0, -15, 4, 0, -52, -6, -5, 0, -52, -6, 1, -8, -8, -40, 34, 17, 30, 31, 21, 27, 26, -52, -11, -6, 0, -15, -13, -15, -2, -52, -6, -5, 0, -52, -6, 1, -8, -8, -40, -4, -2, -11, -7, -19, -2, 5, -52, -9, -15, 5, -52, -44, 18, 17, 13, 32, 33, 30, 17, -40, -52, 21, 26, 31, 32, 13, 26, 15, 17, 11, 33, 21, 16, -43, -43, -19, 32, 23, -8, 20, 9, 33, 13, 26, -2, 13, 26, 27, 17, 23, 22, 27, 47, 46, 42, 61, 62, 59, 46, 48, 47, 43, 62, 63, 60, 47, -22, 7, -22, 9, -22, 11, 24, 14, -22, 51, 56, 61, 62, 43, 56, 45, 47, 41, 63, 51, 46, -22, 7, -22, 9, 46, 54, 54, 46, -11, 44, 63, 54, -11, 43, 40, 59, 40, 41, 40, 58, 44, 5, 10, 15, 16, -3, 10, -1, 1, -5, 17, 5, 0, 53, 36, 49, 50, 40, 46, 45};
    }

    static {
        A02();
        C1730Ku.A03(A01(Sdk.SDKError.Reason.AD_RESPONSE_EMPTY_VALUE, 17, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE));
    }

    public static void A03(SQLiteDatabase sQLiteDatabase, int i, String str) throws NC {
        String strA01 = A01(159, 17, 85);
        try {
            if (!N1.A19(sQLiteDatabase, strA01)) {
                return;
            }
            sQLiteDatabase.delete(strA01, A01(183, 32, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE), A05(i, str));
        } catch (SQLException e) {
            throw new NC(e);
        }
    }

    public static void A04(SQLiteDatabase sQLiteDatabase, int i, String str, int i2) throws NC {
        try {
            sQLiteDatabase.execSQL(A01(0, 159, 89));
            ContentValues contentValues = new ContentValues();
            contentValues.put(A01(176, 7, Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE), Integer.valueOf(i));
            contentValues.put(A01(232, 12, 73), str);
            contentValues.put(A01(244, 7, 108), Integer.valueOf(i2));
            sQLiteDatabase.replaceOrThrow(A01(159, 17, 85), null, contentValues);
        } catch (SQLException e) {
            throw new NC(e);
        }
    }

    public static String[] A05(int i, String str) {
        return new String[]{Integer.toString(i), str};
    }
}
