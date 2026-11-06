###### Class ads_mobile_sdk.m33 (ads_mobile_sdk.m33)
.class public final Lads_mobile_sdk/m33;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Boolean;

.field public g:Z

.field public h:Z


# direct methods
.method public synthetic constructor <init>()V
    .registers 10

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 7
    const-string v1, ""

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lads_mobile_sdk/m33;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZZ)V
    .registers 10

    .line 8
    const-string v0, "renderId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterVersion"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lads_mobile_sdk/m33;->a:Ljava/lang/String;

    .line 130
    iput p2, p0, Lads_mobile_sdk/m33;->b:I

    .line 131
    iput-object p3, p0, Lads_mobile_sdk/m33;->c:Ljava/lang/String;

    .line 132
    iput-object p4, p0, Lads_mobile_sdk/m33;->d:Ljava/lang/String;

    .line 133
    iput-object p5, p0, Lads_mobile_sdk/m33;->e:Ljava/lang/String;

    .line 134
    iput-object p6, p0, Lads_mobile_sdk/m33;->f:Ljava/lang/Boolean;

    .line 135
    iput-boolean p7, p0, Lads_mobile_sdk/m33;->g:Z

    .line 136
    iput-boolean p8, p0, Lads_mobile_sdk/m33;->h:Z

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
    instance-of v1, p1, Lads_mobile_sdk/m33;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lads_mobile_sdk/m33;

    iget-object v1, p0, Lads_mobile_sdk/m33;->a:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/m33;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lads_mobile_sdk/m33;->b:I

    iget v3, p1, Lads_mobile_sdk/m33;->b:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lads_mobile_sdk/m33;->c:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/m33;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lads_mobile_sdk/m33;->d:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/m33;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lads_mobile_sdk/m33;->e:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/m33;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-object v1, p0, Lads_mobile_sdk/m33;->f:Ljava/lang/Boolean;

    iget-object v3, p1, Lads_mobile_sdk/m33;->f:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    return v2

    :cond_4a
    iget-boolean v1, p0, Lads_mobile_sdk/m33;->g:Z

    iget-boolean v3, p1, Lads_mobile_sdk/m33;->g:Z

    if-eq v1, v3, :cond_51

    return v2

    :cond_51
    iget-boolean v1, p0, Lads_mobile_sdk/m33;->h:Z

    iget-boolean p1, p1, Lads_mobile_sdk/m33;->h:Z

    if-eq v1, p1, :cond_58

    return v2

    :cond_58
    return v0
.end method

.method public final hashCode()I
    .registers 5

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/m33;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lads_mobile_sdk/m33;->b:I

    .line 2
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 3
    iget-object v2, p0, Lads_mobile_sdk/m33;->c:Ljava/lang/String;

    .line 4
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 5
    iget-object v2, p0, Lads_mobile_sdk/m33;->d:Ljava/lang/String;

    .line 6
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 7
    iget-object v2, p0, Lads_mobile_sdk/m33;->e:Ljava/lang/String;

    .line 8
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 9
    iget-object v2, p0, Lads_mobile_sdk/m33;->f:Ljava/lang/Boolean;

    if-nez v2, :cond_27

    const/4 v2, 0x0

    goto :goto_2b

    :cond_27
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2b
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lads_mobile_sdk/m33;->g:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    move v2, v3

    :cond_33
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lads_mobile_sdk/m33;->h:Z

    if-eqz v1, :cond_3a

    goto :goto_3b

    :cond_3a
    move v3, v1

    :goto_3b
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 11

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/m33;->a:Ljava/lang/String;

    iget v1, p0, Lads_mobile_sdk/m33;->b:I

    iget-object v2, p0, Lads_mobile_sdk/m33;->c:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/m33;->d:Ljava/lang/String;

    iget-object v4, p0, Lads_mobile_sdk/m33;->e:Ljava/lang/String;

    iget-object v5, p0, Lads_mobile_sdk/m33;->f:Ljava/lang/Boolean;

    iget-boolean v6, p0, Lads_mobile_sdk/m33;->g:Z

    iget-boolean v7, p0, Lads_mobile_sdk/m33;->h:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RenderTraceMeta(renderId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", adConfigIndex="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", renderer="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", adapterName="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", adapterVersion="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", winningAd="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isOfflineAd="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isAsyncAdResponse="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
