package com.facebook.ads.redexgen.X;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.ads.androidx.media3.common.StreamKey;
import com.facebook.ads.androidx.media3.exoplayer.offline.DownloadRequest;
import com.google.android.gms.ads.AdSize;
import com.ironsource.InterfaceC3681k1;
import com.unity3d.mediation.LevelPlayAdError;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8u, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C8u implements InterfaceC1899Rw {
    public static byte[] A05;
    public static String[] A06 = {"7Cqhd7TYEIEQ0qrxXZfO2rzvd4cSGz", "RvrdV3qQzSdjov", "oP", "ZIASwVtjFwhwDjgMykyIZAVtJcdT5eEn", "egLUyVYYM9u", "YLgdnLMz2ohJzBWCXAG3E968YRHUZ2", "DAWy9Tbma4nY", "va2RlBIaqbRBIyJRSZa9xWc9ZFY2Ohng"};
    public static final String A07;
    public static final String[] A08;
    public boolean A00;
    public final ND A01;
    public final Object A02;
    public final String A03;
    public final String A04;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static TW A01(Cursor cursor) {
        byte[] blob = cursor.getBlob(14);
        C1949Tu c1949TuA02 = new C1949Tu((String) AbstractC1747Ln.A01(cursor.getString(0)), Uri.parse((String) AbstractC1747Ln.A01(cursor.getString(2)))).A01(cursor.getString(1)).A02(A09(cursor.getString(3)));
        if (blob.length <= 0) {
            blob = null;
        }
        DownloadRequest downloadRequestA05 = c1949TuA02.A04(blob).A00(cursor.getString(4)).A03(cursor.getBlob(5)).A05();
        C1947Ts c1947Ts = new C1947Ts();
        c1947Ts.A01 = cursor.getLong(13);
        c1947Ts.A00 = cursor.getFloat(12);
        int i = cursor.getInt(6);
        return new TW(downloadRequestA05, i, cursor.getLong(7), cursor.getLong(8), cursor.getLong(9), cursor.getInt(10), i == 4 ? cursor.getInt(11) : 0, c1947Ts);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static TW A02(Cursor cursor) {
        DownloadRequest downloadRequestA05 = new C1949Tu((String) AbstractC1747Ln.A01(cursor.getString(0)), Uri.parse((String) AbstractC1747Ln.A01(cursor.getString(2)))).A01(A05(cursor.getString(1))).A02(A09(cursor.getString(3))).A00(cursor.getString(4)).A03(cursor.getBlob(5)).A05();
        C1947Ts c1947Ts = new C1947Ts();
        c1947Ts.A01 = cursor.getLong(13);
        c1947Ts.A00 = cursor.getFloat(12);
        int i = cursor.getInt(6);
        return new TW(downloadRequestA05, i, cursor.getLong(7), cursor.getLong(8), cursor.getLong(9), cursor.getInt(10), i == 4 ? cursor.getInt(11) : 0, c1947Ts);
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 47);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0B() {
        A05 = new byte[]{84, 112, 17, 30, 20, 112, 24, 113, 118, 24, 16, 111, 46, 35, 103, 19, 2, 31, 19, 103, 23, 21, 14, 10, 6, 21, 30, 103, 12, 2, 30, 103, 9, 8, 19, 103, 9, 18, 11, 11, 107, 42, 46, 42, 34, 24, 51, 62, 55, 34, 103, 19, 2, 31, 19, 107, 50, 53, 46, 103, 19, 2, 31, 19, 103, 9, 8, 19, 103, 9, 18, 11, 11, 107, 52, 51, 53, 34, 38, 42, 24, 44, 34, 62, 52, 103, 19, 2, 31, 19, 103, 9, 8, 19, 103, 9, 18, 11, 11, 107, 36, 50, 52, 51, 40, 42, 24, 36, 38, 36, 47, 34, 24, 44, 34, 62, 103, 19, 2, 31, 19, 107, 35, 38, 51, 38, 103, 5, 11, 8, 5, 103, 9, 8, 19, 103, 9, 18, 11, 11, 107, 52, 51, 38, 51, 34, 103, 14, 9, 19, 2, 0, 2, 21, 103, 9, 8, 19, 103, 9, 18, 11, 11, 107, 52, 51, 38, 53, 51, 24, 51, 46, 42, 34, 24, 42, 52, 103, 14, 9, 19, 2, 0, 2, 21, 103, 9, 8, 19, 103, 9, 18, 11, 11, 107, 50, 55, 35, 38, 51, 34, 24, 51, 46, 42, 34, 24, 42, 52, 103, 14, 9, 19, 2, 0, 2, 21, 103, 9, 8, 19, 103, 9, 18, 11, 11, 107, 36, 40, 41, 51, 34, 41, 51, 24, 43, 34, 41, 32, 51, 47, 103, 14, 9, 19, 2, 0, 2, 21, 103, 9, 8, 19, 103, 9, 18, 11, 11, 107, 52, 51, 40, 55, 24, 53, 34, 38, 52, 40, 41, 103, 14, 9, 19, 2, 0, 2, 21, 103, 9, 8, 19, 103, 9, 18, 11, 11, 107, 33, 38, 46, 43, 50, 53, 34, 24, 53, 34, 38, 52, 40, 41, 103, 14, 9, 19, 2, 0, 2, 21, 103, 9, 8, 19, 103, 9, 18, 11, 11, 107, 55, 34, 53, 36, 34, 41, 51, 24, 35, 40, 48, 41, 43, 40, 38, 35, 34, 35, 103, 21, 2, 6, 11, 103, 9, 8, 19, 103, 9, 18, 11, 11, 107, 37, 62, 51, 34, 52, 24, 35, 40, 48, 41, 43, 40, 38, 35, 34, 35, 103, 14, 9, 19, 2, 0, 2, 21, 103, 9, 8, 19, 103, 9, 18, 11, 11, 107, 44, 34, 62, 24, 52, 34, 51, 24, 46, 35, 103, 5, 11, 8, 5, 103, 9, 8, 19, 103, 9, 18, 11, 11, 110, 40, 39, 1, 16, 7, 3, 22, 7, 98, 22, 3, 0, 14, 7, 98, 69, 83, 78, 81, 33, 85, 64, 67, 77, 68, 33, 72, 71, 33, 68, 89, 72, 82, 85, 82, 33, 88, 101, 114, 77, 113, 124, 100, 120, 111, 89, 114, 106, 115, 113, 114, 124, 121, 110, 93, 47, 82, 67, 67, 95, 90, 80, 82, 71, 90, 92, 93, 28, 87, 82, 64, 91, 24, 75, 94, 95, 63, 46, 46, 50, 55, 61, 63, 42, 55, 49, 48, 113, 40, 48, 58, 112, 51, 45, 115, 45, 45, 42, 44, 117, 38, 51, 50, 45, 60, 60, 32, 37, 47, 45, 56, 37, 35, 34, 99, 52, 97, 33, 60, 41, 43, 25, 30, 0, 79, 84, 89, 72, 94, 114, 73, 66, 90, 67, 65, 66, 76, 73, 72, 73, 40, 36, 37, 63, 46, 37, 63, 20, 39, 46, 37, 44, 63, 35, 91, 77, 75, 76, 87, 85, 103, 91, 89, 91, 80, 93, 103, 83, 93, 65, 60, 57, 43, 48, 42, 47, 58, 47, 104, 111, 103, 98, 123, 124, 107, 81, 124, 107, 111, 125, 97, 96, 79, 75, 84, 126, 115, 48, 61, 121, 100, 121, 102, 14, 0, 28, 58, 22, 0, 17, 58, 12, 1, 71, 67, 71, 79, 117, 94, 83, 90, 79, 102, 115, 100, 117, 115, 120, 98, 73, 114, 121, 97, 120, 122, 121, 119, 114, 115, 114, 61, 61, 75, 76, 89, 74, 76, 103, 76, 81, 85, 93, 103, 85, 75, 122, 125, 104, 123, 125, 86, 125, 96, 100, 108, 86, 100, 122, 41, 72, 90, 74, 23, 16, 5, 16, 1, 55, 48, 37, 48, 33, 100, 121, 100, 118, 16, 23, 12, 19, 60, 17, 6, 2, 16, 12, 13, 7, 0, 6, 17, 21, 25, 43, 31, 17, 13, 7, 76, 81, 76, 84, 93, 127, 122, 110, 107, 126, 111, 85, 126, 99, 103, 111, 85, 103, 121, 39, 32, 59, 126, 97, 108, 109, 103, 39, 112, 37, 125, 102, 99, 102, 103, 127, 102};
    }

    static {
        A0B();
        A07 = A07(3, 4);
        A08 = new String[]{A04(607, 2, 56), A04(LevelPlayAdError.ERROR_CODE_LOAD_BEFORE_INIT_SUCCESS_CALLBACK, 9, 5), A04(739, 3, Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE), A04(709, 11, 91), A04(566, 16, 23), A04(586, 4, 97), A04(684, 5, 75), A04(654, 13, 23), A04(725, 14, 37), A04(552, 14, 100), A04(698, 11, 76), A04(590, 14, 33), A04(634, 18, 57), A04(536, 16, 2), A04(615, 10, 74)};
    }

    public C8u(ND nd) {
        this(nd, A04(0, 0, 77));
    }

    public C8u(ND nd, String str) {
        this.A03 = str;
        this.A01 = nd;
        this.A04 = A04(448, 18, 50) + str;
        this.A02 = new Object();
    }

    private Cursor A00(String str, String[] strArr) throws NC {
        try {
            String sortOrder = A04(667, 17, 38);
            return this.A01.getReadableDatabase().query(this.A04, A08, str, strArr, null, null, sortOrder);
        } catch (SQLiteException e) {
            throw new NC(e);
        }
    }

    public static String A05(String str) {
        if (A04(582, 4, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE).equals(str)) {
            return A04(AdSize.FULL_BANNER_WIDTH, 20, 28);
        }
        if (!A04(604, 3, 8).equals(str)) {
            if (A04(652, 2, 97).equals(str)) {
                return A04(488, 27, 113);
            }
            return A04(742, 15, 39);
        }
        String[] strArr = A06;
        if (strArr[5].length() != strArr[0].length()) {
            throw new RuntimeException();
        }
        A06[7] = "v60qIoWK8XvfRN3JZkQVUHSmpxqICZ8b";
        return A04(EventTypeExtended.EVENT_TYPE_EXTENDED_BROKEN_CREATIVE_DETECTOR_VALUE, 21, 99);
    }

    public static String A06(List<StreamKey> streamKeys) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < streamKeys.size(); i++) {
            StreamKey streamKey = streamKeys.get(i);
            int i2 = A06[7].charAt(10);
            if (i2 == 83) {
                throw new RuntimeException();
            }
            String[] strArr = A06;
            strArr[6] = "SrnFsjqCvytd";
            strArr[4] = "gMt52N7G4ek";
            StringBuilder stringBuilder = sb.append(streamKey.A01);
            stringBuilder.append('.').append(streamKey.A00).append('.').append(streamKey.A02).append(',');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    public static String A07(int... iArr) {
        if (iArr.length == 0) {
            return A04(413, 1, 57);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(A04(684, 5, 75)).append(A04(6, 5, 23));
        for (int i = 0; i < iArr.length; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append(iArr[i]);
        }
        sb.append(')');
        return sb.toString();
    }

    private List<TW> A08(SQLiteDatabase sQLiteDatabase) {
        ArrayList arrayList = new ArrayList();
        if (!N1.A19(sQLiteDatabase, this.A04)) {
            return arrayList;
        }
        Cursor cursorQuery = sQLiteDatabase.query(this.A04, new String[]{A04(607, 2, 56), A04(720, 5, 23), A04(739, 3, Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE), A04(709, 11, 91), A04(566, 16, 23), A04(586, 4, 97), A04(684, 5, 75), A04(654, 13, 23), A04(725, 14, 37), A04(552, 14, 100), A04(698, 11, 76), A04(590, 14, 33), A04(634, 18, 57), A04(536, 16, 2)}, null, null, null, null, null);
        while (cursorQuery.moveToNext()) {
            try {
                arrayList.add(A02(cursorQuery));
            } catch (Throwable th) {
                if (cursorQuery != null) {
                    try {
                        cursorQuery.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return arrayList;
    }

    public static List<StreamKey> A09(String str) {
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return arrayList;
        }
        for (String str2 : N1.A1O(str, A04(412, 1, 43))) {
            String[] strArrA1O = N1.A1O(str2, A04(466, 2, 46));
            AbstractC1747Ln.A08(strArrA1O.length == 3);
            arrayList.add(new StreamKey(Integer.parseInt(strArrA1O[0]), Integer.parseInt(strArrA1O[1]), Integer.parseInt(strArrA1O[2])));
        }
        return arrayList;
    }

    private void A0A() throws NC {
        synchronized (this.A02) {
            if (this.A00) {
                return;
            }
            try {
                SQLiteDatabase readableDatabase = this.A01.getReadableDatabase();
                int iA00 = NF.A00(readableDatabase, 0, this.A03);
                if (iA00 != 3) {
                    SQLiteDatabase writableDatabase = this.A01.getWritableDatabase();
                    writableDatabase.beginTransactionNonExclusive();
                    try {
                        NF.A04(writableDatabase, 0, this.A03, 3);
                        List<TW> listA08 = iA00 == 2 ? A08(writableDatabase) : new ArrayList<>();
                        writableDatabase.execSQL(A04(427, 21, 46) + this.A04);
                        writableDatabase.execSQL(A04(414, 13, 109) + this.A04 + A04(0, 1, 91) + A04(11, InterfaceC3681k1.a.b.b, 104));
                        Iterator<TW> it = listA08.iterator();
                        while (it.hasNext()) {
                            A0C(it.next(), writableDatabase);
                        }
                        writableDatabase.setTransactionSuccessful();
                    } finally {
                        writableDatabase.endTransaction();
                    }
                }
                this.A00 = true;
            } catch (SQLException e) {
                throw new NC(e);
            }
        }
    }

    private void A0C(TW tw, SQLiteDatabase sQLiteDatabase) {
        byte[] bArr = tw.A07.A06 == null ? N1.A07 : tw.A07.A06;
        ContentValues contentValues = new ContentValues();
        contentValues.put(A04(607, 2, 56), tw.A07.A02);
        contentValues.put(A04(LevelPlayAdError.ERROR_CODE_LOAD_BEFORE_INIT_SUCCESS_CALLBACK, 9, 5), tw.A07.A03);
        contentValues.put(A04(739, 3, Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE), tw.A07.A00.toString());
        contentValues.put(A04(709, 11, 91), A06(tw.A07.A04));
        contentValues.put(A04(566, 16, 23), tw.A07.A01);
        contentValues.put(A04(586, 4, 97), tw.A07.A05);
        contentValues.put(A04(684, 5, 75), Integer.valueOf(tw.A02));
        contentValues.put(A04(654, 13, 23), Long.valueOf(tw.A05));
        contentValues.put(A04(725, 14, 37), Long.valueOf(tw.A06));
        contentValues.put(A04(552, 14, 100), Long.valueOf(tw.A04));
        contentValues.put(A04(698, 11, 76), Integer.valueOf(tw.A03));
        contentValues.put(A04(590, 14, 33), Integer.valueOf(tw.A01));
        contentValues.put(A04(634, 18, 57), Float.valueOf(tw.A00()));
        contentValues.put(A04(536, 16, 2), Long.valueOf(tw.A01()));
        contentValues.put(A04(615, 10, 74), bArr);
        sQLiteDatabase.replaceOrThrow(this.A04, null, contentValues);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1938Tj
    public final TW A8R(String str) throws NC {
        A0A();
        try {
            Cursor cursorA00 = A00(A04(609, 6, Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE), new String[]{str});
            try {
                if (cursorA00.getCount() == 0) {
                    if (cursorA00 != null) {
                        cursorA00.close();
                        return null;
                    }
                    return null;
                }
                cursorA00.moveToNext();
                TW twA01 = A01(cursorA00);
                if (cursorA00 != null) {
                    cursorA00.close();
                }
                return twA01;
            } catch (Throwable th) {
                if (A06[3].charAt(24) == '1') {
                    throw new RuntimeException();
                }
                String[] strArr = A06;
                strArr[5] = "UPQklNKD7SKgNVCNMhSv8tlOBqHadW";
                strArr[0] = "ZECyDDdnTRHLJb362zUnypTHZIXUkt";
                if (cursorA00 != null) {
                    try {
                        cursorA00.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (SQLiteException e) {
            throw new NC(e);
        }
        throw new NC(e);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1938Tj
    public final S3 A8S(int... iArr) throws NC {
        A0A();
        return new S3(A00(A07(iArr), null));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1899Rw
    public final void AIS(TW tw) throws NC {
        A0A();
        try {
            SQLiteDatabase writableDatabase = this.A01.getWritableDatabase();
            A0C(tw, writableDatabase);
        } catch (SQLiteException e) {
            throw new NC(e);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1899Rw
    public final void AJi(String str) throws NC {
        A0A();
        try {
            this.A01.getWritableDatabase().delete(this.A04, A04(609, 6, Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE), new String[]{str});
        } catch (SQLiteException e) {
            throw new NC(e);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1899Rw
    public final void AKg() throws NC {
        A0A();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(A04(684, 5, 75), (Integer) 0);
            this.A01.getWritableDatabase().update(this.A04, contentValues, A04(689, 9, 107), null);
        } catch (SQLException e) {
            throw new NC(e);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1899Rw
    public final void AL7() throws NC {
        A0A();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(A04(684, 5, 75), (Integer) 5);
            contentValues.put(A04(590, 14, 33), (Integer) 0);
            this.A01.getWritableDatabase().update(this.A04, contentValues, null, null);
        } catch (SQLException e) {
            throw new NC(e);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1899Rw
    public final void AL8(int i) throws NC {
        A0A();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(A04(698, 11, 76), Integer.valueOf(i));
            this.A01.getWritableDatabase().update(this.A04, contentValues, A07, null);
        } catch (SQLException e) {
            throw new NC(e);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1899Rw
    public final void AL9(String str, int i) throws NC {
        A0A();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(A04(698, 11, 76), Integer.valueOf(i));
            this.A01.getWritableDatabase().update(this.A04, contentValues, A07 + A04(1, 5, Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE) + A04(609, 6, Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE), new String[]{str});
        } catch (SQLException e) {
            throw new NC(e);
        }
    }
}
