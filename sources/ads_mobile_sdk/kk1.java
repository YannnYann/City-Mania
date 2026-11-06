package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class kk1 {
    public static final kk1 a;
    public static final kk1 b;
    public static final kk1 c;
    public static final kk1 d;
    public static final kk1 e;
    public static final kk1 f;
    public static final kk1 g;
    public static final kk1 h;
    public static final kk1 i;
    public static final kk1 j;
    public static final kk1 k;
    public static final kk1 l;
    public static final kk1 m;
    public static final kk1 n;
    public static final /* synthetic */ kk1[] o;

    static {
        kk1 kk1Var = new kk1("INTERNAL_ERROR", 0);
        a = kk1Var;
        kk1 kk1Var2 = new kk1("INVALID_REQUEST", 1);
        b = kk1Var2;
        kk1 kk1Var3 = new kk1("NO_FILL", 2);
        c = kk1Var3;
        kk1 kk1Var4 = new kk1("APP_ID_MISSING", 3);
        d = kk1Var4;
        kk1 kk1Var5 = new kk1("NETWORK_ERROR", 4);
        e = kk1Var5;
        kk1 kk1Var6 = new kk1("INVALID_AD_UNIT_ID", 5);
        kk1 kk1Var7 = new kk1("INVALID_AD_SIZE", 6);
        kk1 kk1Var8 = new kk1("MEDIATION_SHOW_ERROR", 7);
        kk1 kk1Var9 = new kk1("NOT_READY", 8);
        kk1 kk1Var10 = new kk1("AD_RESPONSE_ALREADY_USED", 9);
        f = kk1Var10;
        kk1 kk1Var11 = new kk1("APP_NOT_FOREGROUND", 10);
        kk1 kk1Var12 = new kk1("INTERNAL_SHOW_ERROR", 11);
        kk1 kk1Var13 = new kk1("MEDIATION_NO_FILL", 12);
        g = kk1Var13;
        kk1 kk1Var14 = new kk1("INVALID_AD_RESPONSE", 13);
        h = kk1Var14;
        kk1 kk1Var15 = new kk1("REQUEST_ID_MISMATCH", 14);
        i = kk1Var15;
        kk1 kk1Var16 = new kk1("TIMEOUT", 15);
        j = kk1Var16;
        kk1 kk1Var17 = new kk1("CANCELLED", 16);
        k = kk1Var17;
        kk1 kk1Var18 = new kk1("WEB_VIEW_DESTROYED_ERROR", 17);
        l = kk1Var18;
        kk1 kk1Var19 = new kk1("ADAPTER_INITIALIZATION_ERROR", 18);
        m = kk1Var19;
        kk1 kk1Var20 = new kk1("INVALID_DATA_URL", 19);
        n = kk1Var20;
        kk1[] kk1VarArr = {kk1Var, kk1Var2, kk1Var3, kk1Var4, kk1Var5, kk1Var6, kk1Var7, kk1Var8, kk1Var9, kk1Var10, kk1Var11, kk1Var12, kk1Var13, kk1Var14, kk1Var15, kk1Var16, kk1Var17, kk1Var18, kk1Var19, kk1Var20};
        o = kk1VarArr;
        EnumEntriesKt.enumEntries(kk1VarArr);
    }

    public static kk1[] values() {
        return (kk1[]) o.clone();
    }

    public kk1(String str, int i2) {
    }

    public final LoadAdError.ErrorCode d() {
        switch (ordinal()) {
            case 0:
                return LoadAdError.ErrorCode.INTERNAL_ERROR;
            case 1:
                return LoadAdError.ErrorCode.INVALID_REQUEST;
            case 2:
                return LoadAdError.ErrorCode.NO_FILL;
            case 3:
                return LoadAdError.ErrorCode.APP_ID_MISSING;
            case 4:
                return LoadAdError.ErrorCode.NETWORK_ERROR;
            case 5:
                return LoadAdError.ErrorCode.INVALID_REQUEST;
            case 6:
                return LoadAdError.ErrorCode.INVALID_REQUEST;
            case 7:
                return LoadAdError.ErrorCode.INTERNAL_ERROR;
            case 8:
                return LoadAdError.ErrorCode.INTERNAL_ERROR;
            case 9:
                return LoadAdError.ErrorCode.AD_RESPONSE_ALREADY_USED;
            case 10:
                return LoadAdError.ErrorCode.INTERNAL_ERROR;
            case 11:
                return LoadAdError.ErrorCode.INTERNAL_ERROR;
            case 12:
                return LoadAdError.ErrorCode.NO_FILL;
            case 13:
                return LoadAdError.ErrorCode.INVALID_AD_RESPONSE;
            case 14:
                return LoadAdError.ErrorCode.REQUEST_ID_MISMATCH;
            case 15:
                return LoadAdError.ErrorCode.TIMEOUT;
            case 16:
                return LoadAdError.ErrorCode.CANCELLED;
            case 17:
                return LoadAdError.ErrorCode.INTERNAL_ERROR;
            case 18:
                return LoadAdError.ErrorCode.INTERNAL_ERROR;
            case 19:
                return LoadAdError.ErrorCode.INTERNAL_ERROR;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
