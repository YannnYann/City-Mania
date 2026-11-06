package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import com.facebook.ads.androidx.media3.common.text.Cue;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Tf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1934Tf implements InterfaceC1703Jt {
    public final long A00;

    @MetaExoPlayerCustomization
    public final List<C1936Th> A01;
    public static final C1934Tf A03 = new C1934Tf(XR.A01(), 0);
    public static final String A04 = N1.A0h(0);
    public static final String A05 = N1.A0h(1);
    public static final InterfaceC1702Js<C1934Tf> A02 = new InterfaceC1702Js() { // from class: com.facebook.ads.redexgen.X.Tg
        @Override // com.facebook.ads.redexgen.X.InterfaceC1702Js
        public final InterfaceC1703Jt A7F(Bundle bundle) {
            return C1934Tf.A00(bundle);
        }
    };

    @MetaExoPlayerCustomization
    public C1934Tf(List<C1936Th> list, long j) {
        this.A01 = XR.A03((C1936Th[]) list.toArray(new C1936Th[0]));
        this.A00 = j;
    }

    public static final C1934Tf A00(Bundle bundle) {
        List listA01;
        List<Cue> cues = bundle.getParcelableArrayList(A04);
        if (cues == null) {
            listA01 = XR.A01();
        } else {
            listA01 = C1753Lt.A01(C1936Th.A0I, cues);
        }
        return new C1934Tf(listA01, bundle.getLong(A05));
    }
}
