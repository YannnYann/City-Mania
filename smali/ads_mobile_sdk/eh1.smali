###### Class ads_mobile_sdk.eh1 (ads_mobile_sdk.eh1)
.class public final Lads_mobile_sdk/eh1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lads_mobile_sdk/dh1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lads_mobile_sdk/eh1;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/f23;
    .registers 4

    .line 52
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/eh1;->b:Lads_mobile_sdk/dh1;

    if-eqz v0, :cond_16

    .line 53
    iget v1, v0, Lads_mobile_sdk/dh1;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    iget-object v1, v0, Lads_mobile_sdk/dh1;->d:Lads_mobile_sdk/u81;

    if-eqz v1, :cond_16

    iget-object v1, v0, Lads_mobile_sdk/dh1;->e:Lads_mobile_sdk/ch1;

    if-eqz v1, :cond_16

    .line 54
    invoke-virtual {v0}, Lads_mobile_sdk/dh1;->a()Lads_mobile_sdk/f23;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lads_mobile_sdk/rh1;)V
    .registers 10

    .line 55
    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lads_mobile_sdk/eh1;->a:Landroid/content/Context;

    if-eqz v0, :cond_dc

    .line 57
    new-instance v1, Lads_mobile_sdk/dh1;

    invoke-direct {v1, v0}, Lads_mobile_sdk/dh1;-><init>(Landroid/content/Context;)V

    .line 58
    iget v0, v1, Lads_mobile_sdk/dh1;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_26

    iget-object v4, v1, Lads_mobile_sdk/dh1;->d:Lads_mobile_sdk/u81;

    if-eqz v4, :cond_26

    iget-object v4, v1, Lads_mobile_sdk/dh1;->e:Lads_mobile_sdk/ch1;

    if-eqz v4, :cond_26

    .line 59
    const-string v0, "Service connection is valid. No need to re-initialize."

    invoke-static {v0}, Lads_mobile_sdk/gh1;->a(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, v3}, Lads_mobile_sdk/rh1;->a(I)V

    goto/16 :goto_d9

    :cond_26
    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v0, v5, :cond_34

    .line 66
    const-string v0, "Client is already in the process of connecting to the service."

    invoke-static {v0}, Lads_mobile_sdk/gh1;->b(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1, v4}, Lads_mobile_sdk/rh1;->a(I)V

    goto/16 :goto_d9

    :cond_34
    if-ne v0, v4, :cond_40

    .line 73
    const-string v0, "Client was already closed and can\'t be reused. Please create another instance."

    invoke-static {v0}, Lads_mobile_sdk/gh1;->b(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1, v4}, Lads_mobile_sdk/rh1;->a(I)V

    goto/16 :goto_d9

    .line 80
    :cond_40
    const-string v0, "Starting install referrer service setup."

    invoke-static {v0}, Lads_mobile_sdk/gh1;->a(Ljava/lang/String;)V

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    new-instance v4, Landroid/content/ComponentName;

    const-string v6, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    const-string v7, "com.android.vending"

    invoke-direct {v4, v7, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 84
    iget-object v4, v1, Lads_mobile_sdk/dh1;->b:Landroid/content/Context;

    .line 85
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_cf

    .line 87
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_cf

    .line 89
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 90
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_cf

    .line 91
    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 92
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 93
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c4

    if-eqz v4, :cond_c4

    .line 94
    iget-object v4, v1, Lads_mobile_sdk/dh1;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v6, 0x80

    .line 96
    :try_start_88
    invoke-virtual {v4, v7, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 97
    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_8e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_88 .. :try_end_8e} :catch_c4

    const v6, 0x4d17ab4

    if-lt v4, v6, :cond_c4

    .line 98
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 99
    new-instance v0, Lads_mobile_sdk/ch1;

    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/ch1;-><init>(Lads_mobile_sdk/dh1;Lads_mobile_sdk/rh1;)V

    iput-object v0, v1, Lads_mobile_sdk/dh1;->e:Lads_mobile_sdk/ch1;

    .line 102
    :try_start_9f
    iget-object v4, v1, Lads_mobile_sdk/dh1;->b:Landroid/content/Context;

    .line 103
    invoke-virtual {v4, v2, v0, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_a5
    .catch Ljava/lang/SecurityException; {:try_start_9f .. :try_end_a5} :catch_b8

    if-eqz v0, :cond_ad

    .line 113
    const-string p1, "Service was bonded successfully."

    invoke-static {p1}, Lads_mobile_sdk/gh1;->a(Ljava/lang/String;)V

    goto :goto_d9

    .line 118
    :cond_ad
    const-string v0, "Connection to service is blocked."

    invoke-static {v0}, Lads_mobile_sdk/gh1;->b(Ljava/lang/String;)V

    .line 119
    iput v3, v1, Lads_mobile_sdk/dh1;->a:I

    .line 120
    invoke-virtual {p1, v5}, Lads_mobile_sdk/rh1;->a(I)V

    goto :goto_d9

    .line 121
    :catch_b8
    const-string v0, "No permission to connect to service."

    invoke-static {v0}, Lads_mobile_sdk/gh1;->b(Ljava/lang/String;)V

    .line 122
    iput v3, v1, Lads_mobile_sdk/dh1;->a:I

    const/4 v0, 0x4

    .line 123
    invoke-virtual {p1, v0}, Lads_mobile_sdk/rh1;->a(I)V

    goto :goto_d9

    .line 140
    :catch_c4
    :cond_c4
    const-string v0, "Play Store missing or incompatible. Version 8.3.73 or later required."

    invoke-static {v0}, Lads_mobile_sdk/gh1;->b(Ljava/lang/String;)V

    .line 142
    iput v3, v1, Lads_mobile_sdk/dh1;->a:I

    .line 143
    invoke-virtual {p1, v2}, Lads_mobile_sdk/rh1;->a(I)V

    goto :goto_d9

    .line 149
    :cond_cf
    iput v3, v1, Lads_mobile_sdk/dh1;->a:I

    .line 150
    const-string v0, "Install Referrer service unavailable on device."

    invoke-static {v0}, Lads_mobile_sdk/gh1;->a(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1, v2}, Lads_mobile_sdk/rh1;->a(I)V

    .line 152
    :goto_d9
    iput-object v1, p0, Lads_mobile_sdk/eh1;->b:Lads_mobile_sdk/dh1;

    return-void

    .line 153
    :cond_dc
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please provide a valid Context."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
