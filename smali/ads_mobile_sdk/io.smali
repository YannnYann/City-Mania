###### Class ads_mobile_sdk.io (ads_mobile_sdk.io)
.class public final Lads_mobile_sdk/io;
.super Lads_mobile_sdk/ou;
.source "SourceFile"


# instance fields
.field public final l:Landroid/content/Context;

.field public final m:Lads_mobile_sdk/km;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/ex0;Lads_mobile_sdk/km;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/tx;Lads_mobile_sdk/g83;Lads_mobile_sdk/f0;)V
    .registers 15

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appSettings"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object v5, p2

    move-object v3, p4

    move-object v2, p5

    move-object v4, p6

    move-object v6, p7

    .line 35
    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/ou;-><init>(Lads_mobile_sdk/tx;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/g83;Lads_mobile_sdk/ex0;Lads_mobile_sdk/f0;)V

    .line 36
    iput-object p1, v1, Lads_mobile_sdk/io;->l:Landroid/content/Context;

    .line 38
    iput-object p3, v1, Lads_mobile_sdk/io;->m:Lads_mobile_sdk/km;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->p:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 46
    iget-object p1, p0, Lads_mobile_sdk/io;->l:Landroid/content/Context;

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 v0, 0x3

    .line 47
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 48
    iget-object v1, p0, Lads_mobile_sdk/ou;->f:Lads_mobile_sdk/ex0;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    const-string v2, "key"

    const-string v3, "gads:normalized_device_volume:enabled"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v3, v2, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 68
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_36

    .line 69
    invoke-static {p1, v0}, Lads_mobile_sdk/io$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioManager;I)I

    move-result v1

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    .line 73
    :goto_37
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    if-gt v1, v5, :cond_56

    if-gt v5, v0, :cond_56

    if-ne v1, v0, :cond_44

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_51

    :cond_44
    sub-int v2, v5, v1

    int-to-double v2, v2

    sub-int v4, v0, v1

    int-to-double v6, v4

    div-double/2addr v2, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v6

    double-to-int v2, v2

    int-to-double v2, v2

    div-double/2addr v2, v6

    .line 82
    :goto_51
    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_5c

    :cond_56
    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    .line 85
    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v2

    .line 88
    :goto_5c
    new-instance v3, Lkotlin/Pair;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v11, v2

    move-object v6, v3

    goto :goto_6f

    :cond_6c
    const/4 v2, 0x0

    move-object v6, v2

    move-object v11, v6

    .line 93
    :goto_6f
    new-instance v0, Lads_mobile_sdk/q01;

    .line 94
    new-instance v1, Lads_mobile_sdk/ho;

    .line 95
    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    .line 96
    invoke-virtual {p1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    .line 97
    invoke-virtual {p1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v4

    .line 100
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    const/4 v8, 0x2

    .line 101
    invoke-virtual {p1, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    .line 102
    iget-object p1, p0, Lads_mobile_sdk/io;->m:Lads_mobile_sdk/km;

    .line 103
    iget v9, p1, Lads_mobile_sdk/km;->c:F

    .line 104
    iget-boolean v10, p1, Lads_mobile_sdk/km;->d:Z

    .line 105
    invoke-direct/range {v1 .. v11}, Lads_mobile_sdk/ho;-><init>(IZZILkotlin/Pair;IIFZLjava/lang/Double;)V

    .line 106
    invoke-direct {v0, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
