package ads_mobile_sdk;

import com.ironsource.C3522b4;
import java.util.Optional;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.optionals.OptionalsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class l04 implements o24 {
    public final Optional a;
    public final CoroutineScope b;
    public final ex0 c;

    public l04(Optional optionalGmaWebView, CoroutineScope uiScope, ex0 flags) {
        Intrinsics.checkNotNullParameter(optionalGmaWebView, "optionalGmaWebView");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = optionalGmaWebView;
        this.b = uiScope;
        this.c = flags;
    }

    @Override // ads_mobile_sdk.o24
    public final Unit a(boolean z) {
        ex0 ex0Var = this.c;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:pause_webview_when_not_visible", C3522b4.i.W);
        if (((Boolean) ex0Var.a("gads:pause_webview_when_not_visible", Boolean.TRUE, yr.b)).booleanValue()) {
            r31 r31Var = (r31) OptionalsKt.getOrNull(this.a);
            if (r31Var == null) {
                return Unit.INSTANCE;
            }
            if (z) {
                CoroutineScope coroutineScope = this.b;
                j04 block = new j04(r31Var, null);
                EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(block, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            } else {
                CoroutineScope coroutineScope2 = this.b;
                k04 block2 = new k04(r31Var, null);
                EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
                Intrinsics.checkNotNullParameter(context2, "context");
                Intrinsics.checkNotNullParameter(block2, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope2, context2, null, new ws3(block2, null), 2, null);
            }
        }
        return Unit.INSTANCE;
    }
}
