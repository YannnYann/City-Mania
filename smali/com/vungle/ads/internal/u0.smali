###### Class com.vungle.ads.internal.u0 (com.vungle.ads.internal.u0)
.class public final Lcom/vungle/ads/internal/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/vungle/ads/internal/model/i0;

.field public final b:Lcom/vungle/ads/internal/model/j3;

.field public final c:Lcom/vungle/ads/internal/presenter/z;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/internal/model/j3;Lcom/vungle/ads/internal/presenter/z;)V
    .registers 5

    const-string v0, "adPayload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/u0;->a:Lcom/vungle/ads/internal/model/i0;

    .line 3
    iput-object p2, p0, Lcom/vungle/ads/internal/u0;->b:Lcom/vungle/ads/internal/model/j3;

    .line 4
    iput-object p3, p0, Lcom/vungle/ads/internal/u0;->c:Lcom/vungle/ads/internal/presenter/z;

    return-void
.end method


# virtual methods
.method public final a()Lcom/vungle/ads/internal/model/i0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/u0;->a:Lcom/vungle/ads/internal/model/i0;

    return-object v0
.end method

.method public final b()Lcom/vungle/ads/internal/model/j3;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/u0;->b:Lcom/vungle/ads/internal/model/j3;

    return-object v0
.end method

.method public final c()Lcom/vungle/ads/internal/presenter/z;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/u0;->c:Lcom/vungle/ads/internal/presenter/z;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/vungle/ads/internal/u0;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/vungle/ads/internal/u0;

    iget-object v1, p0, Lcom/vungle/ads/internal/u0;->a:Lcom/vungle/ads/internal/model/i0;

    iget-object v3, p1, Lcom/vungle/ads/internal/u0;->a:Lcom/vungle/ads/internal/model/i0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vungle/ads/internal/u0;->b:Lcom/vungle/ads/internal/model/j3;

    iget-object v3, p1, Lcom/vungle/ads/internal/u0;->b:Lcom/vungle/ads/internal/model/j3;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/vungle/ads/internal/u0;->c:Lcom/vungle/ads/internal/presenter/z;

    iget-object p1, p1, Lcom/vungle/ads/internal/u0;->c:Lcom/vungle/ads/internal/presenter/z;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/u0;->a:Lcom/vungle/ads/internal/model/i0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/u0;->b:Lcom/vungle/ads/internal/model/j3;

    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/j3;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/vungle/ads/internal/u0;->c:Lcom/vungle/ads/internal/presenter/z;

    if-nez v0, :cond_17

    const/4 v0, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1b
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "PendingData(adPayload="

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/vungle/ads/internal/u0;->a:Lcom/vungle/ads/internal/model/i0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", placement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/u0;->b:Lcom/vungle/ads/internal/model/j3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", presenterDelegate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/u0;->c:Lcom/vungle/ads/internal/presenter/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
