package com.ironsource;

import android.adservices.measurement.MeasurementManager;
import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.ext.SdkExtensions;
import androidx.privacysandbox.ads.adservices.measurement.MeasurementManagerApi33Ext5Impl$$ExternalSyntheticApiModelOutline0;
import androidx.privacysandbox.ads.adservices.measurement.MeasurementManagerApi33Ext5Impl$$ExternalSyntheticApiModelOutline1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.l0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3698l0 {
    public static final C3698l0 a = new C3698l0();

    private C3698l0() {
    }

    @SuppressLint({"WrongConstant", "NewApi"})
    public static final int a() {
        if (Build.VERSION.SDK_INT < 30) {
            return 0;
        }
        try {
            return SdkExtensions.getExtensionVersion(1000000);
        } catch (Exception e) {
            C3813r4.d().a(e);
            return 0;
        }
    }

    public static /* synthetic */ void b() {
    }

    @SuppressLint({"NewApi"})
    public static final MeasurementManager a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (Build.VERSION.SDK_INT >= 30 && a() >= 4) {
            try {
                return MeasurementManagerApi33Ext5Impl$$ExternalSyntheticApiModelOutline1.m(context.getSystemService(MeasurementManagerApi33Ext5Impl$$ExternalSyntheticApiModelOutline0.m()));
            } catch (Exception unused) {
            }
        }
        return null;
    }
}
