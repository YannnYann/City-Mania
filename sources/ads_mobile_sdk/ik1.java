package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdRequest;
import java.util.Set;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ik1 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public ik1(pn2 pn2Var, dw2 dw2Var, vh1 vh1Var) {
        this.a = pn2Var;
        this.b = dw2Var;
        this.c = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        Set setEmptySet;
        on2 signalSource = (on2) this.a.get();
        ex0 flags = (ex0) this.b.get();
        BaseRequest baseRequest = (BaseRequest) this.c.get();
        Intrinsics.checkNotNullParameter(signalSource, "signalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        if (baseRequest instanceof PictureInPictureAdRequest) {
            lg3 lg3Var = lg3.a;
            qf3 qf3Var = qf3.a;
            ph3 ph3Var = ph3.a;
            signalSource.getClass();
            setEmptySet = SetsKt__SetsJVMKt.setOf(new jb2(signalSource, lg3Var, qf3Var, fk3.a(flags, y11.PICTURE_IN_PICTURE_AD_REQUEST)));
        } else {
            setEmptySet = SetsKt__SetsKt.emptySet();
        }
        return (Set) kq2.b(setEmptySet);
    }
}
