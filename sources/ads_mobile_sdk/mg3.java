package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.signal.SignalError;

/* JADX INFO: loaded from: classes.dex */
public final class mg3 {
    public static final SignalError a(i01 i01Var) {
        if (!(i01Var instanceof r01)) {
            return new SignalError(i01Var.a() == kk1.b ? SignalError.ErrorCode.INVALID_REQUEST : SignalError.ErrorCode.INTERNAL_ERROR, h01.a(i01Var));
        }
        SignalError.ErrorCode errorCode = SignalError.ErrorCode.TIMEOUT;
        ir0 ir0Var = ir0.b;
        return new SignalError(errorCode, "Operation timed out.");
    }
}
