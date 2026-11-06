###### Class ads_mobile_sdk.gu (ads_mobile_sdk.gu)
.class public abstract Lads_mobile_sdk/gu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/tx;

.field public final b:J


# direct methods
.method public constructor <init>(Lads_mobile_sdk/tx;J)V
    .registers 5

    .line 1
    const-string v0, "clock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Lads_mobile_sdk/gu;->a:Lads_mobile_sdk/tx;

    .line 263
    iput-wide p2, p0, Lads_mobile_sdk/gu;->b:J

    return-void
.end method

.method public synthetic constructor <init>(Lads_mobile_sdk/tx;JI)V
    .registers 5

    .line 265
    invoke-direct {p0, p1, p2, p3}, Lads_mobile_sdk/gu;-><init>(Lads_mobile_sdk/tx;J)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 5

    .line 268
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v0, p0, Lads_mobile_sdk/gu;->a:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 270
    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lads_mobile_sdk/gu;->b:J

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v0

    if-ltz v0, :cond_1b

    const/4 v0, 0x1

    return v0

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method
