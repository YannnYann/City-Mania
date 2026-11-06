package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3269tA implements View.OnClickListener {
    public static byte[] A01;
    public static String[] A02 = {"k8MtpBt3Qfu9t4OFuOzPTA9", "EaWgwdwBdhlXfh75tf5xlZizItKY", "I3a1V9Q81nlEgCzUcKWQuRqODQ3DjWxH", "oEHnpcoPHOQ1w0r9N2bX746yyo9AzRt3", "zzYKfSLKQXqk5r1VBilP0eW3P6Zh", "kPf", "y93zqkftmbiIIhqeBUj1eeRDrTChoR0B", "82057t9sswwT0Wwk3ahaSLaHG8ap"};
    public final /* synthetic */ F8 A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A02[2].charAt(19) != 'Q') {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[6] = "R4jhTLFzeCLA05fehusZUE0v0ZqM0RbB";
            strArr[3] = "iLH4dxaHi48TTWSeZbAis2052LkD1Rwp";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 32);
            i4++;
        }
    }

    public static void A01() {
        byte[] bArr = {80, 83, 94, 68, 69, 11, 83, 93, 80, 95, 90, 119, 120, 73, 119, 117, 98, 127, 96, 127, 98, 111, 119, 120, 114, 100, 121, 127, 114, 56, 127, 120, 98, 115, 120, 98, 56, 119, 117, 98, 127, 121, 120, 56, 64, 95, 83, 65};
        if (A02[5].length() != 3) {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[1] = "4zVifcW4nf1GYQGXTX8TrM1073wM";
        strArr[0] = "GSdjqXXoR7tmBXEcQx0Yi2E";
        A01 = bArr;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
        if (!TextUtils.isEmpty(this.A00.A06) && !A00(0, 11, 17).equals(this.A00.A06)) {
            Intent intent = new Intent(A00(22, 26, 54), AbstractC3036pP.A00(this.A00.A06));
            intent.addFlags(268435456);
            this.A00.A08.A0F().AAc();
            try {
                C3022p8.A0F(this.A00.A08, intent);
                if (this.A00.A05 != null) {
                    this.A00.A05.AG4();
                    return;
                }
                return;
            } catch (C3020p6 e) {
                Throwable cause = e.getCause();
                C3020p6 cause2 = e;
                if (cause != null) {
                    cause2 = e.getCause();
                }
                this.A00.A08.A08().ABz(A00(11, 11, 54), AbstractC2811lf.A00, new C2812lg(cause2));
                return;
            }
            AbstractC2996oi.A00(th, this);
        }
    }

    static {
        A01();
    }

    public ViewOnClickListenerC3269tA(F8 f8) {
        this.A00 = f8;
    }
}
