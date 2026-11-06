package com.facebook.ads.redexgen.X;

import android.os.AsyncTask;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class AX extends AsyncTask<AbstractC2165b5, Void, InterfaceC2218bw> implements InterfaceC2185bP {
    public static byte[] A04;
    public InterfaceC2212bq A00;
    public AT A01;
    public Exception A02;
    public Executor A03;

    static {
        A02();
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private final InterfaceC2218bw A00(AbstractC2165b5... abstractC2165b5Arr) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return null;
        }
        try {
            if (abstractC2165b5Arr != null) {
                try {
                    if (abstractC2165b5Arr.length > 0) {
                        InterfaceC2218bw interfaceC2218bwA0J = this.A01.A0J(abstractC2165b5Arr[0]);
                        if (this.A01.A0K().A04() && interfaceC2218bwA0J != null) {
                            String.format(Locale.US, A01(108, 21, 6), Integer.valueOf(interfaceC2218bwA0J.A9p()), interfaceC2218bwA0J.getUrl(), interfaceC2218bwA0J.A7d());
                        }
                        if (interfaceC2218bwA0J != null) {
                            return interfaceC2218bwA0J;
                        }
                        throw new IllegalStateException(A01(87, 21, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE));
                    }
                } catch (Exception e) {
                    this.A02 = e;
                    if (this.A01.A0K().A04()) {
                        String.format(Locale.US, A01(64, 23, 98), e.getMessage());
                    }
                    cancel(true);
                    return null;
                }
            }
            throw new IllegalArgumentException(A01(0, 64, 69));
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
            return null;
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 101);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A04 = new byte[]{-18, 25, -14, 30, 30, 26, -4, 15, 27, 31, 15, 29, 30, -2, 11, 29, 21, -54, 30, 11, 21, 15, 29, -54, 15, 34, 11, 13, 30, 22, 35, -54, 25, 24, 15, -54, 11, 28, 17, 31, 23, 15, 24, 30, -54, 25, 16, -54, 30, 35, 26, 15, -54, -14, 30, 30, 26, -4, 15, 27, 31, 15, 29, 30, 15, 27, 27, 23, -25, 57, 44, 56, 60, 44, 58, 59, -25, 45, 40, 48, 51, 44, 43, 1, -25, -20, 58, 36, 80, 80, 76, -4, 78, 65, 79, 76, 75, 74, 79, 65, -4, 69, 79, -4, 74, 81, 72, 72, -67, -48, -34, -37, -38, -39, -34, -48, -91, -117, -112, -49, -117, -109, -112, -34, -108, -91, 117, -112, -34};
    }

    public AX(AT at, InterfaceC2212bq interfaceC2212bq, Executor executor) {
        this.A01 = at;
        this.A00 = interfaceC2212bq;
        this.A03 = executor;
    }

    private final void A03(InterfaceC2218bw result) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.AES(result);
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }

    public final void A04(AbstractC2165b5 abstractC2165b5) {
        super.executeOnExecutor(this.A03, abstractC2165b5);
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ InterfaceC2218bw doInBackground(AbstractC2165b5[] abstractC2165b5Arr) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return null;
        }
        try {
            return A00(abstractC2165b5Arr);
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public final void onCancelled() {
        this.A00.AEs(this.A02);
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(InterfaceC2218bw interfaceC2218bw) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            A03(interfaceC2218bw);
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
