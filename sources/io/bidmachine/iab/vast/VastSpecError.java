package io.bidmachine.iab.vast;

import com.ironsource.InterfaceC3681k1;

/* JADX INFO: loaded from: classes5.dex */
public class VastSpecError {
    public final int a;
    public static final VastSpecError XML_PARSING = new VastSpecError(100);
    public static final VastSpecError XML_VALIDATE = new VastSpecError(101);
    public static final VastSpecError DURATION = new VastSpecError(202);
    public static final VastSpecError GENERAL_WRAPPER = new VastSpecError(300);
    public static final VastSpecError BAD_URI = new VastSpecError(301);
    public static final VastSpecError EXCEEDED_WRAPPER_LIMIT = new VastSpecError(302);
    public static final VastSpecError WRAPPER_RESPONSE_NO_AD = new VastSpecError(303);
    public static final VastSpecError GENERAL_LINEAR = new VastSpecError(400);
    public static final VastSpecError NO_FILE = new VastSpecError(InterfaceC3681k1.a.b.b);
    public static final VastSpecError BAD_FILE = new VastSpecError(InterfaceC3681k1.a.b.c);
    public static final VastSpecError SHOWING = new VastSpecError(InterfaceC3681k1.a.b.e);
    public static final VastSpecError GENERAL_COMPANION = new VastSpecError(600);
    public static final VastSpecError UNKNOWN = new VastSpecError(900);

    public VastSpecError(int code) {
        this.a = code;
    }

    public int getCode() {
        return this.a;
    }

    public String toString() {
        return String.format("%s", Integer.valueOf(this.a));
    }
}
