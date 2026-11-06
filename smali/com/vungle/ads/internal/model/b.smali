###### Class com.vungle.ads.internal.model.b (com.vungle.ads.internal.model.b)
.class public final Lcom/vungle/ads/internal/model/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public e:Lcom/vungle/ads/internal/model/a;

.field public f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    const-string v0, "adIdentifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/model/b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/vungle/ads/internal/model/b;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/vungle/ads/internal/model/b;->c:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lcom/vungle/ads/internal/model/b;->d:Z

    .line 19
    sget-object p1, Lcom/vungle/ads/internal/model/a;->a:Lcom/vungle/ads/internal/model/a;

    iput-object p1, p0, Lcom/vungle/ads/internal/model/b;->e:Lcom/vungle/ads/internal/model/a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(J)V
    .registers 3

    .line 3
    iput-wide p1, p0, Lcom/vungle/ads/internal/model/b;->f:J

    return-void
.end method

.method public final a(Lcom/vungle/ads/internal/model/a;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/model/b;->e:Lcom/vungle/ads/internal/model/a;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/b;->a:Ljava/lang/String;

    const-string v1, "VUNGLE_AI_LABEL_ICON_URL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/b;->e:Lcom/vungle/ads/internal/model/a;

    sget-object v1, Lcom/vungle/ads/internal/model/a;->c:Lcom/vungle/ads/internal/model/a;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_4c

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/vungle/ads/internal/model/b;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_4c

    .line 2
    :cond_14
    check-cast p1, Lcom/vungle/ads/internal/model/b;

    .line 3
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b;->e:Lcom/vungle/ads/internal/model/a;

    iget-object v2, p1, Lcom/vungle/ads/internal/model/b;->e:Lcom/vungle/ads/internal/model/a;

    if-eq v1, v2, :cond_1d

    return v0

    .line 4
    :cond_1d
    iget-wide v1, p0, Lcom/vungle/ads/internal/model/b;->f:J

    iget-wide v3, p1, Lcom/vungle/ads/internal/model/b;->f:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_26

    return v0

    .line 5
    :cond_26
    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/b;->d:Z

    iget-boolean v2, p1, Lcom/vungle/ads/internal/model/b;->d:Z

    if-eq v1, v2, :cond_2d

    return v0

    .line 6
    :cond_2d
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/vungle/ads/internal/model/b;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v0

    .line 7
    :cond_38
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/vungle/ads/internal/model/b;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v0

    .line 8
    :cond_43
    iget-object v0, p0, Lcom/vungle/ads/internal/model/b;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/vungle/ads/internal/model/b;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4c
    :goto_4c
    return v0
.end method

.method public final f()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/b;->a:Ljava/lang/String;

    const-string v1, "vmURL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/b;->a:Ljava/lang/String;

    const-string v1, "MAIN_IMAGE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/vungle/ads/internal/model/b;->a:Ljava/lang/String;

    const-string v1, "MAIN_VIDEO"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    return v0

    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0
.end method

.method public final h()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/b;->a:Ljava/lang/String;

    const-string v1, "MAIN_VIDEO"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Lcom/vungle/ads/internal/model/b;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b;->e:Lcom/vungle/ads/internal/model/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-wide v2, p0, Lcom/vungle/ads/internal/model/b;->f:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    iget-boolean v0, p0, Lcom/vungle/ads/internal/model/b;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/b;->a:Ljava/lang/String;

    const-string v1, "VUNGLE_PRIVACY_ICON_URL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/internal/model/b;->d:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "AdAsset(adIdentifier="

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serverPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", localPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b;->e:Lcom/vungle/ads/internal/model/a;

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-wide v1, p0, Lcom/vungle/ads/internal/model/b;->f:J

    .line 89
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/b;->d:Z

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
