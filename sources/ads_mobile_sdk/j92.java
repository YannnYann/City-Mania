package ads_mobile_sdk;

import android.content.Context;
import android.os.SystemClock;
import com.google.common.base.Splitter;
import com.google.gson.JsonObject;
import java.util.Optional;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.optionals.OptionalsKt;

/* JADX INFO: loaded from: classes.dex */
public final class j92 implements b24 {
    public final Context a;
    public final String b;
    public final String c;
    public final km d;
    public final Optional e;
    public final tx f;
    public final AtomicBoolean g;
    public final AtomicBoolean h;
    public final i92 i;

    public j92(Context context, String afmaVersion, String adId, km appSettings, Optional optionalGmaWebView, tx clock) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(adId, "adId");
        Intrinsics.checkNotNullParameter(appSettings, "appSettings");
        Intrinsics.checkNotNullParameter(optionalGmaWebView, "optionalGmaWebView");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.a = context;
        this.b = afmaVersion;
        this.c = adId;
        this.d = appSettings;
        this.e = optionalGmaWebView;
        this.f = clock;
        this.g = new AtomicBoolean(false);
        this.h = new AtomicBoolean(false);
        this.i = new i92();
    }

    public final Object b(Continuation continuation) {
        r31 r31Var = (r31) OptionalsKt.getOrNull(this.e);
        if (r31Var == null) {
            return Unit.INSTANCE;
        }
        JsonObject jsonObjectA = this.i.a(this.a, this.b, this.c, this.d);
        Splitter splitter = f01.a;
        f01.b("Calling: AFMA_updateActiveView(" + jsonObjectA + ");", null);
        Object objB = r31Var.b(jsonObjectA, "AFMA_updateActiveView", continuation);
        return objB == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.b24
    public final Object b(ey3 ey3Var, Continuation continuation) {
        this.i.a = this.h.get() ? false : ey3Var.b;
        i92 i92Var = this.i;
        this.f.getClass();
        i92Var.d = SystemClock.elapsedRealtime();
        this.i.f = ey3Var;
        if (!this.g.get()) {
            return Unit.INSTANCE;
        }
        Object objB = b(continuation);
        return objB == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : Unit.INSTANCE;
    }
}
