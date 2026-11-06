package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.content.Intent;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ί, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0768 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0767 f3099;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ Context f3100;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Intent f3101;

    public C0768(C0767 c0767, Intent intent, Context context) {
        this.f3099 = c0767;
        this.f3101 = intent;
        this.f3100 = context;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        try {
            if (this.f3101.getAction().equals(StringFog.decrypt("IECSRWrqFakvS4IZZuwf6W9tuXlLxjLTCHi/Y1zcMs8AYLFy\n", "QS72NwWDcYc=\n"))) {
                String str = C0767.f3095;
                AbstractC0182.m1154(str, StringFog.decrypt("JXgMJrZPpvkIchY/vF65sB10DCj5XqW4BXod\n", "ax14Udk9zdk=\n"));
                if (this.f3101.getBooleanExtra(StringFog.decrypt("0YhTxv7RU/nLjmbA5MY=\n", "v+cQqZC/Npo=\n"), false)) {
                    AbstractC0182.m1154(str, StringFog.decrypt("tDdvCtkVtI+OMCoW2UawwJI0KhvTXKnKgytjDtVGvg==\n", "4F8KeLwyx68=\n"));
                    AbstractC0272.m1210(new C0784(this));
                } else if (C0767.m1443(this.f3099, this.f3100)) {
                    AbstractC0272.m1210(new C0771(this));
                } else {
                    AbstractC0272.m1210(new C0770(this));
                }
            }
        } catch (Exception e) {
            AbstractC1003.m1592(C0767.f3095, StringFog.decrypt("ggYorb3V7bTnGzSQqpbhs7ER\n", "x3Raws/1hNo=\n"), (Throwable) e, false);
        }
    }
}
