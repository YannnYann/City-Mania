###### Class com.vungle.ads.internal.network.h (com.vungle.ads.internal.network.h)
.class public final Lcom/vungle/ads/internal/network/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_a

    .line 4
    instance-of v0, p0, Ljava/lang/LinkageError;

    if-nez v0, :cond_9

    return-void

    .line 5
    :cond_9
    throw p0

    .line 6
    :cond_a
    throw p0
.end method
