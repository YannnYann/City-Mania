package io.bidmachine;

import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.adcom.Context;
import io.bidmachine.internal.C4236u;
import io.bidmachine.protobuf.sdk.MaskedSignals;
import io.bidmachine.protobuf.sdk.Regs;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class RequestDataRetrieverKt {
    public static final void fill(Context.Regs.Builder builder, C4236u privacyContext, MaskedSignals.Builder maskedSignalsBuilder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(privacyContext, "privacyContext");
        Intrinsics.checkNotNullParameter(maskedSignalsBuilder, "maskedSignalsBuilder");
        Regs.Builder regsBuilder = Regs.newBuilder();
        Intrinsics.checkNotNullExpressionValue(regsBuilder, "regsBuilder");
        io.bidmachine.internal.B.a(regsBuilder, maskedSignalsBuilder, privacyContext);
        builder.addExtProto(Any.pack(regsBuilder.build()));
    }
}
