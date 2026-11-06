package com.ironsource;

import com.ironsource.mediationsdk.utils.IronSourceConstants;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class G1 extends AbstractC3812r3 {
    public G1() {
        this.H = "outcome";
        this.G = 4;
        this.I = IronSourceConstants.APP_EVENT_TYPE;
        e();
    }

    @Override // com.ironsource.AbstractC3812r3
    public int c(C5 c5) {
        return 1;
    }

    @Override // com.ironsource.AbstractC3812r3
    public void d() {
    }

    @Override // com.ironsource.AbstractC3812r3
    public String e(int i) {
        return "";
    }

    @Override // com.ironsource.AbstractC3812r3
    public void f(C5 c5) {
    }

    @Override // com.ironsource.AbstractC3812r3
    public boolean h(C5 c5) {
        return false;
    }

    @Override // com.ironsource.AbstractC3812r3
    public boolean j(C5 c5) {
        return false;
    }

    @Override // com.ironsource.AbstractC3812r3
    public boolean d(C5 event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int iC = event.c();
        return iC == D5.b.c() || iC == D5.Q.c() || iC == D5.R.c() || iC == D5.S.c();
    }
}
