package ads_mobile_sdk;

import com.google.android.gms.appset.AppSet;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class yl extends Lambda implements Function0 {
    public final /* synthetic */ bm a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yl(bm bmVar) {
        super(0);
        this.a = bmVar;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return AppSet.getClient(this.a.a);
    }
}
