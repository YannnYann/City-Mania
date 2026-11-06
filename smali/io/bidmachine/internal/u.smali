###### Class io.bidmachine.internal.C4236u (io.bidmachine.internal.u)
.class public final Lio/bidmachine/internal/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lio/bidmachine/internal/y;

.field public c:Lio/bidmachine/internal/A;

.field public final d:Lio/bidmachine/internal/t;

.field public final e:Ljava/util/List;

.field public final f:Lio/bidmachine/internal/w;

.field public final g:Lio/bidmachine/models/DataRestrictions;

.field public final h:Lio/bidmachine/internal/v;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/internal/y;Lio/bidmachine/internal/A;Lio/bidmachine/internal/t;Ljava/util/List;Lio/bidmachine/internal/w;Lio/bidmachine/models/DataRestrictions;Lio/bidmachine/internal/v;)V
    .registers 10

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyRestrictionMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publisherPrivacySettings"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformPrivacySettings"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restrictionKindList"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyGroupRestrictions"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataRestrictions"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyDataMasker"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/internal/u;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/bidmachine/internal/u;->b:Lio/bidmachine/internal/y;

    .line 4
    iput-object p3, p0, Lio/bidmachine/internal/u;->c:Lio/bidmachine/internal/A;

    .line 5
    iput-object p4, p0, Lio/bidmachine/internal/u;->d:Lio/bidmachine/internal/t;

    .line 6
    iput-object p5, p0, Lio/bidmachine/internal/u;->e:Ljava/util/List;

    .line 7
    iput-object p6, p0, Lio/bidmachine/internal/u;->f:Lio/bidmachine/internal/w;

    .line 8
    iput-object p7, p0, Lio/bidmachine/internal/u;->g:Lio/bidmachine/models/DataRestrictions;

    .line 9
    iput-object p8, p0, Lio/bidmachine/internal/u;->h:Lio/bidmachine/internal/v;

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/models/DataRestrictions;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/u;->g:Lio/bidmachine/models/DataRestrictions;

    return-object v0
.end method

.method public final b()Lio/bidmachine/internal/t;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/u;->d:Lio/bidmachine/internal/t;

    return-object v0
.end method

.method public final c()Lio/bidmachine/internal/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/u;->h:Lio/bidmachine/internal/v;

    return-object v0
.end method

.method public final d()Lio/bidmachine/internal/w;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/u;->f:Lio/bidmachine/internal/w;

    return-object v0
.end method

.method public final e()Lio/bidmachine/internal/y;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/u;->b:Lio/bidmachine/internal/y;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lio/bidmachine/internal/u;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/internal/u;

    iget-object v1, p0, Lio/bidmachine/internal/u;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/internal/u;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/bidmachine/internal/u;->b:Lio/bidmachine/internal/y;

    iget-object v3, p1, Lio/bidmachine/internal/u;->b:Lio/bidmachine/internal/y;

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lio/bidmachine/internal/u;->c:Lio/bidmachine/internal/A;

    iget-object v3, p1, Lio/bidmachine/internal/u;->c:Lio/bidmachine/internal/A;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lio/bidmachine/internal/u;->d:Lio/bidmachine/internal/t;

    iget-object v3, p1, Lio/bidmachine/internal/u;->d:Lio/bidmachine/internal/t;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lio/bidmachine/internal/u;->e:Ljava/util/List;

    iget-object v3, p1, Lio/bidmachine/internal/u;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-object v1, p0, Lio/bidmachine/internal/u;->f:Lio/bidmachine/internal/w;

    iget-object v3, p1, Lio/bidmachine/internal/u;->f:Lio/bidmachine/internal/w;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    return v2

    :cond_4a
    iget-object v1, p0, Lio/bidmachine/internal/u;->g:Lio/bidmachine/models/DataRestrictions;

    iget-object v3, p1, Lio/bidmachine/internal/u;->g:Lio/bidmachine/models/DataRestrictions;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    return v2

    :cond_55
    iget-object v1, p0, Lio/bidmachine/internal/u;->h:Lio/bidmachine/internal/v;

    iget-object p1, p1, Lio/bidmachine/internal/u;->h:Lio/bidmachine/internal/v;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_60

    return v2

    :cond_60
    return v0
.end method

.method public final f()Lio/bidmachine/internal/A;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/u;->c:Lio/bidmachine/internal/A;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/u;->e:Ljava/util/List;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/u;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/u;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/internal/u;->b:Lio/bidmachine/internal/y;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/internal/u;->c:Lio/bidmachine/internal/A;

    invoke-virtual {v1}, Lio/bidmachine/internal/A;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/internal/u;->d:Lio/bidmachine/internal/t;

    invoke-virtual {v1}, Lio/bidmachine/internal/t;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/internal/u;->e:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/internal/u;->f:Lio/bidmachine/internal/w;

    invoke-virtual {v1}, Lio/bidmachine/internal/w;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/internal/u;->g:Lio/bidmachine/models/DataRestrictions;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/internal/u;->h:Lio/bidmachine/internal/v;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
