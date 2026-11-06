###### Class ads_mobile_sdk.n01 (ads_mobile_sdk.n01)
.class public final Lads_mobile_sdk/n01;
.super Lads_mobile_sdk/i01;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_a

    .line 2
    sget-object p1, Lads_mobile_sdk/ir0;->c:Lads_mobile_sdk/ir0;

    invoke-virtual {p1}, Lads_mobile_sdk/ir0;->d()Ljava/lang/String;

    move-result-object p1

    :cond_a
    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, p1, p2}, Lads_mobile_sdk/n01;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5

    .line 4
    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lads_mobile_sdk/kk1;->c:Lads_mobile_sdk/kk1;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lads_mobile_sdk/i01;-><init>(Lads_mobile_sdk/kk1;I)V

    .line 84
    iput-object p1, p0, Lads_mobile_sdk/n01;->c:Ljava/lang/String;

    .line 85
    iput-boolean p2, p0, Lads_mobile_sdk/n01;->d:Z

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lads_mobile_sdk/n01;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lads_mobile_sdk/n01;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lads_mobile_sdk/n01;

    iget-object v1, p0, Lads_mobile_sdk/n01;->c:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/n01;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Lads_mobile_sdk/n01;->d:Z

    iget-boolean p1, p1, Lads_mobile_sdk/n01;->d:Z

    if-eq v1, p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/n01;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lads_mobile_sdk/n01;->d:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    :cond_d
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/n01;->c:Ljava/lang/String;

    iget-boolean v1, p0, Lads_mobile_sdk/n01;->d:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoFillError(message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isThrottled="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
