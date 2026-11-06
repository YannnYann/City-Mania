package com.facebook.ads.redexgen.X;

import android.os.AsyncTask;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.lI, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class AsyncTaskC2788lI<T> extends AsyncTask<Void, Void, T> {
    public static byte[] A04;
    public static String[] A05 = {"65r9CRdv0GoLRVNVjbjXzJK5P2ycj7FG", "0CWnyuhck9HOQgwCfxzQ09GVkx", "IEC2mc7xTTQi8lqWDODmms9jEFByhoZx", "6exEWFSZK9oTcnxcvUurXohDGqhdlb0H", "22QzghXqrFZ4DBGtDF", "dbvBYMdgslkBJuEWD9uCPJqFmtTt8cU5", "jZC4Ivj", "4jv2LQemXeCXPfpssPDUuPD2TleIiZzb"};
    public EnumC2791lL A00;
    public final C1642Hh A01;
    public final AbstractC2792lM<T> A02;
    public final AbstractC2858mR<T> A03;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = (bArrCopyOfRange[i4] - i3) - 116;
            if (A05[7].charAt(12) != 'P') {
                throw new RuntimeException();
            }
            A05[6] = "VTML";
            bArrCopyOfRange[i4] = (byte) i5;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A04 = new byte[]{31, 28, 47, 28, 29, 28, 46, 32};
    }

    static {
        A02();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.lI != com.facebook.ads.internal.database.AdDatabaseHelper$DatabaseQueryAsyncTask<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.lM != com.facebook.ads.internal.database.AdDatabaseQuery<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.mR != com.facebook.ads.internal.eventstorage.AdEventStorageCallback<T> */
    public AsyncTaskC2788lI(C1642Hh c1642Hh, AbstractC2792lM<T> abstractC2792lM, AbstractC2858mR<T> abstractC2858mR) {
        this.A02 = abstractC2792lM;
        this.A03 = abstractC2858mR;
        this.A01 = c1642Hh;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.lI != com.facebook.ads.internal.database.AdDatabaseHelper$DatabaseQueryAsyncTask<T> */
    private final T A00(Void... voidArr) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return null;
        }
        if (A05[6].length() == 11) {
            throw new RuntimeException();
        }
        A05[2] = "4eGiZ19xQ4OxGjIavdFldPBRBlbWR0DL";
        T tA03 = null;
        try {
            try {
                tA03 = this.A02.A03();
                this.A00 = this.A02.A00();
                return tA03;
            } catch (Exception e) {
                this.A01.A08().ABz(A01(0, 8, 71), AbstractC2811lf.A0w, new C2812lg(e));
                this.A00 = EnumC2791lL.A09;
                return tA03;
            }
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
            return null;
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.lI != com.facebook.ads.internal.database.AdDatabaseHelper$DatabaseQueryAsyncTask<T> */
    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Object doInBackground(Void[] voidArr) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return null;
        }
        try {
            return A00(voidArr);
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
            return null;
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.lI != com.facebook.ads.internal.database.AdDatabaseHelper$DatabaseQueryAsyncTask<T> */
    @Override // android.os.AsyncTask
    public final void onPostExecute(T result) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            if (this.A00 == null) {
                this.A03.A02(result);
            } else {
                this.A03.A01(this.A00.A03(), this.A00.A04());
            }
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
