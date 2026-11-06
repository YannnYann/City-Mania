###### Class ads_mobile_sdk.qb2 (ads_mobile_sdk.qb2)
.class public final Lads_mobile_sdk/qb2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/pb2;

.field public final b:Lads_mobile_sdk/pb2;

.field public final c:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/pb2;Lads_mobile_sdk/pb2;Z)V
    .registers 5

    .line 1
    const-string v0, "impressionPrerequisite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickPrerequisite"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lads_mobile_sdk/qb2;->a:Lads_mobile_sdk/pb2;

    .line 12
    iput-object p2, p0, Lads_mobile_sdk/qb2;->b:Lads_mobile_sdk/pb2;

    .line 13
    iput-boolean p3, p0, Lads_mobile_sdk/qb2;->c:Z

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
    instance-of v1, p1, Lads_mobile_sdk/qb2;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lads_mobile_sdk/qb2;

    iget-object v1, p0, Lads_mobile_sdk/qb2;->a:Lads_mobile_sdk/pb2;

    iget-object v3, p1, Lads_mobile_sdk/qb2;->a:Lads_mobile_sdk/pb2;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lads_mobile_sdk/qb2;->b:Lads_mobile_sdk/pb2;

    iget-object v3, p1, Lads_mobile_sdk/qb2;->b:Lads_mobile_sdk/pb2;

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-boolean v1, p0, Lads_mobile_sdk/qb2;->c:Z

    iget-boolean p1, p1, Lads_mobile_sdk/qb2;->c:Z

    if-eq v1, p1, :cond_21

    return v2

    :cond_21
    return v0
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/qb2;->a:Lads_mobile_sdk/pb2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lads_mobile_sdk/qb2;->b:Lads_mobile_sdk/pb2;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lads_mobile_sdk/qb2;->c:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :cond_16
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/qb2;->a:Lads_mobile_sdk/pb2;

    iget-object v1, p0, Lads_mobile_sdk/qb2;->b:Lads_mobile_sdk/pb2;

    iget-boolean v2, p0, Lads_mobile_sdk/qb2;->c:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OfflineAdConfig(impressionPrerequisite="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", clickPrerequisite="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", notificationFlowEnabled="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
