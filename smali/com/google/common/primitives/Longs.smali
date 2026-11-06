###### Class com.google.common.primitives.Longs (com.google.common.primitives.Longs)
.class public final Lcom/google/common/primitives/Longs;
.super Ljava/lang/Object;
.source "Longs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Longs$AsciiDigits;
    }
.end annotation


# direct methods
.method public static hashCode(J)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 0
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static varargs max([J)J
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 215
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_7

    move v0, v2

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 216
    aget-wide v0, p0, v1

    .line 217
    :goto_d
    array-length v3, p0

    if-ge v2, v3, :cond_1a

    .line 218
    aget-wide v3, p0, v2

    cmp-long v5, v3, v0

    if-lez v5, :cond_17

    move-wide v0, v3

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1a
    return-wide v0
.end method

.method public static tryParse(Ljava/lang/String;I)Ljava/lang/Long;
    .registers 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "string",
            "radix"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 401
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    return-object v3

    :cond_12
    const/4 v2, 0x2

    if-lt v1, v2, :cond_79

    const/16 v2, 0x24

    if-gt v1, v2, :cond_79

    const/4 v2, 0x0

    .line 408
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_23

    const/4 v2, 0x1

    .line 410
    :cond_23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v2, v4, :cond_2a

    return-object v3

    :cond_2a
    add-int/lit8 v4, v2, 0x1

    .line 413
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/google/common/primitives/Longs$AsciiDigits;->digit(C)I

    move-result v5

    if-ltz v5, :cond_78

    if-lt v5, v1, :cond_39

    goto :goto_78

    :cond_39
    neg-int v5, v5

    int-to-long v5, v5

    int-to-long v7, v1

    const-wide/high16 v9, -0x8000000000000000L

    .line 419
    div-long v11, v9, v7

    .line 421
    :goto_40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v4, v13, :cond_66

    add-int/lit8 v13, v4, 0x1

    .line 422
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/Longs$AsciiDigits;->digit(C)I

    move-result v4

    if-ltz v4, :cond_65

    if-ge v4, v1, :cond_65

    cmp-long v14, v5, v11

    if-gez v14, :cond_59

    goto :goto_65

    :cond_59
    mul-long/2addr v5, v7

    int-to-long v14, v4

    add-long v16, v14, v9

    cmp-long v4, v5, v16

    if-gez v4, :cond_62

    return-object v3

    :cond_62
    sub-long/2addr v5, v14

    move v4, v13

    goto :goto_40

    :cond_65
    :goto_65
    return-object v3

    :cond_66
    if-eqz v2, :cond_6d

    .line 434
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_6d
    cmp-long v0, v5, v9

    if-nez v0, :cond_72

    return-object v3

    :cond_72
    neg-long v0, v5

    .line 438
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_78
    :goto_78
    return-object v3

    .line 405
    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radix must be between MIN_RADIX and MAX_RADIX but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.google.common.primitives.Longs.AsciiDigits (com.google.common.primitives.Longs$AsciiDigits)
.class public final Lcom/google/common/primitives/Longs$AsciiDigits;
.super Ljava/lang/Object;
.source "Longs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Longs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AsciiDigits"
.end annotation


# static fields
.field public static final asciiDigits:[B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x80

    .line 340
    new-array v0, v0, [B

    const/4 v1, -0x1

    .line 341
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    const/16 v3, 0xa

    if-ge v2, v3, :cond_16

    add-int/lit8 v3, v2, 0x30

    int-to-byte v4, v2

    .line 343
    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    :goto_16
    const/16 v2, 0x1a

    if-ge v1, v2, :cond_28

    add-int/lit8 v2, v1, 0x41

    add-int/lit8 v3, v1, 0xa

    int-to-byte v3, v3

    .line 346
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x61

    .line 347
    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 349
    :cond_28
    sput-object v0, Lcom/google/common/primitives/Longs$AsciiDigits;->asciiDigits:[B

    return-void
.end method

.method public static digit(C)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    const/16 v0, 0x80

    if-ge p0, v0, :cond_9

    .line 353
    sget-object v0, Lcom/google/common/primitives/Longs$AsciiDigits;->asciiDigits:[B

    aget-byte p0, v0, p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method
