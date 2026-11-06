###### Class com.vungle.ads.nativead.NativeVideoOptions (com.vungle.ads.nativead.NativeVideoOptions)
.class public final Lcom/vungle/ads/nativead/NativeVideoOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private startMuted:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getStartMuted()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/nativead/NativeVideoOptions;->startMuted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setStartMuted(Ljava/lang/Boolean;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/nativead/NativeVideoOptions;->startMuted:Ljava/lang/Boolean;

    return-void
.end method
