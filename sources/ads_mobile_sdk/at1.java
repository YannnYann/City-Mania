package ads_mobile_sdk;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.ironsource.C3522b4;
import com.unity3d.ads.core.domain.CommonGetHeaderBiddingToken;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class at1 implements r41 {
    public final ex0 a;
    public final j12 b;
    public final q52 c;
    public final k32 d;
    public final CoroutineScope e;
    public final f82 f;

    public at1(ex0 flags, j12 nativeAdCore, q52 nativeJavascriptEngine, k32 nativeAdUtil, CoroutineScope uiScope, f82 nativePolicyValidatorState) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(nativeAdCore, "nativeAdCore");
        Intrinsics.checkNotNullParameter(nativeJavascriptEngine, "nativeJavascriptEngine");
        Intrinsics.checkNotNullParameter(nativeAdUtil, "nativeAdUtil");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(nativePolicyValidatorState, "nativePolicyValidatorState");
        this.a = flags;
        this.b = nativeAdCore;
        this.c = nativeJavascriptEngine;
        this.d = nativeAdUtil;
        this.e = uiScope;
        this.f = nativePolicyValidatorState;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x0140, code lost:
    
        if (r12.a(r14, "sendMessageToNativeJs", r0) == r1) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:77:0x015e A[Catch: all -> 0x016a, TryCatch #5 {all -> 0x016a, blocks: (B:75:0x0157, B:77:0x015e, B:79:0x0162, B:81:0x0166, B:84:0x016c, B:86:0x0170, B:88:0x0174, B:90:0x0178, B:91:0x0179, B:92:0x017e, B:93:0x017f, B:94:0x0186, B:95:0x0187, B:96:0x018e, B:97:0x018f), top: B:113:0x0157 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x018f A[Catch: all -> 0x016a, TRY_LEAVE, TryCatch #5 {all -> 0x016a, blocks: (B:75:0x0157, B:77:0x015e, B:79:0x0162, B:81:0x0166, B:84:0x016c, B:86:0x0170, B:88:0x0174, B:90:0x0178, B:91:0x0179, B:92:0x017e, B:93:0x017f, B:94:0x0186, B:95:0x0187, B:96:0x018e, B:97:0x018f), top: B:113:0x0157 }] */
    @Override // ads_mobile_sdk.r41
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.r31 r12, java.util.Map r13, kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instruction units count: 414
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.at1.a(ads_mobile_sdk.r31, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_LOAD_NATIVE_AD_POLICY_VIOLATIONS;
    }

    public final void a(final FrameLayout frameLayout, final r31 r31Var, Map map, final WindowManager windowManager) {
        int i;
        int i2;
        Context context = frameLayout.getContext();
        Intrinsics.checkNotNull(context);
        String str = (String) map.get("validator_width");
        ex0 ex0Var = this.a;
        Integer numA = by0.a(ex0Var, "gads:policy_validator_overlay_width:dp", C3522b4.i.W, 350);
        nr nrVar = yr.f;
        int iIntValue = ((Number) ex0Var.a("gads:policy_validator_overlay_width:dp", numA, nrVar)).intValue();
        if (str != null) {
            try {
                iIntValue = Integer.parseInt(str);
            } catch (NumberFormatException unused) {
            }
        }
        int iA = zn0.a(context, iIntValue);
        String str2 = (String) map.get("validator_height");
        ex0 ex0Var2 = this.a;
        int iIntValue2 = ((Number) ex0Var2.a("gads:policy_validator_overlay_height:dp", by0.a(ex0Var2, "gads:policy_validator_overlay_height:dp", C3522b4.i.W, 140), nrVar)).intValue();
        if (str2 != null) {
            try {
                iIntValue2 = Integer.parseInt(str2);
            } catch (NumberFormatException unused2) {
            }
        }
        int iA2 = zn0.a(context, iIntValue2);
        String str3 = (String) map.get("validator_x");
        int i3 = 0;
        if (str3 == null) {
            i = 0;
        } else {
            try {
                i = Integer.parseInt(str3);
            } catch (NumberFormatException unused3) {
                i = 0;
            }
        }
        int iA3 = zn0.a(context, i);
        String str4 = (String) map.get("validator_y");
        if (str4 != null) {
            try {
                i3 = Integer.parseInt(str4);
            } catch (NumberFormatException unused4) {
            }
        }
        int iA4 = zn0.a(context, i3);
        BuildersKt__Builders_commonKt.launch$default(this.e, null, null, new xs1(r31Var, iA, iA2, this, null), 3, null);
        k32 k32Var = this.d;
        k32Var.getClass();
        final WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 0, 0, -2);
        ex0 ex0Var3 = k32Var.b;
        layoutParams.flags = ((Number) ex0Var3.a("gads:policy_validator_layoutparam:flags", by0.a(ex0Var3, "gads:policy_validator_layoutparam:flags", C3522b4.i.W, 808), yr.f)).intValue();
        layoutParams.type = 2;
        layoutParams.gravity = 8388659;
        layoutParams.x = iA3;
        layoutParams.y = iA4;
        layoutParams.width = iA;
        layoutParams.height = iA2;
        BuildersKt__Builders_commonKt.launch$default(this.e, null, null, new ys1(windowManager, r31Var, layoutParams, null), 3, null);
        final String str5 = (String) map.get(C3522b4.i.n);
        Rect rect = new Rect();
        if (frameLayout.getGlobalVisibleRect(rect)) {
            if (!Intrinsics.areEqual("1", str5) && !Intrinsics.areEqual(CommonGetHeaderBiddingToken.HB_TOKEN_VERSION, str5)) {
                i2 = rect.top;
            } else {
                i2 = rect.bottom;
            }
            final int i4 = i2 - iA4;
            ViewTreeObserver.OnScrollChangedListener onScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: ads_mobile_sdk.at1$$ExternalSyntheticLambda0
                @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                public final void onScrollChanged() {
                    at1.a(frameLayout, r31Var, str5, layoutParams, i4, this, windowManager);
                }
            };
            ViewTreeObserver viewTreeObserver = frameLayout.getViewTreeObserver();
            if (viewTreeObserver == null || !viewTreeObserver.isAlive()) {
                return;
            }
            viewTreeObserver.addOnScrollChangedListener(onScrollChangedListener);
            f82 f82Var = this.f;
            WeakReference weakReference = new WeakReference(onScrollChangedListener);
            f82Var.getClass();
            Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
            f82Var.c = weakReference;
            f82 f82Var2 = this.f;
            WeakReference weakReference2 = new WeakReference(viewTreeObserver);
            f82Var2.getClass();
            Intrinsics.checkNotNullParameter(weakReference2, "<set-?>");
            f82Var2.b = weakReference2;
        }
    }

    public static final void a(View overlayFrame, r31 validatorOverlay, String str, WindowManager.LayoutParams layoutParams, int i, at1 this$0, WindowManager windowManager) {
        Intrinsics.checkNotNullParameter(overlayFrame, "$overlayFrame");
        Intrinsics.checkNotNullParameter(validatorOverlay, "$validatorOverlay");
        Intrinsics.checkNotNullParameter(layoutParams, "$layoutParams");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(windowManager, "$windowManager");
        Rect rect = new Rect();
        if (!overlayFrame.getGlobalVisibleRect(rect) || validatorOverlay.getWindowToken() == null) {
            return;
        }
        if (!Intrinsics.areEqual("1", str) && !Intrinsics.areEqual(CommonGetHeaderBiddingToken.HB_TOKEN_VERSION, str)) {
            layoutParams.y = rect.top - i;
        } else {
            layoutParams.y = rect.bottom - i;
        }
        BuildersKt__Builders_commonKt.launch$default(this$0.e, null, null, new zs1(windowManager, validatorOverlay, layoutParams, null), 3, null);
    }
}
