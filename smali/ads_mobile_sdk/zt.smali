###### Class ads_mobile_sdk.zt (ads_mobile_sdk.zt)
.class public final Lads_mobile_sdk/zt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Lads_mobile_sdk/yt;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public final g:Ljava/util/List;

.field public final h:Z

.field public final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/yt;

    .line 2
    invoke-direct {v0}, Lads_mobile_sdk/yt;-><init>()V

    .line 3
    sput-object v0, Lads_mobile_sdk/zt;->j:Lads_mobile_sdk/yt;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V
    .registers 11

    .line 1
    const-string v0, "url"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lads_mobile_sdk/zt;->a:Ljava/util/List;

    .line 11
    iput-object p2, p0, Lads_mobile_sdk/zt;->b:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lads_mobile_sdk/zt;->c:Ljava/lang/String;

    .line 13
    iput-boolean p4, p0, Lads_mobile_sdk/zt;->d:Z

    .line 14
    iput-object p5, p0, Lads_mobile_sdk/zt;->e:Ljava/lang/String;

    .line 19
    iput-object p6, p0, Lads_mobile_sdk/zt;->f:Ljava/lang/String;

    .line 20
    iput-object p7, p0, Lads_mobile_sdk/zt;->g:Ljava/util/List;

    .line 21
    iput-boolean p8, p0, Lads_mobile_sdk/zt;->h:Z

    .line 22
    iput-object p9, p0, Lads_mobile_sdk/zt;->i:Ljava/lang/String;

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
    instance-of v1, p1, Lads_mobile_sdk/zt;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lads_mobile_sdk/zt;

    iget-object v1, p0, Lads_mobile_sdk/zt;->a:Ljava/util/List;

    iget-object v3, p1, Lads_mobile_sdk/zt;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lads_mobile_sdk/zt;->b:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/zt;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lads_mobile_sdk/zt;->c:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/zt;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-boolean v1, p0, Lads_mobile_sdk/zt;->d:Z

    iget-boolean v3, p1, Lads_mobile_sdk/zt;->d:Z

    if-eq v1, v3, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lads_mobile_sdk/zt;->e:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/zt;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-object v1, p0, Lads_mobile_sdk/zt;->f:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/zt;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    return v2

    :cond_4a
    iget-object v1, p0, Lads_mobile_sdk/zt;->g:Ljava/util/List;

    iget-object v3, p1, Lads_mobile_sdk/zt;->g:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    return v2

    :cond_55
    iget-boolean v1, p0, Lads_mobile_sdk/zt;->h:Z

    iget-boolean v3, p1, Lads_mobile_sdk/zt;->h:Z

    if-eq v1, v3, :cond_5c

    return v2

    :cond_5c
    iget-object v1, p0, Lads_mobile_sdk/zt;->i:Ljava/lang/String;

    iget-object p1, p1, Lads_mobile_sdk/zt;->i:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_67

    return v2

    :cond_67
    return v0
.end method

.method public final hashCode()I
    .registers 6

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/zt;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-object v3, p0, Lads_mobile_sdk/zt;->b:Ljava/lang/String;

    if-nez v3, :cond_14

    move v3, v1

    goto :goto_18

    :cond_14
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_18
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lads_mobile_sdk/zt;->c:Ljava/lang/String;

    if-nez v3, :cond_20

    move v3, v1

    goto :goto_24

    :cond_20
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_24
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lads_mobile_sdk/zt;->d:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2c

    move v3, v4

    :cond_2c
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lads_mobile_sdk/zt;->e:Ljava/lang/String;

    .line 2
    invoke-static {v3, v0, v2}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 3
    iget-object v3, p0, Lads_mobile_sdk/zt;->f:Ljava/lang/String;

    if-nez v3, :cond_3a

    move v3, v1

    goto :goto_3e

    :cond_3a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3e
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lads_mobile_sdk/zt;->g:Ljava/util/List;

    if-nez v3, :cond_46

    move v3, v1

    goto :goto_4a

    :cond_46
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4a
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lads_mobile_sdk/zt;->h:Z

    if-eqz v3, :cond_51

    goto :goto_52

    :cond_51
    move v4, v3

    :goto_52
    add-int/2addr v0, v4

    mul-int/2addr v0, v2

    iget-object v2, p0, Lads_mobile_sdk/zt;->i:Ljava/lang/String;

    if-nez v2, :cond_59

    goto :goto_5d

    :cond_59
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5d
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 12

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/zt;->a:Ljava/util/List;

    iget-object v1, p0, Lads_mobile_sdk/zt;->b:Ljava/lang/String;

    iget-object v2, p0, Lads_mobile_sdk/zt;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lads_mobile_sdk/zt;->d:Z

    iget-object v4, p0, Lads_mobile_sdk/zt;->e:Ljava/lang/String;

    iget-object v5, p0, Lads_mobile_sdk/zt;->f:Ljava/lang/String;

    iget-object v6, p0, Lads_mobile_sdk/zt;->g:Ljava/util/List;

    iget-boolean v7, p0, Lads_mobile_sdk/zt;->h:Z

    iget-object v8, p0, Lads_mobile_sdk/zt;->i:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BuildAdUrlResult(errors="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", baseUri="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", postParameters="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", includeCookies="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", url="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", queryWithFlattenedBlobParams="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", csrbErrors="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", useCompression="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", contentType="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
