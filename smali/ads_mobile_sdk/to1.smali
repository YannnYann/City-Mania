###### Class ads_mobile_sdk.to1 (ads_mobile_sdk.to1)
.class public final Lads_mobile_sdk/to1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/ay0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ay0;)V
    .registers 3

    .line 1
    const-string v0, "fullscreenContentGmsgHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lads_mobile_sdk/to1;->a:Lads_mobile_sdk/ay0;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 19
    const-string p1, "transparentBackground"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "1"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 20
    const-string p3, "blurRadius"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_21

    invoke-static {p2}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_21

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_22

    :cond_21
    const/4 p2, 0x0

    .line 21
    :goto_22
    iget-object p3, p0, Lads_mobile_sdk/to1;->a:Lads_mobile_sdk/ay0;

    check-cast p3, Lads_mobile_sdk/yy0;

    invoke-virtual {p3, p2, p1}, Lads_mobile_sdk/yy0;->a(IZ)V

    .line 22
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->o:Lads_mobile_sdk/u11;

    return-object v0
.end method
