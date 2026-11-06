package io.bidmachine.rendering.ad.fullscreen;

import android.content.Context;
import io.bidmachine.rendering.internal.AbstractC4238a;
import io.bidmachine.util.Error;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class FullScreenActivityKt {
    public static FullScreenAd a;

    public static final void startActivity(FullScreenAd fullScreenAd, Context context) {
        Intrinsics.checkNotNullParameter(fullScreenAd, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            a = fullScreenAd;
            context.startActivity(AbstractC4238a.a(context, FullScreenActivity.class));
        } catch (Throwable unused) {
            a = null;
            fullScreenAd.notifyAdFailToShow(new Error("Ad is null"));
        }
    }
}
