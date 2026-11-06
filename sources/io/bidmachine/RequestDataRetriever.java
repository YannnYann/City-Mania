package io.bidmachine;

import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.adcom.ConnectionType;
import com.explorestack.protobuf.adcom.Context;
import io.bidmachine.internal.C4236u;
import io.bidmachine.internal.L;
import io.bidmachine.internal.M;
import io.bidmachine.protobuf.sdk.App;
import io.bidmachine.protobuf.sdk.MaskedSignals;
import io.bidmachine.utils.ProtoUtils;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class RequestDataRetriever {
    public static final RequestDataRetriever INSTANCE = new RequestDataRetriever();

    private RequestDataRetriever() {
    }

    public static final Context createContext(android.content.Context context, k bidMachineImpl, C4236u privacyContext, TargetingParams targetingParams, MaskedSignals.Builder maskedSignalsBuilder, ConnectionType connectionType, AdsType adsType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(bidMachineImpl, "bidMachineImpl");
        Intrinsics.checkNotNullParameter(privacyContext, "privacyContext");
        Intrinsics.checkNotNullParameter(targetingParams, "targetingParams");
        Intrinsics.checkNotNullParameter(maskedSignalsBuilder, "maskedSignalsBuilder");
        io.bidmachine.internal.w wVarD = privacyContext.d();
        io.bidmachine.internal.v vVarC = privacyContext.c();
        Context.Builder builderNewBuilder = Context.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder()");
        Context.App.Builder builderNewBuilder2 = Context.App.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder2, "newBuilder()");
        Publisher publisherL = bidMachineImpl.l();
        if (publisherL != null) {
            publisherL.build(builderNewBuilder2);
        }
        bidMachineImpl.e().build(context, builderNewBuilder2);
        M.a(builderNewBuilder2, targetingParams);
        App.Builder builderNewBuilder3 = App.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder3, "newBuilder()");
        M.a(builderNewBuilder3, targetingParams);
        bidMachineImpl.h().fill(builderNewBuilder3);
        long jH = bidMachineImpl.h(context);
        if (jH > 0) {
            builderNewBuilder3.setFirstLaunchTime(ProtoUtils.msToTimestamp(jH));
        }
        long jC = bidMachineImpl.c(context);
        if (jC > 0) {
            builderNewBuilder3.setSdkInstallTime(ProtoUtils.msToTimestamp(jC));
        }
        builderNewBuilder2.addExtProto(Any.pack(builderNewBuilder3.build()));
        builderNewBuilder.setApp(builderNewBuilder2);
        BlockedParams blockedParams$bidmachine_android_sdk_ba_3_8_0 = targetingParams.getBlockedParams$bidmachine_android_sdk_ba_3_8_0();
        if (blockedParams$bidmachine_android_sdk_ba_3_8_0 != null) {
            Context.Restrictions.Builder builderNewBuilder4 = Context.Restrictions.newBuilder();
            blockedParams$bidmachine_android_sdk_ba_3_8_0.build(builderNewBuilder4);
            builderNewBuilder.setRestrictions(builderNewBuilder4);
        }
        Context.User.Builder builderNewBuilder5 = Context.User.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder5, "newBuilder()");
        L.a(targetingParams, builderNewBuilder5, maskedSignalsBuilder, wVarD, vVarC);
        bidMachineImpl.o().build(context, builderNewBuilder5, privacyContext.h(), adsType);
        builderNewBuilder.setUser(builderNewBuilder5);
        bidMachineImpl.f().build(context, builderNewBuilder, wVarD, maskedSignalsBuilder, vVarC, connectionType);
        Context.Regs.Builder builderNewBuilder6 = Context.Regs.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder6, "newBuilder()");
        RequestDataRetrieverKt.fill(builderNewBuilder6, privacyContext, maskedSignalsBuilder);
        builderNewBuilder.setRegs(builderNewBuilder6);
        Context contextBuild = builderNewBuilder.build();
        Intrinsics.checkNotNullExpressionValue(contextBuild, "contextBuilder.build()");
        return contextBuild;
    }
}
