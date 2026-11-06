package io.bidmachine.internal;

import android.content.Context;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
import com.iab.omid.library.appodeal.Omid;
import com.iab.omid.library.appodeal.adsession.Partner;
import io.bidmachine.BuildConfig;
import io.bidmachine.ExtraParamsManager;
import io.bidmachine.ProtoExtConstants;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.protobuf.sdk.SDK;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: io.bidmachine.internal.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC4234s {
    public static final AtomicBoolean a = new AtomicBoolean(false);
    public static final AtomicBoolean b = new AtomicBoolean(false);
    public static Partner c;

    /* JADX INFO: renamed from: io.bidmachine.internal.s$a */
    public class a implements Runnable {
        public final /* synthetic */ Context a;

        public a(Context context) {
            this.a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (Omid.isActive()) {
                    return;
                }
                Omid.activate(this.a);
                Omid.updateLastActivity();
                Partner unused = AbstractC4234s.c = Partner.createPartner("Appodeal", BuildConfig.OMSDK_VERSION_NAME);
                AbstractC4234s.b.set(true);
            } catch (Throwable th) {
                Logger.w(th);
            }
        }
    }

    public static Partner b() {
        return c;
    }

    public static boolean c() {
        return b.get();
    }

    public static void a(Context context) {
        if (a.compareAndSet(false, true)) {
            Context applicationContext = context.getApplicationContext();
            if (ExtraParamsManager.get().getInternalDataRetriever(applicationContext).getBoolean("omsdk_disabled", false)) {
                return;
            }
            Utils.onUiThread(new a(applicationContext));
        }
    }

    public static void a(Struct.Builder builder) {
        builder.putFields(ProtoExtConstants.Source.OMID_PN, Value.newBuilder().setStringValue("Appodeal").build());
        builder.putFields(ProtoExtConstants.Source.OMID_PV, Value.newBuilder().setStringValue(BuildConfig.OMSDK_VERSION_NAME).build());
    }

    public static void a(SDK.Builder builder) {
        builder.setOmidpn("Appodeal");
        builder.setOmidpv(BuildConfig.OMSDK_VERSION_NAME);
    }
}
