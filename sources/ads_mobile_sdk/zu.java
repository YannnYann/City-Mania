package ads_mobile_sdk;

import android.content.Intent;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class zu extends Lambda implements Function1 {
    public final /* synthetic */ av a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zu(av avVar) {
        super(1);
        this.a = avVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String it = (String) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        try {
            return Intent.parseUri(it, 0);
        } catch (Exception e) {
            ((as3) this.a.b).a("Invalid intent Uri for canOpenIntents gmsg", (Throwable) e);
            return null;
        }
    }
}
