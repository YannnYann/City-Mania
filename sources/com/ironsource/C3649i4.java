package com.ironsource;

import android.content.Context;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.io.InputStream;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: com.ironsource.i4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3649i4 {
    private static final String b = "iads/";
    private static final String c = "CONTROLLER_FROM_BUNDLE";
    private static final String d = "controllerVersion";
    private static final String e = "controller_html_loaded_from_bundle";
    private static volatile boolean g;
    public static final C3649i4 a = new C3649i4();
    private static final List<String> f = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{C3522b4.f, C3522b4.g, "mobileController.min.css", "index.html", "index.css", "index.js"});

    private C3649i4() {
    }

    public static final List<String> a() {
        return f;
    }

    public static /* synthetic */ void b() {
    }

    public static final void a(Context context, boolean z) {
        IronLog.INTERNAL.verbose("CONTROLLER_FROM_BUNDLE controller html was loaded from bundle, setting in html params");
        g = z;
        if (context != null) {
            IronSourceUtils.b(context, e, z);
        }
    }

    public static final boolean b(Context context) {
        if (context != null) {
            g = IronSourceUtils.a(context, e, false);
        }
        return g;
    }

    public static final byte[] a(Context context, String fileName) {
        byte[] bytes;
        Throwable th;
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        byte[] bArr = null;
        if (context != null) {
            try {
                try {
                    InputStream inputStreamOpen = context.getAssets().open(b + fileName);
                    try {
                        Intrinsics.checkNotNull(inputStreamOpen);
                        bytes = ByteStreamsKt.readBytes(inputStreamOpen);
                        try {
                            Unit unit = Unit.INSTANCE;
                            CloseableKt.closeFinally(inputStreamOpen, null);
                            return bytes;
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                throw th;
                            } catch (Throwable th3) {
                                CloseableKt.closeFinally(inputStreamOpen, th);
                                throw th3;
                            }
                        }
                    } catch (Throwable th4) {
                        bytes = null;
                        th = th4;
                    }
                } catch (Exception e2) {
                    e = e2;
                    bArr = bytes;
                    IronLog.INTERNAL.error("CONTROLLER_FROM_BUNDLE failed to load from bundle controller file: iads/" + fileName);
                    e.printStackTrace();
                    return bArr;
                }
            } catch (Exception e3) {
                e = e3;
                IronLog.INTERNAL.error("CONTROLLER_FROM_BUNDLE failed to load from bundle controller file: iads/" + fileName);
                e.printStackTrace();
                return bArr;
            }
        }
        return bArr;
    }

    public static final String a(Context context) {
        if (context != null) {
            try {
                byte[] bArrA = a(context, d);
                String string = bArrA != null ? StringsKt__StringsKt.trim(new String(bArrA, Charsets.UTF_8)).toString() : null;
                if (string != null) {
                    IronLog.INTERNAL.verbose("CONTROLLER_FROM_BUNDLE loaded controller version from file: " + string);
                    return string;
                }
                IronLog.INTERNAL.error("CONTROLLER_FROM_BUNDLE failed to load controller version from file");
            } catch (Exception e2) {
                IronLog.INTERNAL.error("CONTROLLER_FROM_BUNDLE exception while loading version from file: " + e2.getMessage());
                e2.printStackTrace();
            }
        }
        return null;
    }
}
