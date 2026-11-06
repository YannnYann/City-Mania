package com.ironsource;

import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.ArrayList;
import org.json.JSONException;

/* JADX INFO: renamed from: com.ironsource.jd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3675jd extends AbstractC3812r3 {
    public static final C3675jd P;

    static {
        C3675jd c3675jd = new C3675jd();
        P = c3675jd;
        c3675jd.H = "outcome";
        c3675jd.G = 0;
        c3675jd.I = IronSourceConstants.PIXEL_EVENT_TYPE;
        c3675jd.e();
    }

    private C3675jd() {
    }

    @Override // com.ironsource.AbstractC3812r3
    public void a(ArrayList<C5> arrayList) {
    }

    @Override // com.ironsource.AbstractC3812r3
    public int c(C5 c5) {
        return 1;
    }

    @Override // com.ironsource.AbstractC3812r3
    public void d() {
    }

    @Override // com.ironsource.AbstractC3812r3
    public boolean d(C5 c5) {
        return true;
    }

    @Override // com.ironsource.AbstractC3812r3
    public String e(int i) {
        return "";
    }

    @Override // com.ironsource.AbstractC3812r3
    public void f(C5 c5) {
    }

    @Override // com.ironsource.AbstractC3812r3
    public boolean g(C5 c5) {
        return false;
    }

    @Override // com.ironsource.AbstractC3812r3
    public boolean h(C5 c5) {
        return false;
    }

    public final void i() throws JSONException {
        new C3528ba().b(ContextProvider.getInstance().getApplicationContext());
        a(new C5(D5.T, new C3636h9().a()));
    }

    @Override // com.ironsource.AbstractC3812r3
    public boolean j(C5 c5) {
        return false;
    }
}
