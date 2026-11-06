###### Class ads_mobile_sdk.rn1 (ads_mobile_sdk.rn1)
.class public final Lads_mobile_sdk/rn1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/dw2;

.field public final b:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lads_mobile_sdk/rn1;->a:Lads_mobile_sdk/dw2;

    .line 41
    iput-object p2, p0, Lads_mobile_sdk/rn1;->b:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 6

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/rn1;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    iget-object v1, p0, Lads_mobile_sdk/rn1;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    .line 3
    const-string v2, "publisherRequestTraceMeta"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "internalRequestTraceMeta"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v2, Lads_mobile_sdk/ks3;

    .line 84
    new-instance v3, Lads_mobile_sdk/n03;

    invoke-direct {v3}, Lads_mobile_sdk/n03;-><init>()V

    invoke-static {v0, v3}, Lkotlin/jvm/optionals/OptionalsKt;->getOrDefault(Ljava/util/Optional;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/n03;

    .line 85
    new-instance v3, Lads_mobile_sdk/tn1;

    invoke-direct {v3}, Lads_mobile_sdk/tn1;-><init>()V

    invoke-static {v1, v3}, Lkotlin/jvm/optionals/OptionalsKt;->getOrDefault(Ljava/util/Optional;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/tn1;

    .line 86
    new-instance v3, Lads_mobile_sdk/m33;

    invoke-direct {v3}, Lads_mobile_sdk/m33;-><init>()V

    .line 87
    new-instance v4, Lads_mobile_sdk/zb;

    invoke-direct {v4}, Lads_mobile_sdk/zb;-><init>()V

    .line 88
    invoke-direct {v2, v0, v1, v3, v4}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    return-object v2
.end method
