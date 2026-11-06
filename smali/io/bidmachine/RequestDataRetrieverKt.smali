###### Class io.bidmachine.RequestDataRetrieverKt (io.bidmachine.RequestDataRetrieverKt)
.class public final Lio/bidmachine/RequestDataRetrieverKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final fill(Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;Lio/bidmachine/internal/u;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maskedSignalsBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs;->newBuilder()Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object v0

    .line 2
    const-string v1, "regsBuilder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p2, p1}, Lio/bidmachine/internal/B;->a(Lio/bidmachine/protobuf/sdk/Regs$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/u;)V

    .line 3
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->build()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object p1

    invoke-static {p1}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    return-void
.end method
