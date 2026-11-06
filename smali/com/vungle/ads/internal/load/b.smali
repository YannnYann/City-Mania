###### Class com.vungle.ads.internal.load.b (com.vungle.ads.internal.load.b)
.class public final Lcom/vungle/ads/internal/load/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Lcom/vungle/ads/internal/model/j3;

.field public final b:Lcom/vungle/ads/internal/model/q0;

.field public final c:Lcom/vungle/ads/VungleAdSize;

.field public final d:Lcom/vungle/ads/VungleCSBData;

.field public final e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/model/j3;Lcom/vungle/ads/internal/model/q0;Lcom/vungle/ads/VungleAdSize;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/vungle/ads/internal/load/b;-><init>(Lcom/vungle/ads/internal/model/j3;Lcom/vungle/ads/internal/model/q0;Lcom/vungle/ads/VungleAdSize;Lcom/vungle/ads/VungleCSBData;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/model/j3;Lcom/vungle/ads/internal/model/q0;Lcom/vungle/ads/VungleAdSize;Lcom/vungle/ads/VungleCSBData;Ljava/lang/String;)V
    .registers 7

    const-string v0, "placement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/vungle/ads/internal/load/b;->a:Lcom/vungle/ads/internal/model/j3;

    .line 4
    iput-object p2, p0, Lcom/vungle/ads/internal/load/b;->b:Lcom/vungle/ads/internal/model/q0;

    .line 5
    iput-object p3, p0, Lcom/vungle/ads/internal/load/b;->c:Lcom/vungle/ads/VungleAdSize;

    .line 6
    iput-object p4, p0, Lcom/vungle/ads/internal/load/b;->d:Lcom/vungle/ads/VungleCSBData;

    .line 7
    iput-object p5, p0, Lcom/vungle/ads/internal/load/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/vungle/ads/internal/model/q0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/load/b;->b:Lcom/vungle/ads/internal/model/q0;

    return-object v0
.end method

.method public final b()Lcom/vungle/ads/VungleCSBData;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/load/b;->d:Lcom/vungle/ads/VungleCSBData;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/load/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/vungle/ads/internal/model/j3;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/load/b;->a:Lcom/vungle/ads/internal/model/j3;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_5f

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/vungle/ads/internal/load/b;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_5f

    .line 2
    :cond_14
    check-cast p1, Lcom/vungle/ads/internal/load/b;

    .line 3
    iget-object v2, p0, Lcom/vungle/ads/internal/load/b;->a:Lcom/vungle/ads/internal/model/j3;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/j3;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/vungle/ads/internal/load/b;->a:Lcom/vungle/ads/internal/model/j3;

    invoke-virtual {v3}, Lcom/vungle/ads/internal/model/j3;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    return v1

    .line 4
    :cond_29
    iget-object v2, p0, Lcom/vungle/ads/internal/load/b;->c:Lcom/vungle/ads/VungleAdSize;

    iget-object v3, p1, Lcom/vungle/ads/internal/load/b;->c:Lcom/vungle/ads/VungleAdSize;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    return v1

    .line 5
    :cond_34
    iget-object v2, p0, Lcom/vungle/ads/internal/load/b;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/load/b;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    return v1

    .line 6
    :cond_3f
    iget-object v2, p0, Lcom/vungle/ads/internal/load/b;->b:Lcom/vungle/ads/internal/model/q0;

    if-eqz v2, :cond_4c

    .line 7
    iget-object v3, p1, Lcom/vungle/ads/internal/load/b;->b:Lcom/vungle/ads/internal/model/q0;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    return v1

    .line 8
    :cond_4c
    iget-object v2, p1, Lcom/vungle/ads/internal/load/b;->b:Lcom/vungle/ads/internal/model/q0;

    if-eqz v2, :cond_51

    return v1

    .line 11
    :cond_51
    iget-object v2, p0, Lcom/vungle/ads/internal/load/b;->d:Lcom/vungle/ads/VungleCSBData;

    iget-object p1, p1, Lcom/vungle/ads/internal/load/b;->d:Lcom/vungle/ads/VungleCSBData;

    if-eqz v2, :cond_5c

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5c
    if-nez p1, :cond_5f

    return v0

    :cond_5f
    :goto_5f
    return v1
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/load/b;->a:Lcom/vungle/ads/internal/model/j3;

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/j3;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/vungle/ads/internal/load/b;->c:Lcom/vungle/ads/VungleAdSize;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/vungle/ads/internal/load/b;->b:Lcom/vungle/ads/internal/model/q0;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/q0;->hashCode()I

    move-result v1

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lcom/vungle/ads/internal/load/b;->d:Lcom/vungle/ads/VungleCSBData;

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/vungle/ads/VungleCSBData;->hashCode()I

    move-result v1

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Lcom/vungle/ads/internal/load/b;->e:Ljava/lang/String;

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_3a
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "AdRequest{placementId=\'"

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/vungle/ads/internal/load/b;->a:Lcom/vungle/ads/internal/model/j3;

    .line 20
    iget-object v1, v1, Lcom/vungle/ads/internal/model/j3;->a:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', adMarkup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v1, p0, Lcom/vungle/ads/internal/load/b;->b:Lcom/vungle/ads/internal/model/q0;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestAdSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lcom/vungle/ads/internal/load/b;->c:Lcom/vungle/ads/VungleAdSize;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", csbData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v1, p0, Lcom/vungle/ads/internal/load/b;->d:Lcom/vungle/ads/VungleCSBData;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediationPartnerName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v1, p0, Lcom/vungle/ads/internal/load/b;->e:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
