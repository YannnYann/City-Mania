package com.vungle.ads.internal.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.vungle.ads.internal.u0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public static final String a(Intent intent) {
        u0 u0Var = l.i;
        try {
            Bundle extras = intent.getExtras();
            if (extras != null) {
                return extras.getString("request_eventId");
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static final String b(Intent intent) {
        u0 u0Var = l.i;
        try {
            Bundle extras = intent.getExtras();
            if (extras != null) {
                return extras.getString("request");
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static void a(com.vungle.ads.internal.presenter.a aVar) {
        l.j = aVar;
    }

    public static void a(u0 u0Var) {
        l.i = u0Var;
    }

    public static Intent a(Context context, String placement, String str) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intent intent = new Intent(context, (Class<?>) VungleActivity.class);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        Bundle bundle = new Bundle();
        bundle.putString("request", placement);
        bundle.putString("request_eventId", str);
        intent.putExtras(bundle);
        return intent;
    }
}
