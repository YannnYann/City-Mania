###### Class com.vungle.ads.VungleCSBData (com.vungle.ads.VungleCSBData)
.class public final Lcom/vungle/ads/VungleCSBData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/VungleCSBData$Builder;
    }
.end annotation


# instance fields
.field public final a:D

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Z

.field public final g:Ljava/util/Map;


# direct methods
.method public constructor <init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/Map;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/vungle/ads/VungleCSBData;->a:D

    .line 3
    iput-object p3, p0, Lcom/vungle/ads/VungleCSBData;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/vungle/ads/VungleCSBData;->c:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/vungle/ads/VungleCSBData;->d:Ljava/lang/String;

    .line 6
    iput p6, p0, Lcom/vungle/ads/VungleCSBData;->e:I

    .line 7
    iput-boolean p7, p0, Lcom/vungle/ads/VungleCSBData;->f:Z

    .line 8
    iput-object p8, p0, Lcom/vungle/ads/VungleCSBData;->g:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 10

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/vungle/ads/VungleCSBData;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/vungle/ads/VungleCSBData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 3
    :cond_a
    iget-wide v3, p0, Lcom/vungle/ads/VungleCSBData;->a:D

    check-cast p1, Lcom/vungle/ads/VungleCSBData;

    iget-wide v5, p1, Lcom/vungle/ads/VungleCSBData;->a:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_17

    return v2

    .line 4
    :cond_17
    iget-object v1, p0, Lcom/vungle/ads/VungleCSBData;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/VungleCSBData;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    .line 5
    :cond_22
    iget-object v1, p0, Lcom/vungle/ads/VungleCSBData;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/VungleCSBData;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    .line 6
    :cond_2d
    iget-object v1, p0, Lcom/vungle/ads/VungleCSBData;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/VungleCSBData;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    .line 7
    :cond_38
    iget v1, p0, Lcom/vungle/ads/VungleCSBData;->e:I

    iget v3, p1, Lcom/vungle/ads/VungleCSBData;->e:I

    if-eq v1, v3, :cond_3f

    return v2

    .line 8
    :cond_3f
    iget-boolean v1, p0, Lcom/vungle/ads/VungleCSBData;->f:Z

    iget-boolean v3, p1, Lcom/vungle/ads/VungleCSBData;->f:Z

    if-eq v1, v3, :cond_46

    return v2

    .line 9
    :cond_46
    iget-object v1, p0, Lcom/vungle/ads/VungleCSBData;->g:Ljava/util/Map;

    iget-object p1, p1, Lcom/vungle/ads/VungleCSBData;->g:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    return v2

    :cond_51
    return v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleCSBData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuctionId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleCSBData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getBidFloor()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/VungleCSBData;->a:D

    return-wide v0
.end method

.method public final getCreativeId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleCSBData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtras()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleCSBData;->g:Ljava/util/Map;

    return-object v0
.end method

.method public final getPhase()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/ads/VungleCSBData;->e:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/VungleCSBData;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/vungle/ads/VungleCSBData;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Lcom/vungle/ads/VungleCSBData;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/vungle/ads/VungleCSBData;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget v0, p0, Lcom/vungle/ads/VungleCSBData;->e:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    iget-boolean v0, p0, Lcom/vungle/ads/VungleCSBData;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Lcom/vungle/ads/VungleCSBData;->g:Ljava/util/Map;

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    add-int/2addr v0, v1

    return v0
.end method

.method public final isVXWinner()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/VungleCSBData;->f:Z

    return v0
.end method

###### Class com.vungle.ads.VungleCSBData.Builder (com.vungle.ads.VungleCSBData$Builder)
.class public final Lcom/vungle/ads/VungleCSBData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/VungleCSBData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:D

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Ljava/util/Map;


# direct methods
.method public constructor <init>(D)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/vungle/ads/VungleCSBData$Builder;->a:D

    return-void
.end method


# virtual methods
.method public final adUnitId(Ljava/lang/String;)Lcom/vungle/ads/VungleCSBData$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/VungleCSBData$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final auctionId(Ljava/lang/String;)Lcom/vungle/ads/VungleCSBData$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/VungleCSBData$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final build()Lcom/vungle/ads/VungleCSBData;
    .registers 12

    .line 1
    new-instance v0, Lcom/vungle/ads/VungleCSBData;

    .line 2
    iget-wide v1, p0, Lcom/vungle/ads/VungleCSBData$Builder;->a:D

    .line 3
    iget-object v3, p0, Lcom/vungle/ads/VungleCSBData$Builder;->b:Ljava/lang/String;

    const-string v4, ""

    if-nez v3, :cond_b

    move-object v3, v4

    .line 4
    :cond_b
    iget-object v5, p0, Lcom/vungle/ads/VungleCSBData$Builder;->c:Ljava/lang/String;

    if-nez v5, :cond_10

    move-object v5, v4

    .line 5
    :cond_10
    iget-object v6, p0, Lcom/vungle/ads/VungleCSBData$Builder;->d:Ljava/lang/String;

    if-nez v6, :cond_15

    goto :goto_16

    :cond_15
    move-object v4, v6

    .line 6
    :goto_16
    iget-boolean v6, p0, Lcom/vungle/ads/VungleCSBData$Builder;->f:Z

    if-eqz v6, :cond_1c

    const/4 v6, 0x2

    goto :goto_1d

    :cond_1c
    const/4 v6, 0x1

    .line 7
    :goto_1d
    iget-boolean v7, p0, Lcom/vungle/ads/VungleCSBData$Builder;->e:Z

    .line 8
    iget-object v8, p0, Lcom/vungle/ads/VungleCSBData$Builder;->g:Ljava/util/Map;

    const/4 v9, 0x0

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    .line 9
    invoke-direct/range {v0 .. v9}, Lcom/vungle/ads/VungleCSBData;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final creativeId(Ljava/lang/String;)Lcom/vungle/ads/VungleCSBData$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/VungleCSBData$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final isPriorityAccess(Z)Lcom/vungle/ads/VungleCSBData$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/vungle/ads/VungleCSBData$Builder;->f:Z

    return-object p0
.end method

.method public final isVXWinner(Z)Lcom/vungle/ads/VungleCSBData$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/vungle/ads/VungleCSBData$Builder;->e:Z

    return-object p0
.end method

.method public final putExtras(Ljava/util/Map;)Lcom/vungle/ads/VungleCSBData$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vungle/ads/VungleCSBData$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/VungleCSBData$Builder;->g:Ljava/util/Map;

    return-object p0
.end method
