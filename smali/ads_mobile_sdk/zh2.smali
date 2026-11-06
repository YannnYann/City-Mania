###### Class ads_mobile_sdk.zh2 (ads_mobile_sdk.zh2)
.class public final Lads_mobile_sdk/zh2;
.super Lads_mobile_sdk/pl3;
.source "SourceFile"


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:I

.field public final f:Lads_mobile_sdk/ja1;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILads_mobile_sdk/ja1;)V
    .registers 5

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationConfigWrapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lads_mobile_sdk/pl3;-><init>()V

    .line 32
    iput-object p1, p0, Lads_mobile_sdk/zh2;->d:Landroid/content/Context;

    .line 33
    iput p2, p0, Lads_mobile_sdk/zh2;->e:I

    .line 34
    iput-object p3, p0, Lads_mobile_sdk/zh2;->f:Lads_mobile_sdk/ja1;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->K:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 36
    new-instance p1, Lads_mobile_sdk/q01;

    .line 37
    new-instance v0, Lads_mobile_sdk/yh2;

    .line 38
    iget-object v1, p0, Lads_mobile_sdk/zh2;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getPackageName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v2, p0, Lads_mobile_sdk/zh2;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lads_mobile_sdk/zh2;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 40
    iget v3, p0, Lads_mobile_sdk/zh2;->e:I

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    .line 41
    iget-object v4, p0, Lads_mobile_sdk/zh2;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lads_mobile_sdk/zh2;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x1e

    .line 42
    :try_start_40
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v6, :cond_5b

    .line 43
    iget-object v7, p0, Lads_mobile_sdk/zh2;->d:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 44
    iget-object v8, p0, Lads_mobile_sdk/zh2;->d:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lads_mobile_sdk/zh2$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v7

    .line 45
    invoke-static {v7}, Lads_mobile_sdk/zh2$$ExternalSyntheticApiModelOutline1;->m(Landroid/content/pm/InstallSourceInfo;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6f

    .line 47
    :cond_5b
    iget-object v7, p0, Lads_mobile_sdk/zh2;->d:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lads_mobile_sdk/zh2;->d:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_6d
    .catchall {:try_start_40 .. :try_end_6d} :catchall_6e

    goto :goto_6f

    :catchall_6e
    move-object v7, v5

    .line 48
    :goto_6f
    :try_start_6f
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v6, :cond_89

    .line 49
    iget-object v6, p0, Lads_mobile_sdk/zh2;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 50
    iget-object v8, p0, Lads_mobile_sdk/zh2;->d:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v8}, Lads_mobile_sdk/zh2$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v6

    .line 51
    invoke-static {v6}, Lads_mobile_sdk/zh2$$ExternalSyntheticApiModelOutline2;->m(Landroid/content/pm/InstallSourceInfo;)Ljava/lang/String;

    move-result-object v5
    :try_end_89
    .catchall {:try_start_6f .. :try_end_89} :catchall_89

    :catchall_89
    :cond_89
    move-object v6, v5

    .line 52
    iget v5, p0, Lads_mobile_sdk/zh2;->e:I

    iget-object v8, p0, Lads_mobile_sdk/zh2;->d:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".android."

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 53
    sget-object v8, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    iget-object v8, p0, Lads_mobile_sdk/zh2;->f:Lads_mobile_sdk/ja1;

    invoke-virtual {v8}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v8

    const-string v9, ""

    if-eqz v8, :cond_b8

    invoke-virtual {v8}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getApplicationId()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_b9

    :cond_b8
    move-object v8, v9

    :cond_b9
    invoke-static {v8}, Lads_mobile_sdk/m21;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 54
    iget-object v10, p0, Lads_mobile_sdk/zh2;->f:Lads_mobile_sdk/ja1;

    invoke-virtual {v10}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v10

    if-eqz v10, :cond_cd

    invoke-virtual {v10}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getApplicationId()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_cc

    goto :goto_cd

    :cond_cc
    move-object v9, v10

    :cond_cd
    :goto_cd
    invoke-static {v9}, Lads_mobile_sdk/m21;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v11, v7

    move-object v7, v5

    move-object v5, v11

    .line 55
    invoke-direct/range {v0 .. v9}, Lads_mobile_sdk/yh2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
