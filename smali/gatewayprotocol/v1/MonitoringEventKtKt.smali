###### Class gatewayprotocol.v1.MonitoringEventKtKt (gatewayprotocol.v1.MonitoringEventKtKt)
.class public final Lgatewayprotocol/v1/MonitoringEventKtKt;
.super Ljava/lang/Object;
.source "MonitoringEventKt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMonitoringEventKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MonitoringEventKt.kt\ngatewayprotocol/v1/MonitoringEventKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,156:1\n1#2:157\n*E\n"
.end annotation


# direct methods
.method public static final -initializemonitoringEvent(Lkotlin/jvm/functions/Function1;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lgatewayprotocol/v1/MonitoringEventKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->Companion:Lgatewayprotocol/v1/MonitoringEventKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->newBuilder()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    move-result-object v1

    const-string v2, "newBuilder(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/MonitoringEventKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;)Lgatewayprotocol/v1/MonitoringEventKt$Dsl;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_build()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    move-result-object p0

    return-object p0
.end method

.method public static final copy(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;Lkotlin/jvm/functions/Function1;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lgatewayprotocol/v1/MonitoringEventKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    sget-object v0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->Companion:Lgatewayprotocol/v1/MonitoringEventKt$Dsl$Companion;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    const-string v1, "toBuilder(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/MonitoringEventKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;)Lgatewayprotocol/v1/MonitoringEventKt$Dsl;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_build()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    move-result-object p0

    return-object p0
.end method
