###### Class com.vungle.ads.internal.k0 (com.vungle.ads.internal.k0)
.class public final Lcom/vungle/ads/internal/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/vungle/ads/internal/l0;

.field public b:Lcom/vungle/ads/internal/l0;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/l0;Lcom/vungle/ads/internal/l0;)V
    .registers 4

    const-string v0, "downCoordinate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upCoordinate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/k0;->a:Lcom/vungle/ads/internal/l0;

    .line 3
    iput-object p2, p0, Lcom/vungle/ads/internal/k0;->b:Lcom/vungle/ads/internal/l0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/vungle/ads/internal/l0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/k0;->a:Lcom/vungle/ads/internal/l0;

    return-object v0
.end method

.method public final a(Lcom/vungle/ads/internal/l0;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/k0;->a:Lcom/vungle/ads/internal/l0;

    return-void
.end method

.method public final b()Lcom/vungle/ads/internal/l0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/k0;->b:Lcom/vungle/ads/internal/l0;

    return-object v0
.end method

.method public final b(Lcom/vungle/ads/internal/l0;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/k0;->b:Lcom/vungle/ads/internal/l0;

    return-void
.end method

.method public final c()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/k0;->a:Lcom/vungle/ads/internal/l0;

    .line 2
    iget v1, v0, Lcom/vungle/ads/internal/l0;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_18

    .line 3
    iget v0, v0, Lcom/vungle/ads/internal/l0;->b:I

    if-eq v0, v2, :cond_18

    .line 4
    iget-object v0, p0, Lcom/vungle/ads/internal/k0;->b:Lcom/vungle/ads/internal/l0;

    .line 5
    iget v1, v0, Lcom/vungle/ads/internal/l0;->a:I

    if-eq v1, v2, :cond_18

    .line 6
    iget v0, v0, Lcom/vungle/ads/internal/l0;->b:I

    if-eq v0, v2, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/vungle/ads/internal/k0;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/vungle/ads/internal/k0;

    iget-object v1, p0, Lcom/vungle/ads/internal/k0;->a:Lcom/vungle/ads/internal/l0;

    iget-object v3, p1, Lcom/vungle/ads/internal/k0;->a:Lcom/vungle/ads/internal/l0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vungle/ads/internal/k0;->b:Lcom/vungle/ads/internal/l0;

    iget-object p1, p1, Lcom/vungle/ads/internal/k0;->b:Lcom/vungle/ads/internal/l0;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/k0;->a:Lcom/vungle/ads/internal/l0;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/l0;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/k0;->b:Lcom/vungle/ads/internal/l0;

    invoke-virtual {v1}, Lcom/vungle/ads/internal/l0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "ClickCoordinate(downCoordinate="

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/vungle/ads/internal/k0;->a:Lcom/vungle/ads/internal/l0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", upCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/k0;->b:Lcom/vungle/ads/internal/l0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
