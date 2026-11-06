package io.bidmachine;

import android.content.Context;
import android.os.Build;

/* JADX INFO: loaded from: classes4.dex */
public final class q {
    public static final String a = Build.MANUFACTURER + Build.MODEL;

    public String a(Context context, String str) {
        return n.a(context, str + a);
    }

    public void a(Context context, String str, String str2) {
        n.a(context, str + a, str2);
    }
}
