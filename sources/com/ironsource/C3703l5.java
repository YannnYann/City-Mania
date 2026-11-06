package com.ironsource;

import java.util.Date;

/* JADX INFO: renamed from: com.ironsource.l5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3703l5 {
    private long a = new Date().getTime();

    public static long a(C3703l5 c3703l5) {
        if (c3703l5 == null) {
            return 0L;
        }
        return new Date().getTime() - c3703l5.a;
    }
}
