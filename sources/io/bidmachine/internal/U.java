package io.bidmachine.internal;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.view.View;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.util.gradient.GradientDrawable;
import java.util.Locale;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class U {
    public static final U a = new U();

    public static final C4228l a(Context context, C4227k disclaimerData, View baseAutoSizeView) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(disclaimerData, "disclaimerData");
        Intrinsics.checkNotNullParameter(baseAutoSizeView, "baseAutoSizeView");
        C4228l c4228l = new C4228l(context.getApplicationContext());
        String strB = disclaimerData.b();
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault()");
        String upperCase = strB.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        c4228l.setText(upperCase);
        c4228l.setPadding(0, 0, 0, 0);
        c4228l.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{0, Color.argb(150, 0, 0, 0)}));
        c4228l.setTextColor(-1);
        c4228l.setLetterSpacing(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        c4228l.setLineSpacing(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
        c4228l.setIncludeFontPadding(false);
        try {
            c4228l.setTypeface(Typeface.create("sans-serif-light", 0));
            Unit unit = Unit.INSTANCE;
        } catch (Throwable unused) {
        }
        c4228l.a(baseAutoSizeView, disclaimerData.a());
        return c4228l;
    }
}
