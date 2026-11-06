package com.ironsource;

import com.ironsource.InterfaceC3803qb;
import com.unity3d.mediation.LevelPlayAdInfo;
import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: loaded from: classes3.dex */
public final class Qa {
    /* JADX INFO: Access modifiers changed from: private */
    public static final String b(InterfaceC3803qb<LevelPlayAdInfo> interfaceC3803qb) {
        if (interfaceC3803qb instanceof InterfaceC3803qb.b) {
            return "success";
        }
        if (interfaceC3803qb instanceof InterfaceC3803qb.a) {
            return "failure";
        }
        throw new NoWhenBranchMatchedException();
    }
}
