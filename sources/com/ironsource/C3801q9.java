package com.ironsource;

import android.content.Context;
import com.ironsource.Ue;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.q9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3801q9 {
    public static final a a = new a(null);

    /* JADX INFO: renamed from: com.ironsource.q9$a */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final JSONObject a(Context context) {
            try {
                return new JSONObject(IronSourceUtils.e(context));
            } catch (JSONException unused) {
                return new JSONObject();
            }
        }

        public final boolean b(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            D3 d3D = d(context);
            return d3D.d().length() > 0 && d3D.e().length() > 0;
        }

        public final Ue c(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            D3 d3D = d(context);
            if (d3D.d().length() <= 0 || d3D.e().length() <= 0) {
                d3D = null;
            }
            if (d3D == null) {
                return null;
            }
            Ue ue = new Ue(context, d3D.d(), d3D.f(), d3D.e());
            ue.a(Ue.a.CACHE);
            return ue;
        }

        public final D3 d(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            JSONObject jSONObjectA = a(context);
            String strOptString = jSONObjectA.optString("appKey");
            String strOptString2 = jSONObjectA.optString("userId");
            String strOptString3 = jSONObjectA.optString(Ue.n);
            Intrinsics.checkNotNull(strOptString);
            Intrinsics.checkNotNull(strOptString2);
            Intrinsics.checkNotNull(strOptString3);
            return new D3(strOptString, strOptString2, strOptString3);
        }

        private a() {
        }
    }

    public static final boolean a(Context context) {
        return a.b(context);
    }

    public static final Ue b(Context context) {
        return a.c(context);
    }

    public static final D3 c(Context context) {
        return a.d(context);
    }
}
