###### Class org.chromium.net.impl.CronetManifest (org.chromium.net.impl.CronetManifest)
.class public final Lorg/chromium/net/impl/CronetManifest;
.super Ljava/lang/Object;
.source "CronetManifest.java"


# static fields
.field public static sLastContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static final sLock:Ljava/lang/Object;

.field public static sMetaData:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/net/impl/CronetManifest;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMetaData(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 124
    sget-object v0, Lorg/chromium/net/impl/CronetManifest;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_7
    sget-object v1, Lorg/chromium/net/impl/CronetManifest;->sLastContext:Landroid/content/Context;

    if-eq p0, v1, :cond_4a

    .line 131
    const-string v1, "CronetManifest#getMetaData fetching info"

    .line 132
    invoke-static {v1}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_3d

    .line 136
    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "android.net.http.MetaDataHolder"

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0xc0280

    .line 137
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_23} :catch_26
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_23} :catch_26
    .catchall {:try_start_11 .. :try_end_23} :catchall_24

    goto :goto_27

    :catchall_24
    move-exception p0

    goto :goto_3f

    :catch_26
    const/4 v2, 0x0

    :goto_27
    if-eqz v2, :cond_2e

    .line 150
    :try_start_29
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_2e

    goto :goto_33

    .line 152
    :cond_2e
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :goto_33
    sput-object v2, Lorg/chromium/net/impl/CronetManifest;->sMetaData:Landroid/os/Bundle;

    .line 153
    sput-object p0, Lorg/chromium/net/impl/CronetManifest;->sLastContext:Landroid/content/Context;
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_24

    if-eqz v1, :cond_4a

    .line 154
    :try_start_39
    invoke-virtual {v1}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_4a

    :catchall_3d
    move-exception p0

    goto :goto_4e

    :goto_3f
    if-eqz v1, :cond_49

    .line 131
    :try_start_41
    invoke-virtual {v1}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception v1

    :try_start_46
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_49
    :goto_49
    throw p0

    .line 157
    :cond_4a
    :goto_4a
    sget-object p0, Lorg/chromium/net/impl/CronetManifest;->sMetaData:Landroid/os/Bundle;

    monitor-exit v0

    return-object p0

    .line 158
    :goto_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_3d

    throw p0
.end method

.method public static isAppOptedInForTelemetry(Landroid/content/Context;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 83
    :try_start_2
    const-string v2, "org.chromium.net.impl.NativeCronetEngineBuilderImpl"

    const-class v3, Lorg/chromium/net/impl/CronetManifest;

    .line 86
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 83
    invoke-static {v2, v0, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_d} :catch_e

    move v0, v1

    .line 90
    :catch_e
    invoke-static {p0}, Lorg/chromium/net/impl/CronetManifest;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    xor-int/2addr v0, v1

    .line 91
    const-string v1, "android.net.http.EnableTelemetry"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isAppOptedInForTelemetry(Landroid/content/Context;Lorg/chromium/net/impl/CronetLogger$CronetSource;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "source"
        }
    .end annotation

    .line 62
    sget-object v0, Lorg/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_PLATFORM:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    if-eq p1, v0, :cond_b

    sget-object v0, Lorg/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_PLAY_SERVICES:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    .line 65
    :goto_c
    invoke-static {p0}, Lorg/chromium/net/impl/CronetManifest;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "android.net.http.EnableTelemetry"

    .line 66
    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static shouldReadHttpFlags(Landroid/content/Context;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 100
    invoke-static {p0}, Lorg/chromium/net/impl/CronetManifest;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "android.net.http.ReadHttpFlags"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
