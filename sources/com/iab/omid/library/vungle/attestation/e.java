package com.iab.omid.library.vungle.attestation;

import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
public final class e {
    private static final d a = new d();

    public static void a(Context context, String str, a aVar) {
        String str2;
        String str3;
        if (context == null) {
            str3 = "Attestation failed: Application Context cannot be null";
        } else if (str != null) {
            try {
                if (str.trim().isEmpty()) {
                    str3 = "Attestation failed: Mechanism name cannot be null or empty";
                } else {
                    if (aVar != null) {
                        if (c.a(context).a(str)) {
                            b bVarA = a.a(str, context);
                            if (bVarA != null) {
                                bVarA.a(aVar);
                                return;
                            }
                            str2 = "Failed to create mechanism: " + str;
                        } else {
                            str2 = "Mechanism not supported on this device: " + str;
                        }
                        com.iab.omid.library.vungle.utils.d.d(str2);
                        return;
                    }
                    str3 = "Attestation failed: Attestation arguments cannot be null";
                }
            } catch (Exception e) {
                com.iab.omid.library.vungle.utils.d.a("Error during attestation with mechanism: " + str, e);
                return;
            }
        } else {
            str3 = "Attestation failed: Mechanism name cannot be null or empty";
        }
        com.iab.omid.library.vungle.utils.d.b(str3);
    }
}
