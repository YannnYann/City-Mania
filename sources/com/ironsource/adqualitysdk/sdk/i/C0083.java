package com.ironsource.adqualitysdk.sdk.i;

import android.view.Choreographer;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ƭ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0083 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0057 f860;

    public C0083(C0057 c0057) {
        this.f860 = c0057;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0057 c0057 = this.f860;
        if (!c0057.f811) {
            c0057.f808 = null;
            return;
        }
        HashMap map = new HashMap(c0057.f810);
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            this.f860.f809.post((Runnable) map.get((InterfaceC0279) it.next()));
        }
        C0057 c00572 = this.f860;
        if (c00572.f808 == null) {
            c00572.f808 = new ChoreographerFrameCallbackC0095(this);
        }
        Choreographer.getInstance().postFrameCallback(this.f860.f808);
    }
}
