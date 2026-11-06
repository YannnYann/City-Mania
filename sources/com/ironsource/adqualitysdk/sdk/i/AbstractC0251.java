package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.content.SharedPreferences;
import android.provider.Settings;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.UUID;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ҭ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0251 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final String f1564 = StringFog.decrypt("MW5ElsiNpNgnb06JxZjv2ytl\n", "QgEr+6Tsir8=\n");

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m1205(Context context) {
        String string = Settings.Secure.getString(context.getApplicationContext().getContentResolver(), StringFog.decrypt("x3YTw3quuZ7PfA==\n", "phh3sRXH3cE=\n"));
        if (string != null) {
            return string;
        }
        AbstractC0182.m1147(StringFog.decrypt("vyOZCMGSjuW5EqEu8baqoaUYsz/hoJ+3kxa3P+GqrKCF\n", "9nDSTYTEz8U=\n"), StringFog.decrypt("DIhWWz9aUnVvgUZDOFxVQAGjcXgScCpIC8kDYihdG2ZvgEZZPkYUdSqDA14/Gg==\n", "T+cjN1s0dQE=\n"));
        SharedPreferences sharedPreferences = context.getSharedPreferences(StringFog.decrypt("dGfgZuLbAlcpd+0=\n", "BxOPFIf1aSE=\n"), 0);
        String str = f1564;
        String string2 = sharedPreferences.getString(str, null);
        if (!TextUtils.isEmpty(string2)) {
            return string2;
        }
        String string3 = UUID.randomUUID().toString();
        sharedPreferences.edit().putString(str, string3).commit();
        return string3;
    }
}
