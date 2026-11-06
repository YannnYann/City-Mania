###### Class ads_mobile_sdk.aq2 (ads_mobile_sdk.aq2)
.class public final Lads_mobile_sdk/aq2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/xp2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/xp2;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lads_mobile_sdk/aq2;->a:Lads_mobile_sdk/xp2;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lads_mobile_sdk/yp2;
    .registers 3

    .line 36
    iget-object v0, p0, Lads_mobile_sdk/aq2;->a:Lads_mobile_sdk/xp2;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/yp2;

    return-object v0
.end method
