###### Class com.vungle.ads.internal.util.t (com.vungle.ads.internal.util.t)
.class public final Lcom/vungle/ads/internal/util/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Boolean;

.field public h:Lcom/vungle/ads/internal/h;

.field public i:Ljava/lang/Boolean;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/Long;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 1

    if-eqz p0, :cond_7

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()Ljava/lang/Long;
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/vungle/ads/internal/util/t;->k:Ljava/lang/Long;

    return-object v0
.end method

.method public final a(Lcom/vungle/ads/internal/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/util/t;->h:Lcom/vungle/ads/internal/h;

    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/util/t;->i:Ljava/lang/Boolean;

    return-void
.end method

.method public final a(Ljava/lang/Long;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lcom/vungle/ads/internal/util/t;->k:Ljava/lang/Long;

    return-void
.end method

.method public final b()Ljava/lang/Boolean;
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/vungle/ads/internal/util/t;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final b(Ljava/lang/Boolean;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/util/t;->g:Ljava/lang/Boolean;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/util/t;->d:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/util/t;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/util/t;->b:Ljava/lang/String;

    return-void
.end method

.method public final d()Lcom/vungle/ads/internal/h;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/util/t;->h:Lcom/vungle/ads/internal/h;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/util/t;->c:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/util/t;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/util/t;->j:Ljava/lang/String;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_b

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    const-class v2, Lcom/vungle/ads/internal/util/t;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    return v2

    .line 3
    :cond_16
    const-string v1, "null cannot be cast to non-null type com.vungle.ads.internal.util.LogEntry"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/vungle/ads/internal/util/t;

    .line 5
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/util/t;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v2

    .line 6
    :cond_28
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/util/t;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    return v2

    .line 7
    :cond_33
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/util/t;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    return v2

    .line 8
    :cond_3e
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/util/t;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    return v2

    .line 9
    :cond_49
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/util/t;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    return v2

    .line 10
    :cond_54
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/util/t;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    return v2

    .line 11
    :cond_5f
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->g:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vungle/ads/internal/util/t;->g:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    return v2

    .line 12
    :cond_6a
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->h:Lcom/vungle/ads/internal/h;

    iget-object v3, p1, Lcom/vungle/ads/internal/util/t;->h:Lcom/vungle/ads/internal/h;

    if-eq v1, v3, :cond_71

    return v2

    .line 13
    :cond_71
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->i:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vungle/ads/internal/util/t;->i:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    return v2

    .line 14
    :cond_7c
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/util/t;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_87

    return v2

    .line 15
    :cond_87
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->k:Ljava/lang/Long;

    iget-object v3, p1, Lcom/vungle/ads/internal/util/t;->k:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_92

    return v2

    .line 16
    :cond_92
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/util/t;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9d

    return v2

    .line 17
    :cond_9d
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->m:Ljava/lang/String;

    iget-object p1, p1, Lcom/vungle/ads/internal/util/t;->m:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a8

    return v2

    :cond_a8
    return v0
.end method

.method public final f()Ljava/lang/Boolean;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/util/t;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/util/t;->e:Ljava/lang/String;

    return-void
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/util/t;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/util/t;->a:Ljava/lang/String;

    return-void
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/util/t;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/util/t;->f:Ljava/lang/String;

    return-void
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/util/t;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/ads/internal/util/t;->a(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/vungle/ads/internal/util/t;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Lcom/vungle/ads/internal/util/t;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/ads/internal/util/t;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/vungle/ads/internal/util/t;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-object v0, p0, Lcom/vungle/ads/internal/util/t;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/ads/internal/util/t;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/vungle/ads/internal/util/t;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 7
    iget-object v0, p0, Lcom/vungle/ads/internal/util/t;->g:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_40

    :cond_3f
    move v0, v2

    :goto_40
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 8
    iget-object v0, p0, Lcom/vungle/ads/internal/util/t;->h:Lcom/vungle/ads/internal/h;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_4d

    :cond_4c
    move v0, v2

    :goto_4d
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 9
    iget-object v0, p0, Lcom/vungle/ads/internal/util/t;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5a

    :cond_59
    move v0, v2

    :goto_5a
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 10
    iget-object v0, p0, Lcom/vungle/ads/internal/util/t;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/ads/internal/util/t;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->k:Ljava/lang/Long;

    if-eqz v1, :cond_6e

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_6e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/vungle/ads/internal/util/t;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 13
    iget-object v0, p0, Lcom/vungle/ads/internal/util/t;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/ads/internal/util/t;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/util/t;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/util/t;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/util/t;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/util/t;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/util/t;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogEntry(placementRefId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", creativeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mediationName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->e:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vmVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->f:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adoEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->g:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->h:Lcom/vungle/ads/internal/h;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " adPoddingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->i:Ljava/lang/Boolean;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", experiments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->j:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adLoadType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->k:Ljava/lang/Long;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adapterAdFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->l:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mediationPartnerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v1, p0, Lcom/vungle/ads/internal/util/t;->m:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
