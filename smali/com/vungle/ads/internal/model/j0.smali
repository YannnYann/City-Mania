###### Class com.vungle.ads.internal.model.j0 (com.vungle.ads.internal.model.j0)
.class public final Lcom/vungle/ads/internal/model/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/j0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/model/j0;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    .line 3
    iput-boolean p1, p0, Lcom/vungle/ads/internal/model/j0;->b:Z

    return-void
.end method

.method public final b()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/internal/model/j0;->b:Z

    return v0
.end method
