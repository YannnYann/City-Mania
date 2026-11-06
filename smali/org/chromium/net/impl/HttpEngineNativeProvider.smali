###### Class org.chromium.net.impl.HttpEngineNativeProvider (org.chromium.net.impl.HttpEngineNativeProvider)
.class public Lorg/chromium/net/impl/HttpEngineNativeProvider;
.super Lorg/chromium/net/CronetProvider;
.source "HttpEngineNativeProvider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lorg/chromium/net/CronetProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static isHttpEngineAvailable()Z
    .registers 2

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_11

    const/16 v0, 0x1f

    .line 73
    invoke-static {v0}, Lads_mobile_sdk/dh1$$ExternalSyntheticApiModelOutline0;->m(I)I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public createBuilder()Lorg/chromium/net/CronetEngine$Builder;
    .registers 5

    .line 48
    const-string v0, "HttpEngineNativeProvider#createBuilder"

    .line 49
    invoke-static {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 50
    :try_start_6
    new-instance v1, Lorg/chromium/net/ExperimentalCronetEngine$Builder;

    new-instance v2, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;

    invoke-static {}, Lorg/chromium/net/impl/HttpEngineNativeProvider$$ExternalSyntheticApiModelOutline1;->m()V

    iget-object v3, p0, Lorg/chromium/net/CronetProvider;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/chromium/net/impl/HttpEngineNativeProvider$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;)Landroid/net/http/HttpEngine$Builder;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;-><init>(Landroid/net/http/HttpEngine$Builder;)V

    invoke-direct {v1, v2}, Lorg/chromium/net/ExperimentalCronetEngine$Builder;-><init>(Lorg/chromium/net/ICronetEngineBuilder;)V
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1f

    if-eqz v0, :cond_1e

    .line 52
    invoke-virtual {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    :cond_1e
    return-object v1

    :catchall_1f
    move-exception v1

    if-eqz v0, :cond_2a

    .line 48
    :try_start_22
    invoke-virtual {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2a
    :goto_2a
    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 57
    const-string v0, "HttpEngine-Native-Provider"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 63
    invoke-static {}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline21;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 68
    invoke-static {}, Lorg/chromium/net/impl/HttpEngineNativeProvider;->isHttpEngineAvailable()Z

    move-result v0

    return v0
.end method
