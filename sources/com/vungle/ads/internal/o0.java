package com.vungle.ads.internal;

import android.content.Context;
import android.view.MotionEvent;
import com.vungle.ads.TpatError;
import com.vungle.ads.internal.protos.Sdk;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes4.dex */
public final class o0 {
    public static final String d = Pattern.quote("{{{req_width}}}");
    public static final String e = Pattern.quote("{{{req_height}}}");
    public static final String f = Pattern.quote("{{{width}}}");
    public static final String g = Pattern.quote("{{{height}}}");
    public static final String h = Pattern.quote("{{{down_x}}}");
    public static final String i = Pattern.quote("{{{down_y}}}");
    public static final String j = Pattern.quote("{{{up_x}}}");
    public static final String k = Pattern.quote("{{{up_y}}}");
    public final Context a;
    public final com.vungle.ads.internal.model.i0 b;
    public final k0 c;

    public o0(Context context, com.vungle.ads.internal.model.i0 advertisement) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        this.a = context;
        this.b = advertisement;
        this.c = new k0(new l0(Integer.MIN_VALUE, Integer.MIN_VALUE), new l0(Integer.MIN_VALUE, Integer.MIN_VALUE));
    }

    public final void a(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.b.x()) {
            int action = event.getAction();
            if (action == 0) {
                this.c.a(new l0((int) event.getX(), (int) event.getY()));
                return;
            }
            if (action != 1) {
                return;
            }
            this.c.b(new l0((int) event.getX(), (int) event.getY()));
            if (this.c.c()) {
                List<String> listA = com.vungle.ads.internal.model.i0.a(this.b, "video.clickCoordinates", (String) null, 6);
                if (listA == null || listA.isEmpty()) {
                    new TpatError(Sdk.SDKError.Reason.EMPTY_TPAT_ERROR, "Empty urls for tpat: video.clickCoordinates").setLogEntry$vungle_ads_release(this.b.q()).logErrorNoReturnValue$vungle_ads_release();
                    return;
                }
                int iD = this.b.d();
                int iA = iD == 0 ? new m0(this.a).b.widthPixels : com.vungle.ads.internal.util.b0.a(this.a, iD);
                int iA2 = this.b.a();
                int iA3 = iA2 == 0 ? new m0(this.a).b.heightPixels : com.vungle.ads.internal.util.b0.a(this.a, iA2);
                int iD2 = this.b.d();
                int iA4 = iD2 == 0 ? new m0(this.a).b.widthPixels : com.vungle.ads.internal.util.b0.a(this.a, iD2);
                int iA5 = this.b.a();
                int iA6 = iA5 == 0 ? new m0(this.a).b.heightPixels : com.vungle.ads.internal.util.b0.a(this.a, iA5);
                Lazy lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new n0(this.a));
                for (String str : listA) {
                    String MACRO_REQ_WIDTH = d;
                    Intrinsics.checkNotNullExpressionValue(MACRO_REQ_WIDTH, "MACRO_REQ_WIDTH");
                    String strReplace = new Regex(MACRO_REQ_WIDTH).replace(str, String.valueOf(iA));
                    String MACRO_REQ_HEIGHT = e;
                    Intrinsics.checkNotNullExpressionValue(MACRO_REQ_HEIGHT, "MACRO_REQ_HEIGHT");
                    String strReplace2 = new Regex(MACRO_REQ_HEIGHT).replace(strReplace, String.valueOf(iA3));
                    String MACRO_WIDTH = f;
                    Intrinsics.checkNotNullExpressionValue(MACRO_WIDTH, "MACRO_WIDTH");
                    String strReplace3 = new Regex(MACRO_WIDTH).replace(strReplace2, String.valueOf(iA4));
                    String MACRO_HEIGHT = g;
                    Intrinsics.checkNotNullExpressionValue(MACRO_HEIGHT, "MACRO_HEIGHT");
                    String strReplace4 = new Regex(MACRO_HEIGHT).replace(strReplace3, String.valueOf(iA6));
                    String MACRO_DOWN_X = h;
                    Intrinsics.checkNotNullExpressionValue(MACRO_DOWN_X, "MACRO_DOWN_X");
                    String strReplace5 = new Regex(MACRO_DOWN_X).replace(strReplace4, String.valueOf(this.c.a().a()));
                    String MACRO_DOWN_Y = i;
                    Intrinsics.checkNotNullExpressionValue(MACRO_DOWN_Y, "MACRO_DOWN_Y");
                    String strReplace6 = new Regex(MACRO_DOWN_Y).replace(strReplace5, String.valueOf(this.c.a().b()));
                    String MACRO_UP_X = j;
                    Intrinsics.checkNotNullExpressionValue(MACRO_UP_X, "MACRO_UP_X");
                    String strReplace7 = new Regex(MACRO_UP_X).replace(strReplace6, String.valueOf(this.c.b().a()));
                    String MACRO_UP_Y = k;
                    Intrinsics.checkNotNullExpressionValue(MACRO_UP_Y, "MACRO_UP_Y");
                    ((com.vungle.ads.internal.network.r) lazy.getValue()).a(new com.vungle.ads.internal.network.p(new Regex(MACRO_UP_Y).replace(strReplace7, String.valueOf(this.c.b().b()))).b("coordinate").a(), false);
                }
            }
        }
    }
}
