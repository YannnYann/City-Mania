###### Class ads_mobile_sdk.qx (ads_mobile_sdk.qx)
.class public final Lads_mobile_sdk/qx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/j80;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/j80;)V
    .registers 2

    .line 2441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2444
    iput-object p1, p0, Lads_mobile_sdk/qx;->a:Lads_mobile_sdk/j80;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lads_mobile_sdk/k80;
    .registers 3

    .line 2454
    iget-object v0, p0, Lads_mobile_sdk/qx;->a:Lads_mobile_sdk/j80;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/k80;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 2455
    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4918
    iget-object v0, p0, Lads_mobile_sdk/qx;->a:Lads_mobile_sdk/j80;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/j80;->a(Ljava/lang/String;)V

    return-void
.end method
