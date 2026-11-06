package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ŕ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0064 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final /* synthetic */ int f816 = 0;

    static {
        StringFog.decrypt("u7EHYQ8HiGGWugdhEDG3b5m/A2URBpZvhK0lZAI1jmuF\n", "995kAGNF+g4=\n");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Object m1073(Context context) {
        Class<?> cls;
        try {
            String strDecrypt = StringFog.decrypt("PBa3vfZuOLNzFLys+Gs+uTIZt6z4dCimPBayqPx1cqgyFqeq93NyhzIbsqPbdTOqORuyvO1KPaU8\nH7a9\n", "XXjTz5kHXMs=\n");
            String str = AbstractC0991.f3784;
            try {
                cls = Class.forName(strDecrypt);
            } catch (Throwable unused) {
                cls = null;
            }
            return AbstractC0991.m1585(cls, StringFog.decrypt("ea+sWeqcomtwqb0=\n", "HsrYEITv1go=\n"), Arrays.asList(context)).invoke(null, context);
        } catch (IllegalAccessException | InvocationTargetException unused2) {
            return null;
        }
    }
}
