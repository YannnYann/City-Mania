###### Class ads_mobile_sdk.ec3 (ads_mobile_sdk.ec3)
.class public final Lads_mobile_sdk/ec3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/wb3;

.field public final b:Lads_mobile_sdk/ac3;

.field public final c:Z

.field public final d:Lads_mobile_sdk/om2;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/wb3;Lads_mobile_sdk/ac3;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v1, v0}, Lads_mobile_sdk/ec3;-><init>(Lads_mobile_sdk/wb3;Lads_mobile_sdk/ac3;ZLads_mobile_sdk/om2;)V

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/wb3;Lads_mobile_sdk/ac3;ZLads_mobile_sdk/om2;)V
    .registers 6

    .line 3
    const-string v0, "serverRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lads_mobile_sdk/ec3;->a:Lads_mobile_sdk/wb3;

    .line 11
    iput-object p2, p0, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    .line 12
    iput-boolean p3, p0, Lads_mobile_sdk/ec3;->c:Z

    .line 13
    iput-object p4, p0, Lads_mobile_sdk/ec3;->d:Lads_mobile_sdk/om2;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lads_mobile_sdk/ec3;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lads_mobile_sdk/ec3;

    iget-object v1, p0, Lads_mobile_sdk/ec3;->a:Lads_mobile_sdk/wb3;

    iget-object v3, p1, Lads_mobile_sdk/ec3;->a:Lads_mobile_sdk/wb3;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-object v3, p1, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-boolean v1, p0, Lads_mobile_sdk/ec3;->c:Z

    iget-boolean v3, p1, Lads_mobile_sdk/ec3;->c:Z

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lads_mobile_sdk/ec3;->d:Lads_mobile_sdk/om2;

    iget-object p1, p1, Lads_mobile_sdk/ec3;->d:Lads_mobile_sdk/om2;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    return v2

    :cond_34
    return v0
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/ec3;->a:Lads_mobile_sdk/wb3;

    .line 2
    iget-object v0, v0, Lads_mobile_sdk/wb3;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    invoke-virtual {v1}, Lads_mobile_sdk/ac3;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lads_mobile_sdk/ec3;->c:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :cond_18
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lads_mobile_sdk/ec3;->d:Lads_mobile_sdk/om2;

    if-nez v0, :cond_21

    const/4 v0, 0x0

    goto :goto_25

    :cond_21
    invoke-virtual {v0}, Lads_mobile_sdk/om2;->hashCode()I

    move-result v0

    :goto_25
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/ec3;->a:Lads_mobile_sdk/wb3;

    iget-object v1, p0, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-boolean v2, p0, Lads_mobile_sdk/ec3;->c:Z

    iget-object v3, p0, Lads_mobile_sdk/ec3;->d:Lads_mobile_sdk/om2;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ServerTransaction(serverRequest="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", serverResponse="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isFromPersistentCache="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", persistentCacheToken="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
