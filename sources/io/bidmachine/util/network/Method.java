package io.bidmachine.util.network;

import com.ironsource.C3746nc;

/* JADX INFO: compiled from: Method.kt */
/* JADX INFO: loaded from: classes5.dex */
public enum Method {
    Get(C3746nc.a),
    Post(C3746nc.b),
    Head("HEAD");

    public final String networkName;

    Method(String str) {
        this.networkName = str;
    }

    public final String getNetworkName() {
        return this.networkName;
    }
}
