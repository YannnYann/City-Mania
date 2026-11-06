###### Class com.unity3d.services.core.network.core.CronetEngineBuilderFactory (com.unity3d.services.core.network.core.CronetEngineBuilderFactory)
.class public final Lcom/unity3d/services/core/network/core/CronetEngineBuilderFactory;
.super Ljava/lang/Object;
.source "CronetEngineBuilderFactory.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createCronetEngineBuilder(Landroid/content/Context;)Lorg/chromium/net/CronetEngine$Builder;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lorg/chromium/net/CronetEngine$Builder;

    invoke-direct {v0, p1}, Lorg/chromium/net/CronetEngine$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
