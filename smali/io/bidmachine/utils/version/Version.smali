###### Class io.bidmachine.utils.version.Version (io.bidmachine.utils.version.Version)
.class public Lio/bidmachine/utils/version/Version;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/bidmachine/utils/version/Version;",
        ">;"
    }
.end annotation


# instance fields
.field public final major:I

.field public final minor:I

.field public final patch:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/bidmachine/utils/version/Version;->major:I

    .line 3
    iput p2, p0, Lio/bidmachine/utils/version/Version;->minor:I

    .line 4
    iput p3, p0, Lio/bidmachine/utils/version/Version;->patch:I

    return-void
.end method

.method public static parseVersion(Ljava/lang/String;)Lio/bidmachine/utils/version/Version;
    .registers 8

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 5
    :cond_8
    :try_start_8
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 6
    array-length v0, p0

    if-nez v0, :cond_12

    return-object v1

    :cond_12
    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    .line 13
    :goto_17
    array-length v6, p0

    if-ge v2, v6, :cond_43

    if-eqz v2, :cond_3a

    const/4 v6, 0x1

    if-eq v2, v6, :cond_33

    const/4 v6, 0x2

    if-eq v2, v6, :cond_2c

    mul-int/lit8 v5, v5, 0x64

    .line 25
    aget-object v6, p0, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_40

    .line 26
    :cond_2c
    aget-object v5, p0, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_40

    .line 27
    :cond_33
    aget-object v4, p0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_40

    .line 28
    :cond_3a
    aget-object v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 40
    :cond_43
    new-instance p0, Lio/bidmachine/utils/version/Version;

    invoke-direct {p0, v3, v4, v5}, Lio/bidmachine/utils/version/Version;-><init>(III)V
    :try_end_48
    .catchall {:try_start_8 .. :try_end_48} :catchall_49

    return-object p0

    :catchall_49
    return-object v1
.end method


# virtual methods
.method public compareTo(Lio/bidmachine/utils/version/Version;)I
    .registers 4

    .line 2
    iget v0, p0, Lio/bidmachine/utils/version/Version;->major:I

    iget v1, p1, Lio/bidmachine/utils/version/Version;->major:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 6
    :cond_b
    iget v0, p0, Lio/bidmachine/utils/version/Version;->minor:I

    iget v1, p1, Lio/bidmachine/utils/version/Version;->minor:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    .line 10
    :cond_16
    iget v0, p0, Lio/bidmachine/utils/version/Version;->patch:I

    iget p1, p1, Lio/bidmachine/utils/version/Version;->patch:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/utils/version/Version;

    invoke-virtual {p0, p1}, Lio/bidmachine/utils/version/Version;->compareTo(Lio/bidmachine/utils/version/Version;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 4
    :cond_12
    check-cast p1, Lio/bidmachine/utils/version/Version;

    .line 5
    iget v2, p0, Lio/bidmachine/utils/version/Version;->major:I

    iget v3, p1, Lio/bidmachine/utils/version/Version;->major:I

    if-ne v2, v3, :cond_27

    iget v2, p0, Lio/bidmachine/utils/version/Version;->minor:I

    iget v3, p1, Lio/bidmachine/utils/version/Version;->minor:I

    if-ne v2, v3, :cond_27

    iget v2, p0, Lio/bidmachine/utils/version/Version;->patch:I

    iget p1, p1, Lio/bidmachine/utils/version/Version;->patch:I

    if-ne v2, p1, :cond_27

    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget v0, p0, Lio/bidmachine/utils/version/Version;->major:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/utils/version/Version;->minor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lio/bidmachine/utils/version/Version;->patch:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAfter(Lio/bidmachine/utils/version/Version;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/utils/version/Version;->compareTo(Lio/bidmachine/utils/version/Version;)I

    move-result p1

    if-lez p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public isAfterOrEquals(Lio/bidmachine/utils/version/Version;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/utils/version/Version;->compareTo(Lio/bidmachine/utils/version/Version;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public isBefore(Lio/bidmachine/utils/version/Version;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/utils/version/Version;->compareTo(Lio/bidmachine/utils/version/Version;)I

    move-result p1

    if-gez p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public isBeforeOrEquals(Lio/bidmachine/utils/version/Version;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/utils/version/Version;->compareTo(Lio/bidmachine/utils/version/Version;)I

    move-result p1

    if-gtz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lio/bidmachine/utils/version/Version;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/utils/version/Version;->minor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/utils/version/Version;->patch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
