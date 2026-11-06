package io.bidmachine.rendering.model;

import android.content.Context;
import android.view.View;
import io.bidmachine.util.UtilsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class PaddingKt {
    public static final void setPadding(View view, Padding padding) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        if (padding == null) {
            return;
        }
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        int iDpToPx = UtilsKt.dpToPx(context, padding.getLeftDp());
        Context context2 = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "context");
        int iDpToPx2 = UtilsKt.dpToPx(context2, padding.getTopDp());
        Context context3 = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context3, "context");
        int iDpToPx3 = UtilsKt.dpToPx(context3, padding.getRightDp());
        Context context4 = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context4, "context");
        view.setPadding(iDpToPx, iDpToPx2, iDpToPx3, UtilsKt.dpToPx(context4, padding.getBottomDp()));
    }
}
