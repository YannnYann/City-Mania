###### Class ads_mobile_sdk.ob3 (ads_mobile_sdk.ob3)
.class public final Lads_mobile_sdk/ob3;
.super Lads_mobile_sdk/pl3;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Lads_mobile_sdk/ex0;

.field public final f:Landroid/content/Context;

.field public final g:Lads_mobile_sdk/o21;

.field public final h:Ljava/lang/String;

.field public final i:Lads_mobile_sdk/ja1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lads_mobile_sdk/ex0;Landroid/content/Context;Lads_mobile_sdk/o21;Ljava/lang/String;Lads_mobile_sdk/ja1;)V
    .registers 8

    .line 1
    const-string v0, "afmaVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaUtil"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaVersion"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationConfigWrapper"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lads_mobile_sdk/s11;->u:Lads_mobile_sdk/s11;

    invoke-direct {p0, v0}, Lads_mobile_sdk/pl3;-><init>(Lads_mobile_sdk/s11;)V

    .line 31
    iput-object p1, p0, Lads_mobile_sdk/ob3;->d:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lads_mobile_sdk/ob3;->e:Lads_mobile_sdk/ex0;

    .line 33
    iput-object p3, p0, Lads_mobile_sdk/ob3;->f:Landroid/content/Context;

    .line 34
    iput-object p4, p0, Lads_mobile_sdk/ob3;->g:Lads_mobile_sdk/o21;

    .line 35
    iput-object p5, p0, Lads_mobile_sdk/ob3;->h:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lads_mobile_sdk/ob3;->i:Lads_mobile_sdk/ja1;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->T:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    .line 33
    iget-object p1, p0, Lads_mobile_sdk/ob3;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move v4, p1

    goto :goto_e

    :cond_d
    move v4, v0

    .line 34
    :goto_e
    new-instance p1, Lads_mobile_sdk/q01;

    .line 35
    new-instance v1, Lads_mobile_sdk/nb3;

    .line 36
    iget-object v2, p0, Lads_mobile_sdk/ob3;->d:Ljava/lang/String;

    .line 37
    iget-object v3, p0, Lads_mobile_sdk/ob3;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    const-string v5, "key"

    const-string v6, "gads:sdk_core_constants:caps"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "defaultValue"

    const-string v7, ""

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    sget-object v5, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v3, v6, v7, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 82
    iget-object v5, p0, Lads_mobile_sdk/ob3;->h:Ljava/lang/String;

    .line 83
    iget-object v6, p0, Lads_mobile_sdk/ob3;->g:Lads_mobile_sdk/o21;

    invoke-virtual {v6}, Lads_mobile_sdk/o21;->c()Z

    move-result v6

    .line 84
    iget-object v7, p0, Lads_mobile_sdk/ob3;->g:Lads_mobile_sdk/o21;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_56

    const/16 v9, 0x3e8

    if-eq v7, v9, :cond_56

    const/16 v9, 0x3e9

    if-eq v7, v9, :cond_56

    const/16 v9, 0x3ea

    if-eq v7, v9, :cond_56

    const/16 v9, 0x403

    if-ne v7, v9, :cond_54

    goto :goto_56

    :cond_54
    move v7, v0

    goto :goto_57

    :cond_56
    :goto_56
    move v7, v8

    .line 86
    :goto_57
    iget-object v9, p0, Lads_mobile_sdk/ob3;->i:Lads_mobile_sdk/ja1;

    invoke-virtual {v9}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v9

    if-eqz v9, :cond_64

    invoke-virtual {v9}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getAdapterInitializationConfig()Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    move-result-object v9

    goto :goto_65

    :cond_64
    const/4 v9, 0x0

    :goto_65
    if-eqz v9, :cond_68

    goto :goto_69

    :cond_68
    move v8, v0

    .line 87
    :goto_69
    invoke-direct/range {v1 .. v8}, Lads_mobile_sdk/nb3;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZZ)V

    .line 88
    invoke-direct {p1, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
