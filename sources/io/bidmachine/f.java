package io.bidmachine;

import android.content.Context;
import android.text.TextUtils;
import com.explorestack.protobuf.adcom.Context;
import io.bidmachine.protobuf.sdk.App;

/* JADX INFO: loaded from: classes4.dex */
public final class f {
    public void a(Context context, Context.App.Builder builder) {
        builder.setRelease(a(context));
    }

    public void a(android.content.Context context, App.Builder builder) {
        builder.setRelease(a(context));
    }

    public final Context.App.Release a(android.content.Context context) {
        BuildInfo buildInfoObtain = BuildInfo.obtain(context);
        Context.App.Release.Builder builderNewBuilder = Context.App.Release.newBuilder();
        builderNewBuilder.setType(a(buildInfoObtain));
        String sha1Signature = buildInfoObtain.getSha1Signature(context);
        if (!TextUtils.isEmpty(sha1Signature)) {
            builderNewBuilder.setSignatureSHA1(sha1Signature);
        }
        String sha256Signature = buildInfoObtain.getSha256Signature(context);
        if (!TextUtils.isEmpty(sha256Signature)) {
            builderNewBuilder.setSignatureSHA256(sha256Signature);
        }
        return builderNewBuilder.build();
    }

    public final String a(BuildInfo buildInfo) {
        if (buildInfo.isDebuggable()) {
            return "debug";
        }
        return "release";
    }
}
