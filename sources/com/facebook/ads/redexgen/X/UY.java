package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class UY extends Exception implements InterfaceC1703Jt {
    public final int A00;
    public final long A01;
    public static final String A03 = N1.A0h(0);
    public static final String A04 = N1.A0h(1);
    public static final String A07 = N1.A0h(2);
    public static final String A05 = N1.A0h(3);
    public static final String A06 = N1.A0h(4);
    public static final InterfaceC1702Js<UY> A02 = new InterfaceC1702Js() { // from class: com.facebook.ads.redexgen.X.UZ
        @Override // com.facebook.ads.redexgen.X.InterfaceC1702Js
        public final InterfaceC1703Jt A7F(Bundle bundle) {
            return new UY(bundle);
        }
    };

    public UY(Bundle bundle) {
        this(bundle.getString(A07), A09(bundle), bundle.getInt(A03, 1000), bundle.getLong(A04, SystemClock.elapsedRealtime()));
    }

    public UY(String str, Throwable th, int i, long j) {
        super(str, th);
        this.A00 = i;
        this.A01 = j;
    }

    public static RemoteException A08(String str) {
        return new RemoteException(str);
    }

    public static Throwable A09(Bundle bundle) {
        String string = bundle.getString(A05);
        String causeClassName = A06;
        String string2 = bundle.getString(causeClassName);
        Throwable thA0A = null;
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            Class<?> cls = Class.forName(string, true, UY.class.getClassLoader());
            if (Throwable.class.isAssignableFrom(cls)) {
                thA0A = A0A(cls, string2);
            }
        } catch (Throwable unused) {
            if (thA0A != null) {
                return thA0A;
            }
        }
        if (thA0A == null) {
            return A08(string2);
        }
        return thA0A;
    }

    public static Throwable A0A(Class<?> clazz, String str) throws Exception {
        return (Throwable) clazz.getConstructor(String.class).newInstance(str);
    }
}
