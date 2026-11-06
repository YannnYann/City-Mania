###### Class androidx.webkit.internal.SpeculativeLoadingConfigAdapter (androidx.webkit.internal.SpeculativeLoadingConfigAdapter)
.class public Landroidx/webkit/internal/SpeculativeLoadingConfigAdapter;
.super Ljava/lang/Object;
.source "SpeculativeLoadingConfigAdapter.java"

# interfaces
.implements Lorg/chromium/support_lib_boundary/SpeculativeLoadingConfigBoundaryInterface;


# direct methods
.method public constructor <init>(Landroidx/webkit/SpeculativeLoadingConfig;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxPrefetches()I
    .registers 2

    const/4 v0, 0x0

    .line 35
    throw v0
.end method

.method public getMaxPrerenders()I
    .registers 2

    const/4 v0, 0x0

    .line 45
    throw v0
.end method

.method public getPrefetchTTLSeconds()I
    .registers 2

    const/4 v0, 0x0

    .line 40
    throw v0
.end method
