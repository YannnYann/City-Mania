package ads_mobile_sdk;

import android.content.Context;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public abstract class fo {
    public static void a(Context context, String str, bo boVar) {
        cs0 cs0VarA;
        if (context == null || str == null) {
            return;
        }
        try {
            if (str.trim().isEmpty()) {
                return;
            }
            Cdo.a(context).getClass();
            ru1 ru1Var = (ru1) Cdo.d.get(str);
            if (ru1Var == null || !((ds0) ru1Var).a() || (cs0VarA = eo.a(context, str)) == null) {
                return;
            }
            cs0VarA.a(boVar);
        } catch (Exception e) {
            Log.e("OMIDLIB", "Error during attestation with mechanism: ".concat(str), e);
        }
    }
}
