package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.app.Application;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﾄ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC1013 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static AbstractC1013 f3814;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public boolean f3816 = false;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final HashSet f3815 = new HashSet();

    static {
        StringFog.decrypt("Asd5s/VL+B4jznWo90vROyzYYrT6QsYkINlguPdC\n", "RasW0ZQntHc=\n");
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static synchronized AbstractC1013 m1594() {
        try {
            if (f3814 == null) {
                f3814 = new C0036();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f3814;
    }

    /* JADX INFO: renamed from: ﻛ */
    public abstract boolean mo1050();

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final synchronized ArrayList m1595() {
        return new ArrayList(this.f3815);
    }

    /* JADX INFO: renamed from: ﾒ */
    public abstract Activity mo1052();

    /* JADX INFO: renamed from: ﾒ */
    public abstract void mo1054(Application application, Activity activity);

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m1596(C0639 c0639) {
        this.f3815.add(c0639);
    }
}
