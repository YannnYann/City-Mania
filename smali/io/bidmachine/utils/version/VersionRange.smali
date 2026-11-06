###### Class io.bidmachine.utils.version.VersionRange (io.bidmachine.utils.version.VersionRange)
.class public Lio/bidmachine/utils/version/VersionRange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final from:Lio/bidmachine/utils/version/Version;

.field public final isInclusiveFrom:Z

.field public final isInclusiveTo:Z

.field public final to:Lio/bidmachine/utils/version/Version;


# direct methods
.method public constructor <init>(Lio/bidmachine/utils/version/Version;Lio/bidmachine/utils/version/Version;ZZ)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/utils/version/VersionRange;->from:Lio/bidmachine/utils/version/Version;

    .line 3
    iput-object p2, p0, Lio/bidmachine/utils/version/VersionRange;->to:Lio/bidmachine/utils/version/Version;

    .line 4
    iput-boolean p3, p0, Lio/bidmachine/utils/version/VersionRange;->isInclusiveFrom:Z

    .line 5
    iput-boolean p4, p0, Lio/bidmachine/utils/version/VersionRange;->isInclusiveTo:Z

    return-void
.end method

.method public static isAfter(Lio/bidmachine/utils/version/Version;Lio/bidmachine/utils/version/Version;Z)Z
    .registers 4

    if-eqz p2, :cond_8

    .line 1
    invoke-virtual {p1, p0}, Lio/bidmachine/utils/version/Version;->isAfterOrEquals(Lio/bidmachine/utils/version/Version;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_8
    if-nez p2, :cond_12

    invoke-virtual {p1, p0}, Lio/bidmachine/utils/version/Version;->isAfter(Lio/bidmachine/utils/version/Version;)Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static isBefore(Lio/bidmachine/utils/version/Version;Lio/bidmachine/utils/version/Version;Z)Z
    .registers 4

    if-eqz p2, :cond_8

    .line 1
    invoke-virtual {p1, p0}, Lio/bidmachine/utils/version/Version;->isBeforeOrEquals(Lio/bidmachine/utils/version/Version;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_8
    if-nez p2, :cond_12

    invoke-virtual {p1, p0}, Lio/bidmachine/utils/version/Version;->isBefore(Lio/bidmachine/utils/version/Version;)Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static parseVersionRange(Ljava/lang/String;)Lio/bidmachine/utils/version/VersionRange;
    .registers 9

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 8
    :cond_8
    :try_start_8
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 9
    const-string v2, "("

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v0, :cond_1c

    if-eqz v2, :cond_1a

    goto :goto_1c

    :cond_1a
    move v0, v3

    goto :goto_20

    .line 11
    :cond_1c
    :goto_1c
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 14
    :goto_20
    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    .line 15
    const-string v4, ")"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v2, :cond_34

    if-eqz v4, :cond_32

    goto :goto_34

    :cond_32
    move v2, v3

    goto :goto_3d

    .line 17
    :cond_34
    :goto_34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 21
    :goto_3d
    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 22
    array-length v6, v4

    const/4 v7, 0x2

    if-ge v6, v7, :cond_54

    .line 23
    invoke-static {p0}, Lio/bidmachine/utils/version/Version;->parseVersion(Ljava/lang/String;)Lio/bidmachine/utils/version/Version;

    move-result-object p0

    if-eqz p0, :cond_53

    .line 25
    new-instance v3, Lio/bidmachine/utils/version/VersionRange;

    invoke-direct {v3, p0, p0, v0, v2}, Lio/bidmachine/utils/version/VersionRange;-><init>(Lio/bidmachine/utils/version/Version;Lio/bidmachine/utils/version/Version;ZZ)V

    return-object v3

    :cond_53
    return-object v1

    .line 28
    :cond_54
    aget-object p0, v4, v5

    invoke-static {p0}, Lio/bidmachine/utils/version/Version;->parseVersion(Ljava/lang/String;)Lio/bidmachine/utils/version/Version;

    move-result-object p0

    .line 29
    aget-object v3, v4, v3

    invoke-static {v3}, Lio/bidmachine/utils/version/Version;->parseVersion(Ljava/lang/String;)Lio/bidmachine/utils/version/Version;

    move-result-object v3

    .line 30
    new-instance v4, Lio/bidmachine/utils/version/VersionRange;

    invoke-direct {v4, p0, v3, v0, v2}, Lio/bidmachine/utils/version/VersionRange;-><init>(Lio/bidmachine/utils/version/Version;Lio/bidmachine/utils/version/Version;ZZ)V
    :try_end_65
    .catchall {:try_start_8 .. :try_end_65} :catchall_66

    return-object v4

    :catchall_66
    return-object v1
.end method


# virtual methods
.method public contains(Lio/bidmachine/utils/version/Version;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/utils/version/VersionRange;->from:Lio/bidmachine/utils/version/Version;

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    iget-object v2, p0, Lio/bidmachine/utils/version/VersionRange;->to:Lio/bidmachine/utils/version/Version;

    if-eqz v2, :cond_1c

    iget-boolean v2, p0, Lio/bidmachine/utils/version/VersionRange;->isInclusiveFrom:Z

    .line 2
    invoke-static {v0, p1, v2}, Lio/bidmachine/utils/version/VersionRange;->isAfter(Lio/bidmachine/utils/version/Version;Lio/bidmachine/utils/version/Version;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lio/bidmachine/utils/version/VersionRange;->to:Lio/bidmachine/utils/version/Version;

    iget-boolean v2, p0, Lio/bidmachine/utils/version/VersionRange;->isInclusiveTo:Z

    .line 3
    invoke-static {v0, p1, v2}, Lio/bidmachine/utils/version/VersionRange;->isBefore(Lio/bidmachine/utils/version/Version;Lio/bidmachine/utils/version/Version;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v1

    .line 5
    :cond_1c
    iget-object v0, p0, Lio/bidmachine/utils/version/VersionRange;->from:Lio/bidmachine/utils/version/Version;

    if-eqz v0, :cond_2d

    iget-object v2, p0, Lio/bidmachine/utils/version/VersionRange;->to:Lio/bidmachine/utils/version/Version;

    if-nez v2, :cond_2d

    iget-boolean v2, p0, Lio/bidmachine/utils/version/VersionRange;->isInclusiveFrom:Z

    invoke-static {v0, p1, v2}, Lio/bidmachine/utils/version/VersionRange;->isAfter(Lio/bidmachine/utils/version/Version;Lio/bidmachine/utils/version/Version;Z)Z

    move-result v0

    if-eqz v0, :cond_2d

    return v1

    .line 7
    :cond_2d
    iget-object v0, p0, Lio/bidmachine/utils/version/VersionRange;->from:Lio/bidmachine/utils/version/Version;

    if-nez v0, :cond_3e

    iget-object v0, p0, Lio/bidmachine/utils/version/VersionRange;->to:Lio/bidmachine/utils/version/Version;

    if-eqz v0, :cond_3e

    iget-boolean v2, p0, Lio/bidmachine/utils/version/VersionRange;->isInclusiveTo:Z

    invoke-static {v0, p1, v2}, Lio/bidmachine/utils/version/VersionRange;->isBefore(Lio/bidmachine/utils/version/Version;Lio/bidmachine/utils/version/Version;Z)Z

    move-result p1

    if-eqz p1, :cond_3e

    return v1

    .line 10
    :cond_3e
    iget-object p1, p0, Lio/bidmachine/utils/version/VersionRange;->from:Lio/bidmachine/utils/version/Version;

    if-nez p1, :cond_47

    iget-object p1, p0, Lio/bidmachine/utils/version/VersionRange;->to:Lio/bidmachine/utils/version/Version;

    if-nez p1, :cond_47

    return v1

    :cond_47
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_35

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_35

    .line 4
    :cond_12
    check-cast p1, Lio/bidmachine/utils/version/VersionRange;

    .line 5
    iget-boolean v2, p0, Lio/bidmachine/utils/version/VersionRange;->isInclusiveFrom:Z

    iget-boolean v3, p1, Lio/bidmachine/utils/version/VersionRange;->isInclusiveFrom:Z

    if-ne v2, v3, :cond_35

    iget-boolean v2, p0, Lio/bidmachine/utils/version/VersionRange;->isInclusiveTo:Z

    iget-boolean v3, p1, Lio/bidmachine/utils/version/VersionRange;->isInclusiveTo:Z

    if-ne v2, v3, :cond_35

    iget-object v2, p0, Lio/bidmachine/utils/version/VersionRange;->from:Lio/bidmachine/utils/version/Version;

    iget-object v3, p1, Lio/bidmachine/utils/version/VersionRange;->from:Lio/bidmachine/utils/version/Version;

    .line 7
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lio/bidmachine/utils/version/VersionRange;->to:Lio/bidmachine/utils/version/Version;

    iget-object p1, p1, Lio/bidmachine/utils/version/VersionRange;->to:Lio/bidmachine/utils/version/Version;

    .line 8
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    return v0

    :cond_35
    :goto_35
    return v1
.end method
