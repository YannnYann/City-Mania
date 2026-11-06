package com.ironsource;

import android.app.Activity;
import android.content.Context;
import com.ironsource.C3855t8;
import com.ironsource.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
public class G2 {
    public static G2 a;

    public static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[C3855t8.a.values().length];
            a = iArr;
            try {
                iArr[C3855t8.a.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[C3855t8.a.Device.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[C3855t8.a.Controller.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static G2 a() {
        G2 g2 = a;
        return g2 == null ? new G2() : g2;
    }

    public boolean a(Activity activity) {
        if (a.a[C3690ka.e().b().ordinal()] != 3) {
            return false;
        }
        try {
            com.ironsource.sdk.controller.v vVar = (com.ironsource.sdk.controller.v) W9.b((Context) activity).a().k();
            if (vVar == null) {
                return true;
            }
            vVar.l("back");
            return true;
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return false;
        }
    }
}
