package ads_mobile_sdk;

import android.app.Activity;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.libraries.ads.mobile.sdk.R$string;
import java.util.Iterator;
import java.util.Map;
import java.util.Optional;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.optionals.OptionalsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class bz1 {
    public final ix1 a;
    public final CoroutineScope b;
    public final CoroutineScope c;
    public final tz1 d;
    public final f0 e;
    public final ks1 f;
    public final h41 g;
    public final r31 h;
    public final Mutex i;
    public PopupWindow j;
    public ImageView k;
    public ViewGroup.LayoutParams l;
    public v14 m;
    public ViewGroup n;

    public bz1(ix1 mraidAfmaDispatcher, CoroutineScope uiScope, CoroutineScope backgroundScope, tz1 mraidViewabilityEventListener, Optional optionalGmaWebViewContainer, f0 activityTracker, ks1 mraidEventEmitter) {
        Intrinsics.checkNotNullParameter(mraidAfmaDispatcher, "mraidAfmaDispatcher");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(mraidViewabilityEventListener, "mraidViewabilityEventListener");
        Intrinsics.checkNotNullParameter(optionalGmaWebViewContainer, "optionalGmaWebViewContainer");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(mraidEventEmitter, "mraidEventEmitter");
        this.a = mraidAfmaDispatcher;
        this.b = uiScope;
        this.c = backgroundScope;
        this.d = mraidViewabilityEventListener;
        this.e = activityTracker;
        this.f = mraidEventEmitter;
        h41 h41Var = (h41) OptionalsKt.getOrNull(optionalGmaWebViewContainer);
        this.g = h41Var;
        this.h = h41Var != null ? h41Var.a() : null;
        this.i = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.bz1 r12, boolean r13, kotlin.coroutines.Continuation r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 234
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.bz1.a(ads_mobile_sdk.bz1, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void a(boolean z) {
        BuildersKt__Builders_commonKt.launch$default(this.b, null, null, new ty1(this, z, null), 3, null);
    }

    public final PopupWindow a(n53 n53Var, Activity activity, r31 r31Var) {
        String string;
        int iA = zn0.a(activity, n53Var.a);
        int iA2 = zn0.a(activity, n53Var.b);
        RelativeLayout relativeLayout = new RelativeLayout(activity);
        relativeLayout.setBackgroundColor(0);
        relativeLayout.setLayoutParams(new ViewGroup.LayoutParams(iA, iA2));
        relativeLayout.addView(this.g, -1, -1);
        r31Var.a(new v14(u14.b, iA, iA2, 8));
        LinearLayout linearLayout = new LinearLayout(activity);
        int iA3 = zn0.a(activity, 50);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iA3, iA3);
        Iterator<E> it = n53Var.f.a.iterator();
        while (it.hasNext()) {
            layoutParams.addRule(((Number) it.next()).intValue());
        }
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: ads_mobile_sdk.bz1$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                bz1.a(this.f$0, view);
            }
        });
        Resources resources = activity.getResources();
        if (resources == null || (string = resources.getString(R$string.close_button)) == null) {
            string = "Close button";
        }
        linearLayout.setContentDescription(string);
        relativeLayout.addView(linearLayout, layoutParams);
        PopupWindow popupWindow = new PopupWindow((View) relativeLayout, iA, iA2, false);
        popupWindow.setOutsideTouchable(false);
        popupWindow.setTouchable(true);
        popupWindow.setClippingEnabled(!n53Var.e);
        return popupWindow;
    }

    public static final void a(bz1 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a(true);
    }

    public final void a(r31 r31Var, String str) {
        BuildersKt__Builders_commonKt.launch$default(this.b, null, null, new wy1(str, this, r31Var, null), 3, null);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:94|(1:(1:(1:(7:13|92|14|58|81|82|83)(2:18|19))(8:20|98|21|22|90|54|(5:57|58|81|82|83)|56))(1:27))(3:28|(1:31)|56)|32|(5:34|86|35|36|(4:41|81|82|83)(1:42))|43|(1:45)|46|96|47|48|88|49|50|(4:53|90|54|(0))|56) */
    /* JADX WARN: Can't wrap try/catch for region: R(20:0|2|(2:4|(1:6)(1:7))(0)|8|94|(1:(1:(1:(7:13|92|14|58|81|82|83)(2:18|19))(8:20|98|21|22|90|54|(5:57|58|81|82|83)|56))(1:27))(3:28|(1:31)|56)|32|(5:34|86|35|36|(4:41|81|82|83)(1:42))|43|(1:45)|46|96|47|48|88|49|50|(4:53|90|54|(0))|56|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01bd, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01be, code lost:
    
        r12 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01c1, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01e2, code lost:
    
        r0 = (android.view.ViewGroup) r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01e5, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01e8, code lost:
    
        r0.removeView(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01ef, code lost:
    
        r0.removeView(r14.k);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01f8, code lost:
    
        r0.addView(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01ff, code lost:
    
        r12.a(r0);
        r4 = r4;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01e2 A[Catch: all -> 0x010c, TryCatch #4 {all -> 0x010c, blocks: (B:14:0x0042, B:58:0x01b4, B:81:0x0202, B:66:0x01c2, B:68:0x01e2, B:71:0x01e8, B:72:0x01eb, B:74:0x01ef, B:75:0x01f4, B:77:0x01f8, B:78:0x01fb, B:80:0x01ff, B:54:0x0197, B:32:0x00cb, B:34:0x00cf, B:35:0x00e4, B:36:0x00f2, B:41:0x0112, B:42:0x0119, B:43:0x011d, B:45:0x0124, B:46:0x0127, B:47:0x012f, B:49:0x018a), top: B:94:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01e8 A[Catch: all -> 0x010c, TryCatch #4 {all -> 0x010c, blocks: (B:14:0x0042, B:58:0x01b4, B:81:0x0202, B:66:0x01c2, B:68:0x01e2, B:71:0x01e8, B:72:0x01eb, B:74:0x01ef, B:75:0x01f4, B:77:0x01f8, B:78:0x01fb, B:80:0x01ff, B:54:0x0197, B:32:0x00cb, B:34:0x00cf, B:35:0x00e4, B:36:0x00f2, B:41:0x0112, B:42:0x0119, B:43:0x011d, B:45:0x0124, B:46:0x0127, B:47:0x012f, B:49:0x018a), top: B:94:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01ef A[Catch: all -> 0x010c, TryCatch #4 {all -> 0x010c, blocks: (B:14:0x0042, B:58:0x01b4, B:81:0x0202, B:66:0x01c2, B:68:0x01e2, B:71:0x01e8, B:72:0x01eb, B:74:0x01ef, B:75:0x01f4, B:77:0x01f8, B:78:0x01fb, B:80:0x01ff, B:54:0x0197, B:32:0x00cb, B:34:0x00cf, B:35:0x00e4, B:36:0x00f2, B:41:0x0112, B:42:0x0119, B:43:0x011d, B:45:0x0124, B:46:0x0127, B:47:0x012f, B:49:0x018a), top: B:94:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01f8 A[Catch: all -> 0x010c, TryCatch #4 {all -> 0x010c, blocks: (B:14:0x0042, B:58:0x01b4, B:81:0x0202, B:66:0x01c2, B:68:0x01e2, B:71:0x01e8, B:72:0x01eb, B:74:0x01ef, B:75:0x01f4, B:77:0x01f8, B:78:0x01fb, B:80:0x01ff, B:54:0x0197, B:32:0x00cb, B:34:0x00cf, B:35:0x00e4, B:36:0x00f2, B:41:0x0112, B:42:0x0119, B:43:0x011d, B:45:0x0124, B:46:0x0127, B:47:0x012f, B:49:0x018a), top: B:94:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01ff A[Catch: all -> 0x010c, TryCatch #4 {all -> 0x010c, blocks: (B:14:0x0042, B:58:0x01b4, B:81:0x0202, B:66:0x01c2, B:68:0x01e2, B:71:0x01e8, B:72:0x01eb, B:74:0x01ef, B:75:0x01f4, B:77:0x01f8, B:78:0x01fb, B:80:0x01ff, B:54:0x0197, B:32:0x00cb, B:34:0x00cf, B:35:0x00e4, B:36:0x00f2, B:41:0x0112, B:42:0x0119, B:43:0x011d, B:45:0x0124, B:46:0x0127, B:47:0x012f, B:49:0x018a), top: B:94:0x0028 }] */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v2, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v9, types: [kotlinx.coroutines.sync.Mutex] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(android.view.ViewGroup r19, ads_mobile_sdk.n53 r20, android.app.Activity r21, android.view.Window r22, ads_mobile_sdk.r31 r23, ads_mobile_sdk.h41 r24, kotlin.coroutines.Continuation r25) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 524
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.bz1.a(android.view.ViewGroup, ads_mobile_sdk.n53, android.app.Activity, android.view.Window, ads_mobile_sdk.r31, ads_mobile_sdk.h41, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object a(Map map, cy1 cy1Var) {
        return a(this, map, cy1Var);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4, types: [int] */
    /* JADX WARN: Type inference failed for: r13v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.bz1 r26, java.util.Map r27, kotlin.coroutines.Continuation r28) {
        /*
            Method dump skipped, instruction units count: 836
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.bz1.a(ads_mobile_sdk.bz1, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
