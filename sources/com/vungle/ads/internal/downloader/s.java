package com.vungle.ads.internal.downloader;

import com.vungle.ads.internal.AnalyticsClient;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.v;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class s extends Lambda implements Function1 {
    public final /* synthetic */ String a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(String str) {
        super(1);
        this.a = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object objM2768unboximpl = ((Result) obj).m2768unboximpl();
        String str = this.a;
        if (Result.m2766isSuccessimpl(objM2768unboximpl)) {
            AnalyticsClient.a(AnalyticsClient.INSTANCE, Sdk.SDKMetric.SDKMetricType.VM_TEMPLATE_PRE_DOWNLOAD_STATUS, 1L, null, str, 4);
            boolean z = v.a;
            com.vungle.ads.internal.util.u.a("TemplateDownloadManager", "Pre-download succeeded: " + str);
        }
        String str2 = this.a;
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2768unboximpl);
        if (thM2763exceptionOrNullimpl != null) {
            AnalyticsClient.a(AnalyticsClient.INSTANCE, Sdk.SDKMetric.SDKMetricType.VM_TEMPLATE_PRE_DOWNLOAD_STATUS, 2L, null, str2, 4);
            boolean z2 = v.a;
            com.vungle.ads.internal.util.u.b("TemplateDownloadManager", "Pre-download failed: " + str2 + ", error: " + thM2763exceptionOrNullimpl.getMessage());
        }
        return Unit.INSTANCE;
    }
}
