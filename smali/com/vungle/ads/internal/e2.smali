###### Class com.vungle.ads.internal.e2 (com.vungle.ads.internal.e2)
.class public final Lcom/vungle/ads/internal/e2;
.super Lcom/vungle/ads/internal/s1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/s1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/executor/d;

    invoke-direct {v0}, Lcom/vungle/ads/internal/executor/d;-><init>()V

    return-object v0
.end method
