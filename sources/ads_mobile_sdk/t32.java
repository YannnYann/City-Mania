package ads_mobile_sdk;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class t32 {
    public static final ImageView.ScaleType i = ImageView.ScaleType.CENTER_INSIDE;
    public final CoroutineScope a;
    public final CoroutineScope b;
    public final s02 c;
    public final ex0 d;
    public final hl1 e;
    public final t22 f;
    public final BaseRequest g;
    public final JsonObject h;

    public t32(CoroutineScope uiScope, CoroutineScope backgroundScope, s02 nativeAdAssets, ex0 flags, hl1 internalMediaContent, t22 nativeAdSettingsDataStore, BaseRequest baseRequest, JsonObject nativeAdJson) {
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(nativeAdAssets, "nativeAdAssets");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(internalMediaContent, "internalMediaContent");
        Intrinsics.checkNotNullParameter(nativeAdSettingsDataStore, "nativeAdSettingsDataStore");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(nativeAdJson, "nativeAdJson");
        this.a = uiScope;
        this.b = backgroundScope;
        this.c = nativeAdAssets;
        this.d = flags;
        this.e = internalMediaContent;
        this.f = nativeAdSettingsDataStore;
        this.g = baseRequest;
        this.h = nativeAdJson;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void a(ads_mobile_sdk.t32 r17, ads_mobile_sdk.o32 r18) {
        /*
            Method dump skipped, instruction units count: 296
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.t32.a(ads_mobile_sdk.t32, ads_mobile_sdk.o32):void");
    }

    public final void a(o32 nativeAdViewContainer) {
        Intrinsics.checkNotNullParameter(nativeAdViewContainer, "nativeAdViewContainer");
        final p32 p32Var = (p32) nativeAdViewContainer;
        View viewB = p32Var.b("3010");
        Drawable drawable = null;
        ViewGroup viewGroup = viewB instanceof ViewGroup ? (ViewGroup) viewB : null;
        BuildersKt__Builders_commonKt.launch$default(this.b, null, null, new r32(this, viewGroup, null), 3, null);
        if (viewGroup == null) {
            return;
        }
        if (a(viewGroup)) {
            r31 r31Var = this.c.j;
            if (r31Var == null) {
                return;
            }
            r31Var.u = new tu1() { // from class: ads_mobile_sdk.t32$$ExternalSyntheticLambda0
                @Override // ads_mobile_sdk.tu1
                public final void a(MotionEvent motionEvent) {
                    t32.a(p32Var, motionEvent);
                }
            };
            return;
        }
        viewGroup.removeAllViews();
        FrameLayout frameLayoutC = p32Var.c();
        if (frameLayoutC == null) {
            return;
        }
        Context context = frameLayoutC.getContext();
        Intrinsics.checkNotNull(context);
        hl1 hl1Var = this.e;
        Drawable drawable2 = hl1Var.c;
        if (drawable2 == null) {
            km1 km1Var = hl1Var.a.f;
            if (km1Var != null) {
                drawable = km1Var.a;
            }
        } else {
            drawable = drawable2;
        }
        if (drawable == null) {
            return;
        }
        ImageView imageView = new ImageView(context);
        imageView.setImageDrawable(drawable);
        ImageView.ScaleType scaleTypeE = p32Var.e();
        if (scaleTypeE == null) {
            scaleTypeE = i;
        }
        imageView.setScaleType(scaleTypeE);
        imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        viewGroup.addView(imageView);
    }

    public static final void a(o32 nativeAdViewContainer, MotionEvent event) {
        Intrinsics.checkNotNullParameter(nativeAdViewContainer, "$nativeAdViewContainer");
        Intrinsics.checkNotNullParameter(event, "event");
        ((p32) nativeAdViewContainer).onTouch(null, event);
    }

    public final boolean a(ViewGroup mediaViewContainer) {
        r31 r31Var;
        v14 v14VarE;
        Intrinsics.checkNotNullParameter(mediaViewContainer, "mediaViewContainer");
        View view = this.c.k;
        if (view == null) {
            return false;
        }
        mediaViewContainer.removeAllViews();
        ViewParent parent = view.getParent();
        u14 u14Var = null;
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        mediaViewContainer.addView(view, new FrameLayout.LayoutParams(-1, -1, 17));
        ex0 ex0Var = this.d;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:native:disable_video_rect_for_fixed_size:enabled", C3522b4.i.W);
        if (!((Boolean) ex0Var.a("gads:native:disable_video_rect_for_fixed_size:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
            return true;
        }
        ViewGroup.LayoutParams layoutParams = mediaViewContainer.getLayoutParams();
        if (layoutParams != null && layoutParams.width == -2) {
            return true;
        }
        ViewGroup.LayoutParams layoutParams2 = mediaViewContainer.getLayoutParams();
        if (layoutParams2 != null && layoutParams2.height == -2) {
            return true;
        }
        r31 r31Var2 = this.c.j;
        if (r31Var2 != null && (v14VarE = r31Var2.e()) != null) {
            u14Var = v14VarE.a;
        }
        if (u14Var != u14.e || (r31Var = this.c.j) == null) {
            return true;
        }
        r31Var.a(new v14(u14.a, 0, 0, 14));
        return true;
    }
}
