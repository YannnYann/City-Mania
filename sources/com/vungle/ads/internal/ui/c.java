package com.vungle.ads.internal.ui;

import android.content.Intent;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class c extends Lambda implements Function0 {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ Intent c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(int i, int i2, Intent intent) {
        super(0);
        this.a = i;
        this.b = i2;
        this.c = intent;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("onActivityResult: ");
        sbA.append(this.a);
        sbA.append(", ");
        sbA.append(this.b);
        sbA.append(", ");
        sbA.append(this.c);
        return sbA.toString();
    }
}
