###### Class ads_mobile_sdk.gq3 (ads_mobile_sdk.gq3)
.class public final Lads_mobile_sdk/gq3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/st;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/st;)V
    .registers 2

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    iput-object p1, p0, Lads_mobile_sdk/gq3;->a:Lads_mobile_sdk/st;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lads_mobile_sdk/tt;
    .registers 3

    .line 598
    iget-object v0, p0, Lads_mobile_sdk/gq3;->a:Lads_mobile_sdk/st;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/tt;

    return-object v0
.end method

.method public final a(Lads_mobile_sdk/jt;)V
    .registers 3

    .line 1231
    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1838
    iget-object v0, p0, Lads_mobile_sdk/gq3;->a:Lads_mobile_sdk/st;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/st;->a(Lads_mobile_sdk/jt;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 599
    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1230
    iget-object v0, p0, Lads_mobile_sdk/gq3;->a:Lads_mobile_sdk/st;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/st;->a(Ljava/lang/String;)V

    return-void
.end method
