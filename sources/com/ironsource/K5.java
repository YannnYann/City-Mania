package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;

/* JADX INFO: loaded from: classes3.dex */
class K5 {
    static final String a = "ironbeast";
    static final String b = "outcome";
    static final int c = 4;
    static final int d = 3;
    static final int e = 2;
    static final int f = 0;

    public static AbstractC3572e a(String str, int i) {
        if (a.equals(str)) {
            return new C3762oa(i);
        }
        if (b.equals(str)) {
            return new C3531bd(i);
        }
        if (i == 2) {
            return new C3762oa(i);
        }
        if (i == 3) {
            return new C3531bd(i);
        }
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.NATIVE, "EventsFormatterFactory failed to instantiate a formatter (type: " + str + ", adUnit: " + i + ")", 2);
        return null;
    }
}
