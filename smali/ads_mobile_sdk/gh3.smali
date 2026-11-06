###### Class ads_mobile_sdk.gh3 (ads_mobile_sdk.gh3)
.class public final Lads_mobile_sdk/gh3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/y11;

.field public final b:Lads_mobile_sdk/q11;

.field public final c:Lads_mobile_sdk/gf3;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/y11;Lads_mobile_sdk/q11;I)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    const/4 v0, 0x0

    if-eqz p3, :cond_6

    move-object p2, v0

    .line 2
    :cond_6
    invoke-direct {p0, p1, p2, v0}, Lads_mobile_sdk/gh3;-><init>(Lads_mobile_sdk/y11;Lads_mobile_sdk/q11;Lads_mobile_sdk/gf3;)V

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/y11;Lads_mobile_sdk/q11;Lads_mobile_sdk/gf3;)V
    .registers 5

    .line 3
    const-string v0, "signalId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lads_mobile_sdk/gh3;->a:Lads_mobile_sdk/y11;

    .line 96
    iput-object p2, p0, Lads_mobile_sdk/gh3;->b:Lads_mobile_sdk/q11;

    .line 97
    iput-object p3, p0, Lads_mobile_sdk/gh3;->c:Lads_mobile_sdk/gf3;

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
    instance-of v1, p1, Lads_mobile_sdk/gh3;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lads_mobile_sdk/gh3;

    iget-object v1, p0, Lads_mobile_sdk/gh3;->a:Lads_mobile_sdk/y11;

    iget-object v3, p1, Lads_mobile_sdk/gh3;->a:Lads_mobile_sdk/y11;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lads_mobile_sdk/gh3;->b:Lads_mobile_sdk/q11;

    iget-object v3, p1, Lads_mobile_sdk/gh3;->b:Lads_mobile_sdk/q11;

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lads_mobile_sdk/gh3;->c:Lads_mobile_sdk/gf3;

    iget-object p1, p1, Lads_mobile_sdk/gh3;->c:Lads_mobile_sdk/gf3;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/gh3;->a:Lads_mobile_sdk/y11;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lads_mobile_sdk/gh3;->b:Lads_mobile_sdk/q11;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lads_mobile_sdk/gh3;->c:Lads_mobile_sdk/gf3;

    if-nez v1, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-virtual {v1}, Lads_mobile_sdk/vz0;->hashCode()I

    move-result v2

    :goto_1f
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/gh3;->a:Lads_mobile_sdk/y11;

    iget-object v1, p0, Lads_mobile_sdk/gh3;->b:Lads_mobile_sdk/q11;

    iget-object v2, p0, Lads_mobile_sdk/gh3;->c:Lads_mobile_sdk/gf3;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SignalMeta(signalId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", cacheState="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", signalData="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
