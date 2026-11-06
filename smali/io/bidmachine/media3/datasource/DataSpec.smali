###### Class io.bidmachine.media3.datasource.DataSpec (io.bidmachine.media3.datasource.DataSpec)
.class public final Lio/bidmachine/media3/datasource/DataSpec;
.super Ljava/lang/Object;
.source "DataSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/datasource/DataSpec$Builder;
    }
.end annotation


# instance fields
.field public final absoluteStreamPosition:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final customData:Ljava/lang/Object;

.field public final flags:I

.field public final httpBody:[B

.field public final httpMethod:I

.field public final httpRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final key:Ljava/lang/String;

.field public final length:J

.field public final position:J

.field public final uri:Landroid/net/Uri;

.field public final uriPositionOffset:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const-string v0, "media3.datasource"

    invoke-static {v0}, Lio/bidmachine/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "JI[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JJ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    move-wide/from16 v0, p2

    move-object/from16 v2, p5

    move-wide/from16 v3, p7

    move-wide/from16 v5, p9

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-long v7, v0, v3

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ltz v11, :cond_17

    move v11, v13

    goto :goto_18

    :cond_17
    move v11, v12

    .line 474
    :goto_18
    invoke-static {v11}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    cmp-long v11, v3, v9

    if-ltz v11, :cond_21

    move v11, v13

    goto :goto_22

    :cond_21
    move v11, v12

    .line 475
    :goto_22
    invoke-static {v11}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    cmp-long v9, v5, v9

    if-gtz v9, :cond_2f

    const-wide/16 v9, -0x1

    cmp-long v9, v5, v9

    if-nez v9, :cond_30

    :cond_2f
    move v12, v13

    .line 476
    :cond_30
    invoke-static {v12}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 477
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lio/bidmachine/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    .line 478
    iput-wide v0, p0, Lio/bidmachine/media3/datasource/DataSpec;->uriPositionOffset:J

    move/from16 p1, p4

    .line 479
    iput p1, p0, Lio/bidmachine/media3/datasource/DataSpec;->httpMethod:I

    if-eqz v2, :cond_47

    .line 480
    array-length p1, v2

    if-eqz p1, :cond_47

    goto :goto_49

    :cond_47
    const/4 p1, 0x0

    move-object v2, p1

    :goto_49
    iput-object v2, p0, Lio/bidmachine/media3/datasource/DataSpec;->httpBody:[B

    .line 481
    new-instance p1, Ljava/util/HashMap;

    move-object/from16 v0, p6

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    .line 482
    iput-wide v3, p0, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    .line 483
    iput-wide v7, p0, Lio/bidmachine/media3/datasource/DataSpec;->absoluteStreamPosition:J

    .line 484
    iput-wide v5, p0, Lio/bidmachine/media3/datasource/DataSpec;->length:J

    move-object/from16 p1, p11

    .line 485
    iput-object p1, p0, Lio/bidmachine/media3/datasource/DataSpec;->key:Ljava/lang/String;

    move/from16 p1, p12

    .line 486
    iput p1, p0, Lio/bidmachine/media3/datasource/DataSpec;->flags:I

    move-object/from16 p1, p13

    .line 487
    iput-object p1, p0, Lio/bidmachine/media3/datasource/DataSpec;->customData:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;Lio/bidmachine/media3/datasource/DataSpec$1;)V
    .registers 15

    .line 39
    invoke-direct/range {p0 .. p13}, Lio/bidmachine/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static getStringForHttpMethod(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    const/4 v0, 0x2

    if-eq p0, v0, :cond_12

    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    .line 324
    const-string p0, "HEAD"

    return-object p0

    .line 327
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 322
    :cond_12
    const-string p0, "POST"

    return-object p0

    .line 320
    :cond_15
    const-string p0, "GET"

    return-object p0
.end method


# virtual methods
.method public buildUpon()Lio/bidmachine/media3/datasource/DataSpec$Builder;
    .registers 3

    .line 509
    new-instance v0, Lio/bidmachine/media3/datasource/DataSpec$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/datasource/DataSpec$Builder;-><init>(Lio/bidmachine/media3/datasource/DataSpec;Lio/bidmachine/media3/datasource/DataSpec$1;)V

    return-object v0
.end method

.method public final getHttpMethodString()Ljava/lang/String;
    .registers 2

    .line 504
    iget v0, p0, Lio/bidmachine/media3/datasource/DataSpec;->httpMethod:I

    invoke-static {v0}, Lio/bidmachine/media3/datasource/DataSpec;->getStringForHttpMethod(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFlagSet(I)Z
    .registers 3

    .line 496
    iget v0, p0, Lio/bidmachine/media3/datasource/DataSpec;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public subrange(J)Lio/bidmachine/media3/datasource/DataSpec;
    .registers 8

    .line 520
    iget-wide v0, p0, Lio/bidmachine/media3/datasource/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    goto :goto_b

    :cond_9
    sub-long v2, v0, p1

    :goto_b
    invoke-virtual {p0, p1, p2, v2, v3}, Lio/bidmachine/media3/datasource/DataSpec;->subrange(JJ)Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object p1

    return-object p1
.end method

.method public subrange(JJ)Lio/bidmachine/media3/datasource/DataSpec;
    .registers 21

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_f

    .line 531
    iget-wide v1, v0, Lio/bidmachine/media3/datasource/DataSpec;->length:J

    cmp-long v1, v1, p3

    if-nez v1, :cond_f

    return-object v0

    .line 534
    :cond_f
    new-instance v2, Lio/bidmachine/media3/datasource/DataSpec;

    iget-object v3, v0, Lio/bidmachine/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iget-wide v4, v0, Lio/bidmachine/media3/datasource/DataSpec;->uriPositionOffset:J

    iget v6, v0, Lio/bidmachine/media3/datasource/DataSpec;->httpMethod:I

    iget-object v7, v0, Lio/bidmachine/media3/datasource/DataSpec;->httpBody:[B

    iget-object v8, v0, Lio/bidmachine/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    iget-wide v9, v0, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    add-long v9, v9, p1

    iget-object v13, v0, Lio/bidmachine/media3/datasource/DataSpec;->key:Ljava/lang/String;

    iget v14, v0, Lio/bidmachine/media3/datasource/DataSpec;->flags:I

    iget-object v15, v0, Lio/bidmachine/media3/datasource/DataSpec;->customData:Ljava/lang/Object;

    move-wide/from16 v11, p3

    invoke-direct/range {v2 .. v15}, Lio/bidmachine/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataSpec["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/DataSpec;->getHttpMethodString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lio/bidmachine/media3/datasource/DataSpec;->length:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/media3/datasource/DataSpec;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/media3/datasource/DataSpec;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.datasource.DataSpec.AnonymousClass1 (io.bidmachine.media3.datasource.DataSpec$1)
.class public synthetic Lio/bidmachine/media3/datasource/DataSpec$1;
.super Ljava/lang/Object;
.source "DataSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/datasource/DataSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.datasource.DataSpec.Builder (io.bidmachine.media3.datasource.DataSpec$Builder)
.class public final Lio/bidmachine/media3/datasource/DataSpec$Builder;
.super Ljava/lang/Object;
.source "DataSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/datasource/DataSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public customData:Ljava/lang/Object;

.field public flags:I

.field public httpBody:[B

.field public httpMethod:I

.field public httpRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public key:Ljava/lang/String;

.field public length:J

.field public position:J

.field public uri:Landroid/net/Uri;

.field public uriPositionOffset:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 65
    iput v0, p0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->httpMethod:I

    .line 66
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->httpRequestHeaders:Ljava/util/Map;

    const-wide/16 v0, -0x1

    .line 67
    iput-wide v0, p0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->length:J

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/datasource/DataSpec;)V
    .registers 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iget-object v0, p1, Lio/bidmachine/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->uri:Landroid/net/Uri;

    .line 77
    iget-wide v0, p1, Lio/bidmachine/media3/datasource/DataSpec;->uriPositionOffset:J

    iput-wide v0, p0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->uriPositionOffset:J

    .line 78
    iget v0, p1, Lio/bidmachine/media3/datasource/DataSpec;->httpMethod:I

    iput v0, p0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->httpMethod:I

    .line 79
    iget-object v0, p1, Lio/bidmachine/media3/datasource/DataSpec;->httpBody:[B

    iput-object v0, p0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->httpBody:[B

    .line 80
    iget-object v0, p1, Lio/bidmachine/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    iput-object v0, p0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->httpRequestHeaders:Ljava/util/Map;

    .line 81
    iget-wide v0, p1, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    iput-wide v0, p0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->position:J

    .line 82
    iget-wide v0, p1, Lio/bidmachine/media3/datasource/DataSpec;->length:J

    iput-wide v0, p0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->length:J

    .line 83
    iget-object v0, p1, Lio/bidmachine/media3/datasource/DataSpec;->key:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->key:Ljava/lang/String;

    .line 84
    iget v0, p1, Lio/bidmachine/media3/datasource/DataSpec;->flags:I

    iput v0, p0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->flags:I

    .line 85
    iget-object p1, p1, Lio/bidmachine/media3/datasource/DataSpec;->customData:Ljava/lang/Object;

    iput-object p1, p0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->customData:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/datasource/DataSpec;Lio/bidmachine/media3/datasource/DataSpec$1;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1}, Lio/bidmachine/media3/datasource/DataSpec$Builder;-><init>(Lio/bidmachine/media3/datasource/DataSpec;)V

    return-void
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/datasource/DataSpec;
    .registers 19

    move-object/from16 v0, p0

    .line 231
    iget-object v1, v0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->uri:Landroid/net/Uri;

    const-string v2, "The uri must be set."

    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v3, Lio/bidmachine/media3/datasource/DataSpec;

    iget-object v4, v0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->uri:Landroid/net/Uri;

    iget-wide v5, v0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->uriPositionOffset:J

    iget v7, v0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->httpMethod:I

    iget-object v8, v0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->httpBody:[B

    iget-object v9, v0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->httpRequestHeaders:Ljava/util/Map;

    iget-wide v10, v0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->position:J

    iget-wide v12, v0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->length:J

    iget-object v14, v0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->key:Ljava/lang/String;

    iget v15, v0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->flags:I

    iget-object v1, v0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->customData:Ljava/lang/Object;

    const/16 v17, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v3 .. v17}, Lio/bidmachine/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;Lio/bidmachine/media3/datasource/DataSpec$1;)V

    return-object v3
.end method

.method public setFlags(I)Lio/bidmachine/media3/datasource/DataSpec$Builder;
    .registers 2

    .line 208
    iput p1, p0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->flags:I

    return-object p0
.end method

.method public setHttpBody([B)Lio/bidmachine/media3/datasource/DataSpec$Builder;
    .registers 2

    .line 144
    iput-object p1, p0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->httpBody:[B

    return-object p0
.end method

.method public setHttpMethod(I)Lio/bidmachine/media3/datasource/DataSpec$Builder;
    .registers 2

    .line 132
    iput p1, p0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->httpMethod:I

    return-object p0
.end method

.method public setHttpRequestHeaders(Ljava/util/Map;)Lio/bidmachine/media3/datasource/DataSpec$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/media3/datasource/DataSpec$Builder;"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->httpRequestHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lio/bidmachine/media3/datasource/DataSpec$Builder;
    .registers 2

    .line 196
    iput-object p1, p0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->key:Ljava/lang/String;

    return-object p0
.end method

.method public setLength(J)Lio/bidmachine/media3/datasource/DataSpec$Builder;
    .registers 3

    .line 184
    iput-wide p1, p0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->length:J

    return-object p0
.end method

.method public setPosition(J)Lio/bidmachine/media3/datasource/DataSpec$Builder;
    .registers 3

    .line 172
    iput-wide p1, p0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->position:J

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lio/bidmachine/media3/datasource/DataSpec$Builder;
    .registers 2

    .line 108
    iput-object p1, p0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lio/bidmachine/media3/datasource/DataSpec$Builder;
    .registers 2

    .line 96
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/datasource/DataSpec$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method
