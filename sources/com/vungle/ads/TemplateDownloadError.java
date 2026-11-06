package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class TemplateDownloadError extends VungleError {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TemplateDownloadError(String msg) {
        super(Sdk.SDKError.Reason.TEMPLATE_DOWNLOAD_ERROR, msg, null);
        Intrinsics.checkNotNullParameter(msg, "msg");
    }
}
