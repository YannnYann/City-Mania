package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ḽ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0723 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0719 f2970;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ ArrayList f2971;

    public C0723(C0719 c0719, ArrayList arrayList) {
        this.f2970 = c0719;
        this.f2971 = arrayList;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        ArrayList arrayListM979 = C.m979(this.f2970.f2968.f2716, this.f2971);
        for (View view : this.f2971) {
            Iterator it = this.f2970.f2968.f2716.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (((WeakReference) it.next()).get() == view) {
                        break;
                    }
                } else {
                    this.f2970.f2968.f2716.add(new WeakReference(view));
                    AbstractC0272.m1210(new C0734(this, view));
                    break;
                }
            }
        }
        for (int i = 0; i < arrayListM979.size(); i++) {
            AbstractC0272.m1210(new C0726(this, (View) arrayListM979.get(i)));
        }
    }
}
