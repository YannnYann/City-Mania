###### Class io.bidmachine.media3.common.FlagSet (io.bidmachine.media3.common.FlagSet)
.class public final Lio/bidmachine/media3/common/FlagSet;
.super Ljava/lang/Object;
.source "FlagSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/FlagSet$Builder;
    }
.end annotation


# instance fields
.field public final flags:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/util/SparseBooleanArray;)V
    .registers 2

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lio/bidmachine/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/SparseBooleanArray;Lio/bidmachine/media3/common/FlagSet$1;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/FlagSet;-><init>(Landroid/util/SparseBooleanArray;)V

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .registers 3

    .line 181
    iget-object v0, p0, Lio/bidmachine/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public varargs containsAny([I)Z
    .registers 6

    .line 191
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget v3, p1, v2

    .line 192
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/common/FlagSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 221
    :cond_4
    instance-of v1, p1, Lio/bidmachine/media3/common/FlagSet;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 224
    :cond_a
    check-cast p1, Lio/bidmachine/media3/common/FlagSet;

    .line 225
    sget v1, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v1, v3, :cond_33

    .line 227
    invoke-virtual {p0}, Lio/bidmachine/media3/common/FlagSet;->size()I

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/media3/common/FlagSet;->size()I

    move-result v3

    if-eq v1, v3, :cond_1d

    return v2

    :cond_1d
    move v1, v2

    .line 230
    :goto_1e
    invoke-virtual {p0}, Lio/bidmachine/media3/common/FlagSet;->size()I

    move-result v3

    if-ge v1, v3, :cond_32

    .line 231
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/FlagSet;->get(I)I

    move-result v3

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/FlagSet;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_2f

    return v2

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v0

    .line 237
    :cond_33
    iget-object v0, p0, Lio/bidmachine/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    iget-object p1, p1, Lio/bidmachine/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)I
    .registers 4

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0}, Lio/bidmachine/media3/common/FlagSet;->size()I

    move-result v1

    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/common/util/Assertions;->checkIndex(III)I

    .line 213
    iget-object v0, p0, Lio/bidmachine/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 4

    .line 243
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1c

    .line 245
    invoke-virtual {p0}, Lio/bidmachine/media3/common/FlagSet;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 246
    :goto_b
    invoke-virtual {p0}, Lio/bidmachine/media3/common/FlagSet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    mul-int/lit8 v0, v0, 0x1f

    .line 247
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/FlagSet;->get(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    return v0

    .line 251
    :cond_1c
    iget-object v0, p0, Lio/bidmachine/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .line 201
    iget-object v0, p0, Lio/bidmachine/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method

###### Class io.bidmachine.media3.common.FlagSet.AnonymousClass1 (io.bidmachine.media3.common.FlagSet$1)
.class public synthetic Lio/bidmachine/media3/common/FlagSet$1;
.super Ljava/lang/Object;
.source "FlagSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/FlagSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.common.FlagSet.Builder (io.bidmachine.media3.common.FlagSet$Builder)
.class public final Lio/bidmachine/media3/common/FlagSet$Builder;
.super Ljava/lang/Object;
.source "FlagSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/FlagSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public buildCalled:Z

.field public final flags:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/common/FlagSet$Builder;->flags:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public add(I)Lio/bidmachine/media3/common/FlagSet$Builder;
    .registers 4

    .line 59
    iget-boolean v0, p0, Lio/bidmachine/media3/common/FlagSet$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 60
    iget-object v0, p0, Lio/bidmachine/media3/common/FlagSet$Builder;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return-object p0
.end method

.method public addAll(Lio/bidmachine/media3/common/FlagSet;)Lio/bidmachine/media3/common/FlagSet$Builder;
    .registers 4

    const/4 v0, 0x0

    .line 104
    :goto_1
    invoke-virtual {p1}, Lio/bidmachine/media3/common/FlagSet;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 105
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/FlagSet;->get(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/FlagSet$Builder;->add(I)Lio/bidmachine/media3/common/FlagSet$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-object p0
.end method

.method public varargs addAll([I)Lio/bidmachine/media3/common/FlagSet$Builder;
    .registers 5

    .line 89
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget v2, p1, v1

    .line 90
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/FlagSet$Builder;->add(I)Lio/bidmachine/media3/common/FlagSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-object p0
.end method

.method public addIf(IZ)Lio/bidmachine/media3/common/FlagSet$Builder;
    .registers 3

    if-eqz p2, :cond_7

    .line 75
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/FlagSet$Builder;->add(I)Lio/bidmachine/media3/common/FlagSet$Builder;

    move-result-object p1

    return-object p1

    :cond_7
    return-object p0
.end method

.method public build()Lio/bidmachine/media3/common/FlagSet;
    .registers 4

    .line 161
    iget-boolean v0, p0, Lio/bidmachine/media3/common/FlagSet$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 162
    iput-boolean v1, p0, Lio/bidmachine/media3/common/FlagSet$Builder;->buildCalled:Z

    .line 163
    new-instance v0, Lio/bidmachine/media3/common/FlagSet;

    iget-object v1, p0, Lio/bidmachine/media3/common/FlagSet$Builder;->flags:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/common/FlagSet;-><init>(Landroid/util/SparseBooleanArray;Lio/bidmachine/media3/common/FlagSet$1;)V

    return-object v0
.end method
