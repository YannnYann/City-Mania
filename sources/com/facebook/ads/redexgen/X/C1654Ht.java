package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.api.BuildConfigApi;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ht, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1654Ht implements InterfaceC2740kT {
    public static byte[] A03;
    public static String[] A04 = {"Yyt8Jrp", "FvQHlihhdkZe9tXm7YLHdG4gIBqm", "h7ITXytSbKbsxwMfZDKdUPEvMsTrizAq", "0TuNzKSIMRKA8K3EzRQL94hbriXTa7QT", "ySuQOOQJHVodSpCznPaDLfXVVxuxvbGA", "XYB8XYCfCTfWBGtKG07Wi1HuHmIQx2qC", "71D0xe3tljOi7f3b0iOVOXaXnoSWhNo4", "dwdYeokke3ChTNA3vTF4hdqHGwVronGN"};
    public final InterfaceC2106a7 A01;
    public Set<InterfaceC2743kW> A00 = new HashSet();
    public final List<InterfaceC2742kV> A02 = new ArrayList();

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 107);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A03 = new byte[]{-72, -72, -67, 11, -46, -72, -67, 11, 41, 59, 59, 45, 60, 59};
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public synchronized void A03() {
        if (!this.A01.ABM()) {
            BuildConfigApi.isDebug();
            return;
        }
        Set<InterfaceC2743kW> setA01 = A01(this.A01.A8J());
        if (!this.A00.equals(setA01) && setA01 != null) {
            this.A00 = setA01;
            Iterator<InterfaceC2742kV> it = this.A02.iterator();
            while (it.hasNext()) {
                it.next().A4k();
            }
        }
        if (BuildConfigApi.isDebug()) {
            for (InterfaceC2743kW interfaceC2743kW : this.A00) {
                String.format(Locale.US, A00(0, 8, 45), interfaceC2743kW.AA1(), interfaceC2743kW.getUrl());
            }
        }
    }

    static {
        A02();
    }

    public C1654Ht(AH ah) {
        this.A01 = ah.A63(EnumC2092Zt.A0B);
        this.A01.A4R(new C1655Hu(this));
        A03();
    }

    public static Set<InterfaceC2743kW> A01(JSONObject jSONObject) {
        C1653Hs c1653HsA00;
        HashSet hashSet = new HashSet();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(A00(8, 6, 93));
        if (jSONArrayOptJSONArray == null) {
            return null;
        }
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject == null || (c1653HsA00 = C1653Hs.A00(jSONObjectOptJSONObject)) == null) {
                return null;
            }
            hashSet.add(c1653HsA00);
            if (A04[1].length() == 21) {
                throw new RuntimeException();
            }
            String[] strArr = A04;
            strArr[6] = "2zeGpFgTpOohtr7xv9EhLTO87hKhrQIZ";
            strArr[3] = "Z45Lb0RXWpRaUi2IX7mXCACeVe5qt7dU";
        }
        return hashSet;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2740kT
    public final void A4Q(InterfaceC2742kV interfaceC2742kV) {
        this.A02.add(interfaceC2742kV);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2740kT
    public final synchronized Set<InterfaceC2743kW> A7X() {
        return new HashSet(this.A00);
    }
}
