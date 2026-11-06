package ads_mobile_sdk;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.chromium.net.CronetProvider;

/* JADX INFO: loaded from: classes.dex */
public final class s60 extends Lambda implements Function1 {
    public static final s60 a = new s60();

    public s60() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return Boolean.valueOf(Intrinsics.areEqual(((CronetProvider) obj).getName(), "Google-Play-Services-Cronet-Provider"));
    }
}
