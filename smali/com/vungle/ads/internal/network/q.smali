###### Class com.vungle.ads.internal.network.q (com.vungle.ads.internal.network.q)
.class public final Lcom/vungle/ads/internal/network/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/vungle/ads/internal/network/g;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/Boolean;

.field public final f:I

.field public final g:Z

.field public final h:I

.field public final i:Ljava/lang/String;

.field public final j:Lcom/vungle/ads/internal/util/t;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vungle/ads/internal/network/g;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;IZILjava/lang/String;Lcom/vungle/ads/internal/util/t;)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/network/q;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/vungle/ads/internal/network/q;->b:Lcom/vungle/ads/internal/network/g;

    .line 4
    iput-object p3, p0, Lcom/vungle/ads/internal/network/q;->c:Ljava/util/Map;

    .line 5
    iput-object p4, p0, Lcom/vungle/ads/internal/network/q;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/vungle/ads/internal/network/q;->e:Ljava/lang/Boolean;

    .line 7
    iput p6, p0, Lcom/vungle/ads/internal/network/q;->f:I

    .line 8
    iput-boolean p7, p0, Lcom/vungle/ads/internal/network/q;->g:Z

    .line 9
    iput p8, p0, Lcom/vungle/ads/internal/network/q;->h:I

    .line 10
    iput-object p9, p0, Lcom/vungle/ads/internal/network/q;->i:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lcom/vungle/ads/internal/network/q;->j:Lcom/vungle/ads/internal/util/t;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/q;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/q;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final c()Lcom/vungle/ads/internal/util/t;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/q;->j:Lcom/vungle/ads/internal/util/t;

    return-object v0
.end method

.method public final d()Lcom/vungle/ads/internal/network/g;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/q;->b:Lcom/vungle/ads/internal/network/g;

    return-object v0
.end method

.method public final e()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/network/q;->f:I

    return v0
.end method

.method public final f()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/internal/network/q;->g:Z

    return v0
.end method

.method public final g()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/network/q;->h:I

    return v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/q;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/q;->a:Ljava/lang/String;

    return-object v0
.end method
