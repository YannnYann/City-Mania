###### Class ads_mobile_sdk.ks3 (ads_mobile_sdk.ks3)
.class public final Lads_mobile_sdk/ks3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/n03;

.field public b:Lads_mobile_sdk/tn1;

.field public c:Lads_mobile_sdk/m33;

.field public d:Lads_mobile_sdk/zb;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V
    .registers 6

    .line 1
    const-string v0, "publisherRequestTraceMeta"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalRequestTraceMeta"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderTraceMeta"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adTraceMeta"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    .line 155
    iput-object p2, p0, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    .line 156
    iput-object p3, p0, Lads_mobile_sdk/ks3;->c:Lads_mobile_sdk/m33;

    .line 157
    iput-object p4, p0, Lads_mobile_sdk/ks3;->d:Lads_mobile_sdk/zb;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ks3;)V
    .registers 5

    .line 1
    const-string v0, "traceMetaSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object v0, p1, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    .line 175
    iget-object v1, p0, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    iget-object v2, v0, Lads_mobile_sdk/tn1;->b:Ljava/lang/String;

    iput-object v2, v1, Lads_mobile_sdk/tn1;->b:Ljava/lang/String;

    .line 176
    iget-object v2, v0, Lads_mobile_sdk/tn1;->a:Ljava/lang/String;

    iput-object v2, v1, Lads_mobile_sdk/tn1;->a:Ljava/lang/String;

    .line 177
    iget v2, v0, Lads_mobile_sdk/tn1;->e:I

    iput v2, v1, Lads_mobile_sdk/tn1;->e:I

    .line 178
    iget-object v2, v0, Lads_mobile_sdk/tn1;->d:Lads_mobile_sdk/x11;

    iput-object v2, v1, Lads_mobile_sdk/tn1;->d:Lads_mobile_sdk/x11;

    .line 179
    iget v2, v0, Lads_mobile_sdk/tn1;->c:I

    iput v2, v1, Lads_mobile_sdk/tn1;->c:I

    .line 180
    iget-object v2, v0, Lads_mobile_sdk/tn1;->f:Lads_mobile_sdk/nm2;

    iput-object v2, v1, Lads_mobile_sdk/tn1;->f:Lads_mobile_sdk/nm2;

    .line 181
    iget-boolean v0, v0, Lads_mobile_sdk/tn1;->g:Z

    iput-boolean v0, v1, Lads_mobile_sdk/tn1;->g:Z

    .line 183
    iget-object v0, p1, Lads_mobile_sdk/ks3;->c:Lads_mobile_sdk/m33;

    .line 184
    iget-object v1, p0, Lads_mobile_sdk/ks3;->c:Lads_mobile_sdk/m33;

    iget v2, v0, Lads_mobile_sdk/m33;->b:I

    iput v2, v1, Lads_mobile_sdk/m33;->b:I

    .line 185
    iget-object v2, v0, Lads_mobile_sdk/m33;->d:Ljava/lang/String;

    iput-object v2, v1, Lads_mobile_sdk/m33;->d:Ljava/lang/String;

    .line 186
    iget-object v2, v0, Lads_mobile_sdk/m33;->e:Ljava/lang/String;

    iput-object v2, v1, Lads_mobile_sdk/m33;->e:Ljava/lang/String;

    .line 187
    iget-object v2, v0, Lads_mobile_sdk/m33;->a:Ljava/lang/String;

    iput-object v2, v1, Lads_mobile_sdk/m33;->a:Ljava/lang/String;

    .line 188
    iget-object v2, v0, Lads_mobile_sdk/m33;->c:Ljava/lang/String;

    iput-object v2, v1, Lads_mobile_sdk/m33;->c:Ljava/lang/String;

    .line 189
    iget-object v2, v0, Lads_mobile_sdk/m33;->f:Ljava/lang/Boolean;

    iput-object v2, v1, Lads_mobile_sdk/m33;->f:Ljava/lang/Boolean;

    .line 190
    iget-boolean v0, v0, Lads_mobile_sdk/m33;->h:Z

    iput-boolean v0, v1, Lads_mobile_sdk/m33;->h:Z

    .line 192
    iget-object p1, p1, Lads_mobile_sdk/ks3;->d:Lads_mobile_sdk/zb;

    .line 193
    iget-object v0, p0, Lads_mobile_sdk/ks3;->d:Lads_mobile_sdk/zb;

    iget-object v1, p1, Lads_mobile_sdk/zb;->b:Ljava/lang/String;

    iput-object v1, v0, Lads_mobile_sdk/zb;->b:Ljava/lang/String;

    .line 194
    iget-object v1, p1, Lads_mobile_sdk/zb;->c:Ljava/lang/String;

    iput-object v1, v0, Lads_mobile_sdk/zb;->c:Ljava/lang/String;

    .line 195
    iget-boolean p1, p1, Lads_mobile_sdk/zb;->a:Z

    iput-boolean p1, v0, Lads_mobile_sdk/zb;->a:Z

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lads_mobile_sdk/ks3;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lads_mobile_sdk/ks3;

    iget-object v1, p0, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    iget-object v3, p1, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    iget-object v3, p1, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lads_mobile_sdk/ks3;->c:Lads_mobile_sdk/m33;

    iget-object v3, p1, Lads_mobile_sdk/ks3;->c:Lads_mobile_sdk/m33;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lads_mobile_sdk/ks3;->d:Lads_mobile_sdk/zb;

    iget-object p1, p1, Lads_mobile_sdk/ks3;->d:Lads_mobile_sdk/zb;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    invoke-virtual {v0}, Lads_mobile_sdk/n03;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    invoke-virtual {v1}, Lads_mobile_sdk/tn1;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lads_mobile_sdk/ks3;->c:Lads_mobile_sdk/m33;

    invoke-virtual {v0}, Lads_mobile_sdk/m33;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lads_mobile_sdk/ks3;->d:Lads_mobile_sdk/zb;

    invoke-virtual {v1}, Lads_mobile_sdk/zb;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    iget-object v1, p0, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    iget-object v2, p0, Lads_mobile_sdk/ks3;->c:Lads_mobile_sdk/m33;

    iget-object v3, p0, Lads_mobile_sdk/ks3;->d:Lads_mobile_sdk/zb;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TraceMetaSet(publisherRequestTraceMeta="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", internalRequestTraceMeta="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", renderTraceMeta="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adTraceMeta="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
