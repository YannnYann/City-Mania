package com.ironsource;

import android.content.Context;
import android.text.TextUtils;
import com.ironsource.Q7;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import j$.util.DesugarTimeZone;
import java.util.Calendar;

/* JADX INFO: renamed from: com.ironsource.qd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3805qd implements Q7, Q7.a {
    private static final String a = "CappingManager.IS_DELIVERY_ENABLED";
    private static final String b = "CappingManager.IS_CAPPING_ENABLED";
    private static final String c = "CappingManager.IS_PACING_ENABLED";
    private static final String d = "CappingManager.MAX_NUMBER_OF_SHOWS";
    private static final String e = "CappingManager.CAPPING_TYPE";
    private static final String f = "CappingManager.SECONDS_BETWEEN_SHOWS";
    private static final String g = "CappingManager.CURRENT_NUMBER_OF_SHOWS";
    private static final String h = "CappingManager.CAPPING_TIME_THRESHOLD";
    private static final String i = "CappingManager.TIME_OF_THE_PREVIOUS_SHOW";

    /* JADX INFO: renamed from: com.ironsource.qd$a */
    public static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[EnumC3822rd.values().length];
            a = iArr;
            try {
                iArr[EnumC3822rd.PER_DAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[EnumC3822rd.PER_HOUR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.qd$b */
    public enum b {
        CAPPED_PER_DELIVERY,
        CAPPED_PER_COUNT,
        CAPPED_PER_PACE,
        NOT_CAPPED
    }

    @Override // com.ironsource.Q7
    public synchronized b a(Context context, AbstractC3850t3 abstractC3850t3, IronSource.a aVar) {
        if (context == null) {
            return b.NOT_CAPPED;
        }
        if (abstractC3850t3 == null) {
            return b.NOT_CAPPED;
        }
        String strA = a(aVar);
        if (abstractC3850t3.c() == null) {
            return b.NOT_CAPPED;
        }
        if (abstractC3850t3.a() == null) {
            return b.NOT_CAPPED;
        }
        return b(context, strA, abstractC3850t3.c());
    }

    @Override // com.ironsource.Q7.a
    public synchronized void b(Context context, AbstractC3850t3 abstractC3850t3, IronSource.a aVar) {
        if (context == null || abstractC3850t3 == null) {
            return;
        }
        C3747nd c3747ndA = abstractC3850t3.a();
        if (c3747ndA == null) {
            return;
        }
        a(context, a(aVar), abstractC3850t3.c(), c3747ndA);
    }

    @Override // com.ironsource.Q7
    public synchronized boolean c(Context context, AbstractC3850t3 abstractC3850t3, IronSource.a aVar) {
        return a(context, abstractC3850t3, aVar) != b.NOT_CAPPED;
    }

    private b b(Context context, String str, String str2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!IronSourceUtils.a(context, a(str, a, str2), true)) {
            return b.CAPPED_PER_DELIVERY;
        }
        if (IronSourceUtils.a(context, a(str, c, str2), false)) {
            if (jCurrentTimeMillis - IronSourceUtils.a(context, a(str, i, str2), 0L) < IronSourceUtils.a(context, a(str, f, str2), 0) * 1000) {
                return b.CAPPED_PER_PACE;
            }
        }
        if (IronSourceUtils.a(context, a(str, b, str2), false)) {
            int iA = IronSourceUtils.a(context, a(str, d, str2), 0);
            String strA = a(str, g, str2);
            int iA2 = IronSourceUtils.a(context, strA, 0);
            String strA2 = a(str, h, str2);
            if (jCurrentTimeMillis >= IronSourceUtils.a(context, strA2, 0L)) {
                IronSourceUtils.b(context, strA, 0);
                IronSourceUtils.b(context, strA2, 0L);
            } else if (iA2 >= iA) {
                return b.CAPPED_PER_COUNT;
            }
        }
        return b.NOT_CAPPED;
    }

    @Override // com.ironsource.Q7.a
    public synchronized void a(Context context, String str, IronSource.a aVar) {
        if (context == null) {
            return;
        }
        if (str == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a(context, a(aVar), str);
    }

    private String a(String str, String str2, String str3) {
        return str + "_" + str2 + "_" + str3;
    }

    private void a(Context context, String str, String str2) {
        EnumC3822rd enumC3822rd;
        int i2 = 0;
        if (IronSourceUtils.a(context, a(str, c, str2), false)) {
            IronSourceUtils.b(context, a(str, i, str2), System.currentTimeMillis());
        }
        if (IronSourceUtils.a(context, a(str, b, str2), false)) {
            String strA = a(str, g, str2);
            int iA = IronSourceUtils.a(context, strA, 0);
            if (iA == 0) {
                String strC = IronSourceUtils.c(context, a(str, e, str2), EnumC3822rd.PER_DAY.toString());
                EnumC3822rd[] enumC3822rdArrValues = EnumC3822rd.values();
                int length = enumC3822rdArrValues.length;
                while (true) {
                    if (i2 >= length) {
                        enumC3822rd = null;
                        break;
                    }
                    enumC3822rd = enumC3822rdArrValues[i2];
                    if (enumC3822rd.a.equals(strC)) {
                        break;
                    } else {
                        i2++;
                    }
                }
                IronSourceUtils.b(context, a(str, h, str2), a(enumC3822rd));
            }
            IronSourceUtils.b(context, strA, iA + 1);
        }
    }

    private long a(EnumC3822rd enumC3822rd) {
        Calendar calendar = Calendar.getInstance(DesugarTimeZone.getTimeZone("UTC"));
        int i2 = a.a[enumC3822rd.ordinal()];
        if (i2 == 1) {
            calendar.set(14, 0);
            calendar.set(13, 0);
            calendar.set(12, 0);
            calendar.set(11, 0);
            calendar.add(6, 1);
        } else if (i2 == 2) {
            calendar.set(14, 0);
            calendar.set(13, 0);
            calendar.set(12, 0);
            calendar.add(11, 1);
        }
        return calendar.getTimeInMillis();
    }

    private void a(Context context, String str, String str2, C3747nd c3747nd) {
        boolean zE = c3747nd.e();
        IronSourceUtils.b(context, a(str, a, str2), zE);
        if (zE) {
            boolean zD = c3747nd.d();
            IronSourceUtils.b(context, a(str, b, str2), zD);
            if (zD) {
                IronSourceUtils.b(context, a(str, d, str2), c3747nd.b());
                IronSourceUtils.f(context, a(str, e, str2), c3747nd.a().toString());
            }
            boolean zF = c3747nd.f();
            IronSourceUtils.b(context, a(str, c, str2), zF);
            if (zF) {
                IronSourceUtils.b(context, a(str, f, str2), c3747nd.c());
            }
        }
    }

    private String a(IronSource.a aVar) {
        if (aVar == IronSource.a.REWARDED_VIDEO) {
            return IronSourceConstants.REWARDED_VIDEO_AD_UNIT;
        }
        if (aVar == IronSource.a.INTERSTITIAL) {
            return "Interstitial";
        }
        if (aVar == IronSource.a.BANNER) {
            return "Banner";
        }
        if (aVar == IronSource.a.NATIVE_AD) {
            return IronSourceConstants.NATIVE_AD_UNIT;
        }
        return aVar.toString();
    }
}
