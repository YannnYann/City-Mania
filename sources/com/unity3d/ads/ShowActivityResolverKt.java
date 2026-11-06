package com.unity3d.ads;

import android.app.Activity;
import android.content.Context;
import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.metadata.MetaData;
import com.unity3d.services.core.properties.ClientProperties;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ShowActivityResolver.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ShowActivityResolverKt {
    public static final Activity resolveEffectiveActivity(Context context, Activity activity, AdObject adObject, SendDiagnosticEvent sendDiagnosticEvent, SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Activity activity2 = context instanceof Activity ? (Activity) context : null;
        if (activity2 != null && !activity2.isDestroyed()) {
            if (activity != activity2) {
                SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_show_activity_mismatch", (Double) null, (Map) null, (Map) null, adObject, (Integer) null, (ByteString) null, 110, (Object) null);
            }
            return activity2;
        }
        if (!sessionRepository.getNativeConfiguration().getFeatureFlags().getUseCurrentActivityForShow()) {
            return null;
        }
        if (activity == null) {
            SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_show_current_activity_null", (Double) null, (Map) null, (Map) null, adObject, (Integer) null, (ByteString) null, 110, (Object) null);
        }
        return activity;
    }

    public static final void commitExtras(Context context, Activity activity, ShowConfiguration showConfiguration) {
        Map<String, String> extras;
        if (context == null) {
            context = activity != null ? activity : ClientProperties.getApplicationContext();
        }
        if (context != null) {
            MetaData metaData = new MetaData(context);
            if (showConfiguration != null && (extras = showConfiguration.getExtras()) != null) {
                for (Map.Entry<String, String> entry : extras.entrySet()) {
                    metaData.set(entry.getKey(), entry.getValue());
                }
            }
            metaData.commit();
        }
    }
}
