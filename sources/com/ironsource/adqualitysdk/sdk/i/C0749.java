package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ỵ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0749 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f3065;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ ArrayList f3066;

    public C0749(ArrayList arrayList, JSONObject jSONObject) {
        this.f3066 = arrayList;
        this.f3065 = jSONObject;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        for (C0446 c0446 : this.f3066) {
            JSONObject jSONObject = this.f3065;
            Context context = c0446.f2194.f1971.f1358;
            String str = AbstractC0047.f593;
            int i = AbstractC0046.f574;
            Intent intentPutExtra = new Intent(str).putExtra(AbstractC0047.f585, jSONObject.toString());
            C0092 c0092M1090 = C0092.m1090(context);
            if (c0092M1090.f903) {
                synchronized (c0092M1090.f901) {
                    try {
                        intentPutExtra.getAction();
                        String strResolveTypeIfNeeded = intentPutExtra.resolveTypeIfNeeded(c0092M1090.f902.getContentResolver());
                        intentPutExtra.getData();
                        String scheme = intentPutExtra.getScheme();
                        intentPutExtra.getCategories();
                        boolean z = (intentPutExtra.getFlags() & 8) != 0;
                        if (z) {
                            Log.v(C0092.f898, StringFog.decrypt("CS4yRgtOCWY8azVQF11A\n", "W0tBKWc4YAg=\n") + strResolveTypeIfNeeded + StringFog.decrypt("EDtaH96VGHg=\n", "MEg5d7v4fVg=\n") + scheme + StringFog.decrypt("03AriK0LKQada20=\n", "8x9NqMRlXWM=\n") + intentPutExtra);
                        }
                        ArrayList arrayList = (ArrayList) c0092M1090.f900.get(intentPutExtra.getAction());
                        if (arrayList != null) {
                            if (z) {
                                Log.v(C0092.f898, StringFog.decrypt("0xIXTTOkb2b7AhcefA==\n", "knFjJFzKTwo=\n") + arrayList);
                            }
                            if (arrayList.size() > 0) {
                                if (arrayList.get(0) != null) {
                                    throw new ClassCastException();
                                }
                                if (!z) {
                                    throw null;
                                }
                                StringFog.decrypt("C/Hngaucz9Zm8fSDqpvSxWb2+o63kNOR\n", "RpCT4sP1obE=\n");
                                throw null;
                            }
                        }
                    } finally {
                    }
                }
            }
        }
    }
}
