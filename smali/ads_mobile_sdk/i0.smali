###### Class ads_mobile_sdk.i0 (ads_mobile_sdk.i0)
.class public final Lads_mobile_sdk/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/h0;

.field public final b:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/h0;Lkotlinx/coroutines/Job;)V
    .registers 4

    .line 1
    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cleanupJob"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/i0;->a:Lads_mobile_sdk/h0;

    iput-object p2, p0, Lads_mobile_sdk/i0;->b:Lkotlinx/coroutines/Job;

    return-void
.end method
