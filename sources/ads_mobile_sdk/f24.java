package ads_mobile_sdk;

import com.google.gson.JsonObject;
import com.ironsource.C3670j8;
import java.util.Optional;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.optionals.OptionalsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class f24 implements o24 {
    public final CoroutineScope a;
    public final Optional b;
    public final zy c;
    public final String d;

    public f24(CoroutineScope uiScope, Optional optionalWebView, zy commonConfiguration, String afmaVersion) {
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(optionalWebView, "optionalWebView");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        this.a = uiScope;
        this.b = optionalWebView;
        this.c = commonConfiguration;
        this.d = afmaVersion;
    }

    @Override // ads_mobile_sdk.o24
    public final Unit a(boolean z) {
        r31 r31Var = (r31) OptionalsKt.getOrNull(this.b);
        if (r31Var == null) {
            return Unit.INSTANCE;
        }
        String str = z ? "1" : "0";
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(C3670j8.k, str);
        BuildersKt__Builders_commonKt.launch$default(this.a, null, null, new e24(r31Var, jsonObject, z, this, null), 3, null);
        return Unit.INSTANCE;
    }
}
