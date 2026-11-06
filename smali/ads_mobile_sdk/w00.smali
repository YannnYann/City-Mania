###### Class ads_mobile_sdk.w00 (ads_mobile_sdk.w00)
.class public final Lads_mobile_sdk/w00;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/t00;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/t00;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lads_mobile_sdk/w00;->a:Lads_mobile_sdk/t00;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lads_mobile_sdk/u00;
    .registers 3

    .line 36
    iget-object v0, p0, Lads_mobile_sdk/w00;->a:Lads_mobile_sdk/t00;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/u00;

    return-object v0
.end method

.method public final synthetic b()Lads_mobile_sdk/lo0;
    .registers 4

    .line 1
    new-instance v0, Lads_mobile_sdk/lo0;

    .line 2
    iget-object v1, p0, Lads_mobile_sdk/w00;->a:Lads_mobile_sdk/t00;

    invoke-virtual {v1}, Lads_mobile_sdk/t00;->h()Lads_mobile_sdk/yh1$d;

    move-result-object v1

    const-string v2, "getAllowedApisList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {v0, v1}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    return-object v0
.end method
