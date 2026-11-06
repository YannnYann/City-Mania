package ads_mobile_sdk;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class dy extends FrameLayout {
    public Function0 a;
    public final ImageButton b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Removed duplicated region for block: B:12:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public dy(android.content.Context r5, java.lang.String r6, ads_mobile_sdk.ey r7) {
        /*
            r4 = this;
            java.lang.String r0 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "closeButtonAsset"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "config"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            r4.<init>(r5)
            android.widget.ImageButton r0 = new android.widget.ImageButton
            r0.<init>(r5)
            r4.b = r0
            android.content.res.Resources r0 = r5.getResources()
            r1 = 0
            java.lang.String r2 = "white"
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r2)     // Catch: android.content.res.Resources.NotFoundException -> L3d
            if (r2 == 0) goto L2e
            int r6 = com.google.android.libraries.ads.mobile.sdk.R$drawable.admob_close_button_white_circle_black_cross     // Catch: android.content.res.Resources.NotFoundException -> L3d
            android.graphics.drawable.Drawable r6 = r0.getDrawable(r6, r1)     // Catch: android.content.res.Resources.NotFoundException -> L3d
        L2c:
            r1 = r6
            goto L3d
        L2e:
            java.lang.String r2 = "black"
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r2)     // Catch: android.content.res.Resources.NotFoundException -> L3d
            if (r6 == 0) goto L3d
            int r6 = com.google.android.libraries.ads.mobile.sdk.R$drawable.admob_close_button_black_circle_white_cross     // Catch: android.content.res.Resources.NotFoundException -> L3d
            android.graphics.drawable.Drawable r6 = r0.getDrawable(r6, r1)     // Catch: android.content.res.Resources.NotFoundException -> L3d
            goto L2c
        L3d:
            if (r1 != 0) goto L48
            android.widget.ImageButton r6 = r4.b
            r0 = 17301527(0x1080017, float:2.497932E-38)
            r6.setImageResource(r0)
            goto L54
        L48:
            android.widget.ImageButton r6 = r4.b
            r6.setImageDrawable(r1)
            android.widget.ImageButton r6 = r4.b
            android.widget.ImageView$ScaleType r0 = android.widget.ImageView.ScaleType.CENTER
            r6.setScaleType(r0)
        L54:
            android.widget.ImageButton r6 = r4.b
            r0 = 0
            r6.setBackgroundColor(r0)
            android.widget.ImageButton r6 = r4.b
            int r1 = r7.a
            int r1 = ads_mobile_sdk.zn0.a(r5, r1)
            int r0 = ads_mobile_sdk.zn0.a(r5, r0)
            int r2 = r7.b
            int r2 = ads_mobile_sdk.zn0.a(r5, r2)
            int r3 = r7.c
            int r3 = ads_mobile_sdk.zn0.a(r5, r3)
            r6.setPadding(r1, r0, r2, r3)
            android.widget.ImageButton r6 = r4.b
            java.lang.String r0 = "Fullscreen ad close button"
            r6.setContentDescription(r0)
            ads_mobile_sdk.dy$$ExternalSyntheticLambda0 r6 = new ads_mobile_sdk.dy$$ExternalSyntheticLambda0
            r6.<init>()
            r4.setOnClickListener(r6)
            android.widget.ImageButton r6 = r4.b
            ads_mobile_sdk.dy$$ExternalSyntheticLambda1 r0 = new ads_mobile_sdk.dy$$ExternalSyntheticLambda1
            r0.<init>()
            r6.setOnClickListener(r0)
            android.widget.ImageButton r6 = r4.b
            android.widget.FrameLayout$LayoutParams r0 = new android.widget.FrameLayout$LayoutParams
            int r1 = r7.a
            int r1 = r1 + 50
            int r2 = r7.b
            int r1 = r1 + r2
            int r1 = ads_mobile_sdk.zn0.a(r5, r1)
            int r7 = r7.c
            int r7 = r7 + 50
            int r5 = ads_mobile_sdk.zn0.a(r5, r7)
            r0.<init>(r1, r5)
            r4.addView(r6, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.dy.<init>(android.content.Context, java.lang.String, ads_mobile_sdk.ey):void");
    }

    public static final void a(dy this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Function0 function0 = this$0.a;
        if (function0 != null) {
            function0.invoke();
        }
    }

    public static final void b(dy this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Function0 function0 = this$0.a;
        if (function0 != null) {
            function0.invoke();
        }
    }
}
