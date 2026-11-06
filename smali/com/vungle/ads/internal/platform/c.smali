###### Class com.vungle.ads.internal.platform.c (com.vungle.ads.internal.platform.c)
.class public final Lcom/vungle/ads/internal/platform/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/platform/f;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/vungle/ads/internal/executor/j;

.field public final c:Landroid/os/PowerManager;

.field public final d:Landroid/media/AudioManager;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Integer;

.field public h:Lcom/vungle/ads/internal/model/j0;

.field public i:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/vungle/ads/internal/executor/j;)V
    .registers 6

    .line 11
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/PowerManager;

    .line 13
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/media/AudioManager;

    .line 14
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/vungle/ads/internal/platform/c;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/executor/j;Landroid/os/PowerManager;Landroid/media/AudioManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vungle/ads/internal/executor/j;Landroid/os/PowerManager;Landroid/media/AudioManager;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uaExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "powerManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/platform/c;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/vungle/ads/internal/platform/c;->b:Lcom/vungle/ads/internal/executor/j;

    .line 4
    iput-object p3, p0, Lcom/vungle/ads/internal/platform/c;->c:Landroid/os/PowerManager;

    .line 6
    iput-object p4, p0, Lcom/vungle/ads/internal/platform/c;->d:Landroid/media/AudioManager;

    .line 10
    invoke-virtual {p0}, Lcom/vungle/ads/internal/platform/c;->p()V

    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/platform/c;Landroidx/core/util/Consumer;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$consumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/vungle/ads/internal/platform/c;->a:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/vungle/ads/internal/platform/g;->a(Landroid/content/Context;Landroidx/core/util/Consumer;)V

    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/platform/c;Lcom/google/android/gms/appset/AppSetIdInfo;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_17

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/ads/internal/platform/c;->f:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getScope()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/platform/c;->g:Ljava/lang/Integer;

    :cond_17
    return-void
.end method


# virtual methods
.method public final a()Lcom/vungle/ads/internal/model/j0;
    .registers 7

    .line 3
    const-string v0, "Play services Not available: "

    iget-object v1, p0, Lcom/vungle/ads/internal/platform/c;->h:Lcom/vungle/ads/internal/model/j0;

    if-eqz v1, :cond_14

    .line 4
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/j0;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_13

    goto :goto_14

    :cond_13
    return-object v1

    .line 10
    :cond_14
    :goto_14
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Amazon"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "advertising_id"

    const-string v4, "AndroidPlatform"

    if-eqz v1, :cond_58

    .line 11
    new-instance v0, Lcom/vungle/ads/internal/model/j0;

    invoke-direct {v0}, Lcom/vungle/ads/internal/model/j0;-><init>()V

    .line 13
    :try_start_28
    iget-object v1, p0, Lcom/vungle/ads/internal/platform/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 14
    const-string v5, "limit_ad_tracking"

    invoke-static {v1, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_37

    goto :goto_38

    :cond_37
    const/4 v3, 0x0

    .line 15
    :goto_38
    iput-boolean v3, v0, Lcom/vungle/ads/internal/model/j0;->b:Z

    .line 16
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    iput-object v1, v0, Lcom/vungle/ads/internal/model/j0;->a:Ljava/lang/String;
    :try_end_40
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_28 .. :try_end_40} :catch_44
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_40} :catch_42

    goto/16 :goto_cb

    :catch_42
    move-exception v1

    goto :goto_46

    :catch_44
    move-exception v1

    goto :goto_4f

    .line 18
    :goto_46
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v2, "Error getting Amazon advertising info"

    invoke-static {v4, v2, v1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_cb

    .line 19
    :goto_4f
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v2, "Error getting Amazon advertising info: Setting not found."

    invoke-static {v4, v2, v1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_cb

    .line 20
    :cond_58
    new-instance v1, Lcom/vungle/ads/internal/model/j0;

    invoke-direct {v1}, Lcom/vungle/ads/internal/model/j0;-><init>()V

    .line 22
    :try_start_5d
    iget-object v3, p0, Lcom/vungle/ads/internal/platform/c;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v3

    const-string v5, "getAdvertisingIdInfo(context)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/vungle/ads/internal/model/j0;->a(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/vungle/ads/internal/model/j0;->a(Z)V
    :try_end_76
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5d .. :try_end_76} :catch_7b
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_5d .. :try_end_76} :catch_79
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_76} :catch_77

    goto :goto_ca

    :catch_77
    move-exception v0

    goto :goto_7d

    :catch_79
    move-exception v2

    goto :goto_94

    :catch_7b
    move-exception v3

    goto :goto_a9

    .line 33
    :goto_7d
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 34
    const-string v2, "Error getting Google advertising info: "

    invoke-static {v2}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ca

    .line 36
    :goto_94
    sget-boolean v3, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 37
    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 38
    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ca

    .line 39
    :goto_a9
    sget-boolean v5, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 40
    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 41
    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/vungle/ads/internal/platform/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 43
    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vungle/ads/internal/model/j0;->a(Ljava/lang/String;)V

    :goto_ca
    move-object v0, v1

    .line 44
    :goto_cb
    iput-object v0, p0, Lcom/vungle/ads/internal/platform/c;->h:Lcom/vungle/ads/internal/model/j0;

    return-object v0
.end method

.method public final a(Lcom/vungle/ads/internal/network/w;)V
    .registers 4

    const-string v0, "consumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/platform/c;->b:Lcom/vungle/ads/internal/executor/j;

    new-instance v1, Lcom/vungle/ads/internal/platform/c$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/vungle/ads/internal/platform/c$$ExternalSyntheticLambda1;-><init>(Lcom/vungle/ads/internal/platform/c;Landroidx/core/util/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/executor/j;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/platform/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/platform/c;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public final d()J
    .registers 3

    .line 1
    sget-wide v0, Landroid/os/Build;->TIME:J

    return-wide v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/platform/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/ads/internal/platform/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/platform/c;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 4
    :cond_5
    :try_start_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_7} :catch_2e

    const/16 v1, 0x21

    const-string v2, "com.android.vending"

    if-lt v0, v1, :cond_1e

    .line 5
    :try_start_d
    iget-object v0, p0, Lcom/vungle/ads/internal/platform/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-wide/16 v3, 0x0

    .line 7
    invoke-static {v3, v4}, Lads_mobile_sdk/o21$$ExternalSyntheticApiModelOutline4;->m(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    .line 8
    invoke-static {v0, v2, v1}, Lads_mobile_sdk/o21$$ExternalSyntheticApiModelOutline5;->m(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    goto :goto_29

    .line 13
    :cond_1e
    iget-object v0, p0, Lcom/vungle/ads/internal/platform/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 15
    :goto_29
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/vungle/ads/internal/platform/c;->i:Ljava/lang/String;
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_2d} :catch_2e

    return-object v0

    :catch_2e
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()J
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final h()J
    .registers 6

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_1b

    const/16 v1, 0x21

    const-string v2, "android"

    if-lt v0, v1, :cond_1d

    .line 3
    :try_start_a
    iget-object v0, p0, Lcom/vungle/ads/internal/platform/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-wide/16 v3, 0x0

    .line 5
    invoke-static {v3, v4}, Lads_mobile_sdk/o21$$ExternalSyntheticApiModelOutline4;->m(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    .line 6
    invoke-static {v0, v2, v1}, Lads_mobile_sdk/o21$$ExternalSyntheticApiModelOutline5;->m(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    goto :goto_28

    :catchall_1b
    move-exception v0

    goto :goto_33

    .line 11
    :cond_1d
    iget-object v0, p0, Lcom/vungle/ads/internal/platform/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 13
    :goto_28
    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 14
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_32
    .catchall {:try_start_a .. :try_end_32} :catchall_1b

    goto :goto_3d

    :goto_33
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    :goto_3d
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_44

    goto :goto_68

    .line 25
    :cond_44
    instance-of v0, v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v0, :cond_62

    .line 26
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 27
    const-string v0, "Error getting OS installation time: "

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 203
    check-cast v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidPlatform"

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    const-wide/16 v0, -0x1

    .line 205
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 206
    :goto_68
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i()J
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/platform/c;->a:Landroid/content/Context;

    .line 2
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/vungle/ads/internal/platform/b;

    invoke-direct {v2, v0}, Lcom/vungle/ads/internal/platform/b;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/vungle/ads/internal/platform/c;->e:Ljava/lang/Long;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_16
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/persistence/FilePreferences;

    .line 5
    const-string v2, "sit"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_29

    goto :goto_3a

    .line 9
    :cond_29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 10
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/persistence/FilePreferences;

    .line 11
    invoke-virtual {v0, v2, v5, v6}, Lcom/vungle/ads/internal/persistence/FilePreferences;->b(Ljava/lang/String;J)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/persistence/FilePreferences;->b()V

    .line 15
    :goto_3a
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/ads/internal/platform/c;->e:Ljava/lang/Long;

    return-wide v5
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()F
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lcom/vungle/ads/internal/platform/c;->d:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    int-to-float v1, v1

    .line 2
    iget-object v3, p0, Lcom/vungle/ads/internal/platform/c;->d:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 3
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_2b

    if-eqz v1, :cond_1e

    goto :goto_2b

    :cond_1e
    cmpg-float v1, v2, v0

    if-gez v1, :cond_23

    goto :goto_2b

    :cond_23
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, v2, v0

    if-lez v1, :cond_2a

    return v0

    :cond_2a
    return v2

    :catch_2b
    :cond_2b
    :goto_2b
    return v0
.end method

.method public final l()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/platform/c;->c:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    return v0
.end method

.method public final m()Z
    .registers 4

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    .line 3
    sget-boolean v1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v1, "AndroidPlatform"

    const-string v2, "Acquiring external storage state failed"

    invoke-static {v1, v2, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final n()Z
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/vungle/ads/internal/platform/c;->d:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/platform/c;->d:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_12

    if-ne v0, v1, :cond_12

    :cond_11
    return v1

    :catch_12
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/vungle/ads/internal/platform/c;->d:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_c

    if-lez v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    return v0

    :catch_c
    :goto_c
    const/4 v0, 0x1

    return v0
.end method

.method public final p()V
    .registers 4

    .line 1
    const-string v0, "AndroidPlatform"

    iget-object v1, p0, Lcom/vungle/ads/internal/platform/c;->f:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 3
    :cond_e
    :goto_e
    :try_start_e
    iget-object v1, p0, Lcom/vungle/ads/internal/platform/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/appset/AppSet;->getClient(Landroid/content/Context;)Lcom/google/android/gms/appset/AppSetIdClient;

    move-result-object v1

    const-string v2, "getClient(context)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/appset/AppSetIdClient;->getAppSetIdInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    const-string v2, "client.appSetIdInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v2, Lcom/vungle/ads/internal/platform/c$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/vungle/ads/internal/platform/c$$ExternalSyntheticLambda0;-><init>(Lcom/vungle/ads/internal/platform/c;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_2a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_e .. :try_end_2a} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2a} :catch_2b

    return-void

    :catch_2b
    move-exception v1

    goto :goto_2f

    :catch_2d
    move-exception v1

    goto :goto_46

    .line 16
    :goto_2f
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 17
    const-string v2, "Error getting AppSetID: "

    invoke-static {v2}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 264
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    .line 265
    :goto_46
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 266
    const-string v2, "Required libs to get AppSetID Not available: "

    invoke-static {v2}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 511
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5c
    return-void
.end method

###### Class com.vungle.ads.internal.platform.c$$ExternalSyntheticLambda0 (com.vungle.ads.internal.platform.c$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/vungle/ads/internal/platform/c$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/platform/c;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/platform/c;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/platform/c$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/platform/c;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/platform/c$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/platform/c;

    check-cast p1, Lcom/google/android/gms/appset/AppSetIdInfo;

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/platform/c;->a(Lcom/vungle/ads/internal/platform/c;Lcom/google/android/gms/appset/AppSetIdInfo;)V

    return-void
.end method

###### Class com.vungle.ads.internal.platform.c$$ExternalSyntheticLambda1 (com.vungle.ads.internal.platform.c$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/vungle/ads/internal/platform/c$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/platform/c;

.field public final synthetic f$1:Landroidx/core/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/platform/c;Landroidx/core/util/Consumer;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/platform/c$$ExternalSyntheticLambda1;->f$0:Lcom/vungle/ads/internal/platform/c;

    iput-object p2, p0, Lcom/vungle/ads/internal/platform/c$$ExternalSyntheticLambda1;->f$1:Landroidx/core/util/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/platform/c$$ExternalSyntheticLambda1;->f$0:Lcom/vungle/ads/internal/platform/c;

    iget-object v1, p0, Lcom/vungle/ads/internal/platform/c$$ExternalSyntheticLambda1;->f$1:Landroidx/core/util/Consumer;

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/platform/c;->a(Lcom/vungle/ads/internal/platform/c;Landroidx/core/util/Consumer;)V

    return-void
.end method
