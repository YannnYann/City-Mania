package com.unity3d.ironsourceads.internal.services;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.ironsource.C3813r4;
import com.ironsource.C3836s9;
import com.ironsource.C5;
import com.ironsource.D5;
import com.ironsource.EnumC3874u9;
import com.ironsource.InterfaceC3608g;
import com.ironsource.InterfaceC3626h;
import com.ironsource.Pb;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.sdk.controller.ControllerActivity;
import com.ironsource.sdk.controller.k;
import com.unity3d.ironsourceads.internal.services.InlineStoreActivity;
import com.unity3d.ironsourceads.internal.services.a;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements com.unity3d.ironsourceads.internal.services.a {
    private final InterfaceC3608g a;
    private final InterfaceC3626h b;

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[EnumC3874u9.values().length];
            try {
                iArr[EnumC3874u9.d.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EnumC3874u9.c.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public b(InterfaceC3608g actionIntentFactory, InterfaceC3626h activityIntentFactory) {
        Intrinsics.checkNotNullParameter(actionIntentFactory, "actionIntentFactory");
        Intrinsics.checkNotNullParameter(activityIntentFactory, "activityIntentFactory");
        this.a = actionIntentFactory;
        this.b = activityIntentFactory;
    }

    private final a.AbstractC1069a b(Activity activity, Intent intent) {
        activity.startActivityForResult(intent, 794006778);
        a(this, D5.Y6, EnumC3874u9.d, null, 4, null);
        return a.AbstractC1069a.b.a;
    }

    @Override // com.unity3d.ironsourceads.internal.services.a
    public a.AbstractC1069a a(Context context, C3836s9 request) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(request, "request");
        try {
            try {
                a(this, D5.X6, request.g(), null, 4, null);
                if (TextUtils.isEmpty(request.h())) {
                    a(D5.Z6, request.g(), MapsKt__MapsKt.mutableMapOf(TuplesKt.to("reason", "storeUrl is empty")));
                    return new a.AbstractC1069a.C1070a("storeUrl is empty");
                }
                if (!(context instanceof Activity)) {
                    a(D5.Z6, request.g(), MapsKt__MapsKt.mutableMapOf(TuplesKt.to("reason", "context is not an Activity")));
                    return new a.AbstractC1069a.C1070a("context is not an Activity");
                }
                Intent intentA = a(request);
                if (!a(context, intentA)) {
                    a(D5.Z6, request.g(), MapsKt__MapsKt.mutableMapOf(TuplesKt.to("reason", "Failed to resolve for packageManager")));
                    return new a.AbstractC1069a.C1070a("Failed to resolve for packageManager");
                }
                int i = a.a[request.g().ordinal()];
                if (i == 1) {
                    return b((Activity) context, intentA);
                }
                if (i == 2) {
                    return a((Activity) context, intentA);
                }
                throw new NoWhenBranchMatchedException();
            } catch (Exception e) {
                e = e;
                Exception exc = e;
                C3813r4.d().a(exc);
                String str = "Failed to open inline store: " + exc.getMessage();
                IronLog.INTERNAL.error(exc.toString());
                a(D5.Z6, request.g(), MapsKt__MapsKt.mutableMapOf(TuplesKt.to("reason", str)));
                return new a.AbstractC1069a.C1070a(str);
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public b() {
        this(new k.a(), new k.b());
    }

    private final Intent a(C3836s9 c3836s9) throws JSONException {
        Intent intentA = this.a.a();
        intentA.setPackage(c3836s9.f());
        intentA.setData(Uri.parse(c3836s9.h()));
        JSONObject jSONObjectE = c3836s9.e();
        if (jSONObjectE != null) {
            Iterator<String> itKeys = jSONObjectE.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object obj = jSONObjectE.get(next);
                if (obj instanceof String) {
                    intentA.putExtra(next, (String) obj);
                } else if (obj instanceof Boolean) {
                    intentA.putExtra(next, ((Boolean) obj).booleanValue());
                } else if (obj instanceof Integer) {
                    intentA.putExtra(next, ((Number) obj).intValue());
                } else if (obj instanceof Long) {
                    intentA.putExtra(next, ((Number) obj).longValue());
                } else if (obj instanceof Float) {
                    intentA.putExtra(next, ((Number) obj).floatValue());
                } else if (obj instanceof Double) {
                    intentA.putExtra(next, ((Number) obj).doubleValue());
                } else {
                    intentA.putExtra(next, obj.toString());
                }
            }
        }
        return intentA;
    }

    @SuppressLint({"QueryPermissionsNeeded"})
    private final boolean a(Context context, Intent intent) {
        return intent.resolveActivity(context.getPackageManager()) != null;
    }

    private final a.AbstractC1069a a(Activity activity, Intent intent) {
        activity.startActivity(new InlineStoreActivity.b(this.b).a(intent).a(activity));
        a(this, D5.a7, EnumC3874u9.c, null, 4, null);
        return a.AbstractC1069a.b.a;
    }

    @Override // com.unity3d.ironsourceads.internal.services.a
    public a.AbstractC1069a a(Context context, EnumC3874u9 strategy) {
        Intent intent;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        try {
            a(this, D5.d7, strategy, null, 4, null);
            if (!(context instanceof Activity)) {
                a(D5.f7, strategy, MapsKt__MapsKt.mutableMapOf(TuplesKt.to("reason", "context is not an Activity")));
                return new a.AbstractC1069a.C1070a("context is not an Activity");
            }
            int i = a.a[strategy.ordinal()];
            if (i == 1) {
                intent = new Intent(context, (Class<?>) ControllerActivity.class);
            } else if (i == 2) {
                intent = new Intent(context, (Class<?>) InlineStoreActivity.class);
            } else {
                throw new NoWhenBranchMatchedException();
            }
            intent.addFlags(603979776);
            intent.putExtra("destroy_inline_store", true);
            ((Activity) context).startActivity(intent);
            a(this, D5.e7, strategy, null, 4, null);
            return a.AbstractC1069a.b.a;
        } catch (Exception e) {
            C3813r4.d().a(e);
            String str = "Failed to destroy inline store: " + e.getMessage();
            IronLog.INTERNAL.error(e.toString());
            a(D5.f7, strategy, MapsKt__MapsKt.mutableMapOf(TuplesKt.to("reason", str)));
            return new a.AbstractC1069a.C1070a(str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void a(b bVar, D5 d5, EnumC3874u9 enumC3874u9, Map map, int i, Object obj) {
        if ((i & 4) != 0) {
            map = new LinkedHashMap();
        }
        bVar.a(d5, enumC3874u9, map);
    }

    private final void a(D5 d5, EnumC3874u9 enumC3874u9, Map<String, Object> map) {
        try {
            map.put(IronSourceConstants.EVENTS_EXT1, "strategy:" + enumC3874u9.c());
            Pb.w.d().q().a(new C5(d5, new JSONObject(MapsKt__MapsKt.toMap(map))));
        } catch (Exception e) {
            C3813r4.d().a(e);
        }
    }
}
