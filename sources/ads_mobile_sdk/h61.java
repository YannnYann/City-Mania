package ads_mobile_sdk;

import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class h61 implements r41, ai1 {
    public final CoroutineScope a;
    public final f82 b;
    public final cw2 c;

    public h61(CoroutineScope uiScope, f82 nativePolicyValidatorState, dw2 nativeAdCore) {
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(nativePolicyValidatorState, "nativePolicyValidatorState");
        Intrinsics.checkNotNullParameter(nativeAdCore, "nativeAdCore");
        this.a = uiScope;
        this.b = nativePolicyValidatorState;
        this.c = nativeAdCore;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_HIDE_VALIDATOR_OVERLAY;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object a(Continuation continuation) {
        Object objA;
        r31 r31Var = (r31) this.b.d.get();
        return (r31Var != null && (objA = a(r31Var, MapsKt__MapsKt.emptyMap(), continuation)) == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? objA : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        BuildersKt__Builders_commonKt.launch$default(this.a, null, null, new g61(r31Var, this, null), 3, null);
        ViewTreeObserver viewTreeObserver = (ViewTreeObserver) this.b.b.get();
        ViewTreeObserver.OnScrollChangedListener onScrollChangedListener = (ViewTreeObserver.OnScrollChangedListener) this.b.c.get();
        if (onScrollChangedListener != null && viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnScrollChangedListener(onScrollChangedListener);
        } else {
            xs3.a("Failed to detach scroll changed listener.", null, 6);
        }
        f82 f82Var = this.b;
        WeakReference weakReference = new WeakReference(null);
        f82Var.getClass();
        Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
        f82Var.a = weakReference;
        f82 f82Var2 = this.b;
        WeakReference weakReference2 = new WeakReference(null);
        f82Var2.getClass();
        Intrinsics.checkNotNullParameter(weakReference2, "<set-?>");
        f82Var2.b = weakReference2;
        f82 f82Var3 = this.b;
        WeakReference weakReference3 = new WeakReference(null);
        f82Var3.getClass();
        Intrinsics.checkNotNullParameter(weakReference3, "<set-?>");
        f82Var3.c = weakReference3;
        Object objA = r31Var.a(continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }
}
