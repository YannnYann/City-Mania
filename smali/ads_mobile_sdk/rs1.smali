###### Class ads_mobile_sdk.rs1 (ads_mobile_sdk.rs1)
.class public final Lads_mobile_sdk/rs1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/qs1;


# instance fields
.field public final a:Lads_mobile_sdk/ex0;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile c:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ex0;Landroid/content/Context;Lads_mobile_sdk/cn0;)V
    .registers 5

    .line 1
    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "deviceTierManager"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lads_mobile_sdk/rs1;->a:Lads_mobile_sdk/ex0;

    .line 27
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lads_mobile_sdk/rs1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
