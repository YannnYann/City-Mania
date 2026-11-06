package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class as0 {
    public static bs0 a(v01 result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (result instanceof q01) {
            return bs0.c;
        }
        if (result instanceof r01) {
            return bs0.e;
        }
        if (result instanceof j01) {
            return ((j01) result).c instanceof CancellationException ? bs0.g : bs0.h;
        }
        if (!(result instanceof l01)) {
            return bs0.i;
        }
        int iIntValue = ((l01) result).c.getCode().intValue();
        return iIntValue == LoadAdError.ErrorCode.NOT_FOUND.getValue() ? bs0.f : iIntValue == LoadAdError.ErrorCode.NO_FILL.getValue() ? bs0.d : bs0.i;
    }
}
