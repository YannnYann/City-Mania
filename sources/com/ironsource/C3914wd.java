package com.ironsource;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import com.ironsource.environment.ContextProvider;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.wd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3914wd {
    public static final C3914wd a = new C3914wd();

    private C3914wd() {
    }

    private final String a() {
        String processName = Application.getProcessName();
        return processName == null ? "" : processName;
    }

    public final B1 b() {
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        String packageName = applicationContext != null ? applicationContext.getPackageName() : null;
        if (packageName == null) {
            packageName = "";
        }
        String strA = Build.VERSION.SDK_INT >= 28 ? a() : packageName;
        return new B1(strA, packageName.length() > 0 && Intrinsics.areEqual(strA, packageName));
    }
}
