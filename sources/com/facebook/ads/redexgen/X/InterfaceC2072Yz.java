package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Yz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public interface InterfaceC2072Yz {
    public static final InterfaceC2072Yz A00 = new InterfaceC2072Yz() { // from class: com.facebook.ads.redexgen.X.Q7
        @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
        public final InterfaceC2068Yv[] A5w() {
            return AbstractC2071Yy.A00();
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
        public final /* synthetic */ InterfaceC2068Yv[] A5x(Uri uri, Map map) {
            return AbstractC2071Yy.A01(this, uri, map);
        }
    };

    InterfaceC2068Yv[] A5w();

    InterfaceC2068Yv[] A5x(Uri uri, Map<String, List<String>> map);
}
