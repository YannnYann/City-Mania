package com.ironsource.adqualitysdk.sdk.i;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.װ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0303 extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String str = AbstractC0077.f850;
        JSONObject jSONObject = new JSONObject();
        if (intent != null) {
            try {
                jSONObject.put(AbstractC0077.f826, intent.hasExtra(StringFog.decrypt("YLiq0JDqMA==\n", "ENTft/ePVG0=\n")) ? intent.getIntExtra(StringFog.decrypt("Ezq9v+/MwA==\n", "Y1bI2IippEg=\n"), -1) : -1);
                jSONObject.put(AbstractC0077.f825, Math.round(((intent.hasExtra(StringFog.decrypt("DRiRAU8=\n", "YX3nZCOT/EI=\n")) ? intent.getIntExtra(StringFog.decrypt("oeJ7xJs=\n", "zYcNoffY9fQ=\n"), -1) : -1) * 100.0f) / (intent.hasExtra(StringFog.decrypt("jYozmG8=\n", "/ulS9Aq9rsU=\n")) ? intent.getIntExtra(StringFog.decrypt("GR9TNP0=\n", "anwyWJhj2vk=\n"), -1) : -1)));
            } catch (Throwable th) {
                AbstractC0182.m1147(AbstractC0077.f850, StringFog.decrypt("FAEfJV8+aQU1GgMtDXxpFSUWHzMNcm0XNB8eallxKAsiHANwDQ==\n", "UXNtSi0eCGE=\n") + th.getLocalizedMessage());
            }
        }
        synchronized (AbstractC0077.class) {
            AbstractC0077.f823 = jSONObject;
        }
    }
}
