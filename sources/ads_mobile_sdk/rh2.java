package ads_mobile_sdk;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.activity.ComponentActivity;
import com.google.android.libraries.ads.mobile.sdk.R$string;
import com.google.android.libraries.ads.mobile.sdk.internal.nativead.InternalNativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.MediaView;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdView;
import com.ironsource.C3522b4;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class rh2 extends nh2 {
    public final /* synthetic */ Context a;
    public final /* synthetic */ sh2 b;
    public final /* synthetic */ InternalNativeAd c;
    public final /* synthetic */ ImageView.ScaleType d;

    public rh2(Context context, sh2 sh2Var, InternalNativeAd internalNativeAd, ImageView.ScaleType scaleType) {
        this.a = context;
        this.b = sh2Var;
        this.c = internalNativeAd;
        this.d = scaleType;
    }

    @Override // ads_mobile_sdk.nh2
    public final void a(ComponentActivity activity, LinearLayout layout) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(layout, "layout");
        NativeAdView nativeAdView = new NativeAdView(activity);
        nativeAdView.setTag("ad_view_tag");
        nativeAdView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        layout.setBackgroundColor(-1);
        layout.addView(nativeAdView);
        LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setTag("layout_tag");
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(-1);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        nativeAdView.addView(linearLayout);
        Resources resources = this.a.getResources();
        if (resources == null) {
            return;
        }
        String string = resources.getString(R$string.native_headline);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        linearLayout.addView(sh2.a(this.b, activity, string, "headline_header_tag"));
        String str = (String) this.c.q().d.get("headline");
        if (str == null) {
            str = "";
        }
        View viewB = sh2.b(this.b, activity, str, "headline_tag");
        nativeAdView.setHeadlineView(viewB);
        linearLayout.addView(viewB);
        String string2 = resources.getString(R$string.native_body);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        linearLayout.addView(sh2.a(this.b, activity, string2, "body_header_tag"));
        String str2 = (String) this.c.q().d.get(C3522b4.i.E0);
        View viewB2 = sh2.b(this.b, activity, str2 != null ? str2 : "", "body_tag");
        nativeAdView.setBodyView(viewB2);
        linearLayout.addView(viewB2);
        String string3 = resources.getString(R$string.native_media_view);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        linearLayout.addView(sh2.a(this.b, activity, string3, "media_view_header_tag"));
        MediaView mediaView = new MediaView(activity);
        mediaView.setTag("media_view_tag");
        mediaView.setImageScaleType(this.d);
        linearLayout.addView(mediaView);
        nativeAdView.registerNativeAd(new l12(this.c), mediaView);
    }

    @Override // ads_mobile_sdk.h0
    public final void onDestroy() {
        this.c.destroy();
    }
}
