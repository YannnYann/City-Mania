package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Et, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class AsyncTaskC1577Et extends AsyncTask<String, Void, Bitmap[]> implements InterfaceC2776l6 {
    public static byte[] A0A;
    public static String[] A0B = {"Y", "r8ye64eLoQHeOJVpmB1uxWw1zCCHhuzX", "pvZIfONmKv3cVbimQPa9", "RLgA2SApOIsDDawooMs2KL5D8ZiCWoW1", "kM6akDIqkvY", "0vJdyNO9qrz2JF8Kt31GcmRDql8haFQB", "b8N1ZLVb0I2QrMIKflin5UtA7D7V4D", "X"};
    public int A00;
    public int A01;
    public InterfaceC3302th A02;
    public boolean A03;
    public final int A04;
    public final int A05;
    public final WeakReference<C3299te> A06;
    public final WeakReference<C1643Hi> A07;
    public final WeakReference<ImageView> A08;
    public final WeakReference<ViewGroup> A09;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 48);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A0A = new byte[]{-89, -91, -82, -91, -78, -87, -93};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private final Bitmap[] A03(String... strArr) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return null;
        }
        try {
            String str = strArr[0];
            Bitmap bitmapA0O = null;
            Bitmap bitmapA01 = null;
            C1643Hi c1643Hi = this.A07.get();
            if (c1643Hi == null) {
                return new Bitmap[]{null, null};
            }
            try {
                bitmapA0O = new C2771kz(c1643Hi).A0O(str, this.A00, this.A01);
                if (bitmapA0O != null && !this.A03) {
                    bitmapA01 = AbstractC3121qm.A01(c1643Hi, bitmapA0O, this.A04, this.A05);
                }
            } catch (Throwable th) {
                c1643Hi.A08().ABz(A00(0, 7, 16), AbstractC2811lf.A1V, new C2812lg(th));
            }
            return new Bitmap[]{bitmapA0O, bitmapA01};
        } catch (Throwable th2) {
            AbstractC2996oi.A00(th2, this);
            return null;
        }
    }

    static {
        A01();
    }

    public AsyncTaskC1577Et(ViewGroup viewGroup, int i, int i2, C1643Hi c1643Hi) {
        this.A03 = false;
        this.A00 = -1;
        this.A01 = -1;
        this.A07 = new WeakReference<>(c1643Hi);
        this.A06 = null;
        this.A08 = null;
        this.A09 = new WeakReference<>(viewGroup);
        this.A04 = i;
        this.A05 = i2;
    }

    public AsyncTaskC1577Et(ViewGroup viewGroup, C1643Hi c1643Hi) {
        this(viewGroup, 12, 16, c1643Hi);
    }

    public AsyncTaskC1577Et(ImageView imageView, C1643Hi c1643Hi) {
        this.A03 = false;
        this.A00 = -1;
        this.A01 = -1;
        this.A07 = new WeakReference<>(c1643Hi);
        this.A06 = null;
        this.A08 = new WeakReference<>(imageView);
        this.A09 = null;
        this.A04 = 0;
        this.A05 = 1;
    }

    public AsyncTaskC1577Et(C3299te c3299te, C1643Hi c1643Hi) {
        this.A03 = false;
        this.A00 = -1;
        this.A01 = -1;
        this.A07 = new WeakReference<>(c1643Hi);
        this.A06 = new WeakReference<>(c3299te);
        this.A08 = null;
        this.A09 = null;
        this.A04 = 12;
        this.A05 = 16;
    }

    private final void A02(Bitmap[] result) throws Throwable {
        C1643Hi context;
        C3299te c3299te;
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            if (this.A08 != null) {
                ImageView imageView = this.A08.get();
                if (result[1] != null && !this.A03 && this.A04 != 0 && imageView != null) {
                    imageView.setImageBitmap(result[1]);
                    return;
                } else if (imageView != null) {
                    imageView.setImageBitmap(result[0]);
                }
            }
            if (this.A06 != null && (c3299te = this.A06.get()) != null) {
                c3299te.setImage(result[0], result[1]);
            }
            if (this.A09 != null && this.A09.get() != null && result[1] != null && (context = this.A07.get()) != null) {
                AbstractC3111qc.A0W(this.A09.get(), new BitmapDrawable(context.getResources(), result[1]));
            }
            if (this.A02 != null) {
                this.A02.AFA(new C3301tg(result[0]));
            }
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }

    public final AsyncTaskC1577Et A04() {
        this.A00 = -1;
        this.A01 = -1;
        return this;
    }

    public final AsyncTaskC1577Et A05(int i, int i2) {
        this.A00 = i;
        this.A01 = i2;
        return this;
    }

    public final AsyncTaskC1577Et A06(InterfaceC3302th interfaceC3302th) {
        this.A02 = interfaceC3302th;
        return this;
    }

    public final void A07(String str) {
        if (TextUtils.isEmpty(str)) {
            if (this.A02 != null) {
                this.A02.AFA(new C3301tg(null));
                return;
            }
            return;
        }
        executeOnExecutor(ExecutorC3116qh.A06, str);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2776l6
    public final C1643Hi A7M() {
        return this.A07.get();
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Bitmap[] doInBackground(String[] strArr) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return null;
        }
        try {
            return A03(strArr);
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(Bitmap[] bitmapArr) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            A02(bitmapArr);
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
            String[] strArr = A0B;
            if (strArr[0].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0B;
            strArr2[0] = "X";
            strArr2[7] = "y";
        }
    }
}
