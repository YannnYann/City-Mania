###### Class com.explorestack.protobuf.SchemaUtil (com.explorestack.protobuf.SchemaUtil)
.class public final Lcom/explorestack/protobuf/SchemaUtil;
.super Ljava/lang/Object;
.source "SchemaUtil.java"


# static fields
.field public static final GENERATED_MESSAGE_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final PROTO2_UNKNOWN_FIELD_SET_SCHEMA:Lcom/explorestack/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field

.field public static final PROTO3_UNKNOWN_FIELD_SET_SCHEMA:Lcom/explorestack/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/explorestack/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    invoke-static {}, Lcom/explorestack/protobuf/SchemaUtil;->getGeneratedMessageClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 47
    invoke-static {v0}, Lcom/explorestack/protobuf/SchemaUtil;->getUnknownFieldSetSchema(Z)Lcom/explorestack/protobuf/UnknownFieldSchema;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/SchemaUtil;->PROTO2_UNKNOWN_FIELD_SET_SCHEMA:Lcom/explorestack/protobuf/UnknownFieldSchema;

    const/4 v0, 0x1

    .line 49
    invoke-static {v0}, Lcom/explorestack/protobuf/SchemaUtil;->getUnknownFieldSetSchema(Z)Lcom/explorestack/protobuf/UnknownFieldSchema;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/SchemaUtil;->PROTO3_UNKNOWN_FIELD_SET_SCHEMA:Lcom/explorestack/protobuf/UnknownFieldSchema;

    .line 50
    new-instance v0, Lcom/explorestack/protobuf/UnknownFieldSetLiteSchema;

    invoke-direct {v0}, Lcom/explorestack/protobuf/UnknownFieldSetLiteSchema;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/explorestack/protobuf/UnknownFieldSchema;

    return-void
.end method

.method public static computeSizeBoolList(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 626
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    if-eqz p2, :cond_14

    .line 632
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 633
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    :cond_14
    const/4 p2, 0x1

    .line 635
    invoke-static {p0, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result p0

    mul-int/2addr p1, p0

    return p1
.end method

.method public static computeSizeBoolListNoTag(Ljava/util/List;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 622
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static computeSizeByteStringList(ILjava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/ByteString;",
            ">;)I"
        }
    .end annotation

    .line 711
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 715
    :cond_8
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr v0, p0

    .line 716
    :goto_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_21

    .line 717
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/ByteString;

    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/explorestack/protobuf/ByteString;)I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_21
    return v0
.end method

.method public static computeSizeEnumList(ILjava/util/List;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 461
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 465
    :cond_8
    invoke-static {p1}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result p1

    if-eqz p2, :cond_18

    .line 468
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 469
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 471
    :cond_18
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method public static computeSizeEnumListNoTag(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 440
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 447
    :cond_8
    instance-of v2, p0, Lcom/explorestack/protobuf/IntArrayList;

    if-eqz v2, :cond_1e

    .line 448
    check-cast p0, Lcom/explorestack/protobuf/IntArrayList;

    move v2, v1

    :goto_f
    if-ge v1, v0, :cond_1d

    .line 450
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/IntArrayList;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    return v2

    :cond_1e
    move v2, v1

    :goto_1f
    if-ge v1, v0, :cond_33

    .line 454
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_33
    return v2
.end method

.method public static computeSizeFixed32List(ILjava/util/List;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 589
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    :cond_8
    if-eqz p2, :cond_16

    mul-int/lit8 p1, p1, 0x4

    .line 595
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 596
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 598
    :cond_16
    invoke-static {p0, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result p0

    mul-int/2addr p1, p0

    return p1
.end method

.method public static computeSizeFixed32ListNoTag(Ljava/util/List;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 585
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static computeSizeFixed64List(ILjava/util/List;Z)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 607
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    if-eqz p2, :cond_16

    mul-int/lit8 p1, p1, 0x8

    .line 613
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 614
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    :cond_16
    const-wide/16 v0, 0x0

    .line 616
    invoke-static {p0, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result p0

    mul-int/2addr p1, p0

    return p1
.end method

.method public static computeSizeFixed64ListNoTag(Ljava/util/List;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 603
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static computeSizeGroupList(ILjava/util/List;Lcom/explorestack/protobuf/Schema;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/MessageLite;",
            ">;",
            "Lcom/explorestack/protobuf/Schema;",
            ")I"
        }
    .end annotation

    .line 735
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_19

    .line 741
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {p0, v3, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeGroupSize(ILcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/Schema;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return v2
.end method

.method public static computeSizeInt32List(ILjava/util/List;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 497
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 501
    :cond_8
    invoke-static {p1}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result p1

    if-eqz p2, :cond_18

    .line 504
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 505
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 507
    :cond_18
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method public static computeSizeInt32ListNoTag(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 476
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 483
    :cond_8
    instance-of v2, p0, Lcom/explorestack/protobuf/IntArrayList;

    if-eqz v2, :cond_1e

    .line 484
    check-cast p0, Lcom/explorestack/protobuf/IntArrayList;

    move v2, v1

    :goto_f
    if-ge v1, v0, :cond_1d

    .line 486
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/IntArrayList;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    return v2

    :cond_1e
    move v2, v1

    :goto_1f
    if-ge v1, v0, :cond_33

    .line 490
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_33
    return v2
.end method

.method public static computeSizeInt64List(ILjava/util/List;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 353
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 357
    :cond_8
    invoke-static {p1}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v0

    if-eqz p2, :cond_18

    .line 360
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 361
    invoke-static {v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 363
    :cond_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr p1, p0

    add-int/2addr v0, p1

    return v0
.end method

.method public static computeSizeInt64ListNoTag(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 332
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 339
    :cond_8
    instance-of v2, p0, Lcom/explorestack/protobuf/LongArrayList;

    if-eqz v2, :cond_1e

    .line 340
    check-cast p0, Lcom/explorestack/protobuf/LongArrayList;

    move v2, v1

    :goto_f
    if-ge v1, v0, :cond_1d

    .line 342
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    return v2

    :cond_1e
    move v2, v1

    :goto_1f
    if-ge v1, v0, :cond_33

    .line 346
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_33
    return v2
.end method

.method public static computeSizeMessage(ILjava/lang/Object;Lcom/explorestack/protobuf/Schema;)I
    .registers 4

    .line 669
    instance-of v0, p1, Lcom/explorestack/protobuf/LazyFieldLite;

    if-eqz v0, :cond_b

    .line 670
    check-cast p1, Lcom/explorestack/protobuf/LazyFieldLite;

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeLazyFieldSize(ILcom/explorestack/protobuf/LazyFieldLite;)I

    move-result p0

    return p0

    .line 672
    :cond_b
    check-cast p1, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/Schema;)I

    move-result p0

    return p0
.end method

.method public static computeSizeMessageList(ILjava/util/List;Lcom/explorestack/protobuf/Schema;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/explorestack/protobuf/Schema;",
            ")I"
        }
    .end annotation

    .line 694
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 698
    :cond_8
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr p0, v0

    :goto_d
    if-ge v1, v0, :cond_29

    .line 700
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 701
    instance-of v3, v2, Lcom/explorestack/protobuf/LazyFieldLite;

    if-eqz v3, :cond_1f

    .line 702
    check-cast v2, Lcom/explorestack/protobuf/LazyFieldLite;

    invoke-static {v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/explorestack/protobuf/LazyFieldLite;)I

    move-result v2

    :goto_1d
    add-int/2addr p0, v2

    goto :goto_26

    .line 704
    :cond_1f
    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v2, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/Schema;)I

    move-result v2

    goto :goto_1d

    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_29
    return p0
.end method

.method public static computeSizeSInt32List(ILjava/util/List;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 569
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 574
    :cond_8
    invoke-static {p1}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result p1

    if-eqz p2, :cond_18

    .line 577
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 578
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 580
    :cond_18
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method public static computeSizeSInt32ListNoTag(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 548
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 555
    :cond_8
    instance-of v2, p0, Lcom/explorestack/protobuf/IntArrayList;

    if-eqz v2, :cond_1e

    .line 556
    check-cast p0, Lcom/explorestack/protobuf/IntArrayList;

    move v2, v1

    :goto_f
    if-ge v1, v0, :cond_1d

    .line 558
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/IntArrayList;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    return v2

    :cond_1e
    move v2, v1

    :goto_1f
    if-ge v1, v0, :cond_33

    .line 562
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_33
    return v2
.end method

.method public static computeSizeSInt64List(ILjava/util/List;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 425
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 429
    :cond_8
    invoke-static {p1}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result p1

    if-eqz p2, :cond_18

    .line 432
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 433
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 435
    :cond_18
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method public static computeSizeSInt64ListNoTag(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 404
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 411
    :cond_8
    instance-of v2, p0, Lcom/explorestack/protobuf/LongArrayList;

    if-eqz v2, :cond_1e

    .line 412
    check-cast p0, Lcom/explorestack/protobuf/LongArrayList;

    move v2, v1

    :goto_f
    if-ge v1, v0, :cond_1d

    .line 414
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    return v2

    :cond_1e
    move v2, v1

    :goto_1f
    if-ge v1, v0, :cond_33

    .line 418
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_33
    return v2
.end method

.method public static computeSizeStringList(ILjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 640
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 644
    :cond_8
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr p0, v0

    .line 645
    instance-of v2, p1, Lcom/explorestack/protobuf/LazyStringList;

    if-eqz v2, :cond_30

    .line 646
    check-cast p1, Lcom/explorestack/protobuf/LazyStringList;

    :goto_13
    if-ge v1, v0, :cond_2f

    .line 648
    invoke-interface {p1, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    .line 649
    instance-of v3, v2, Lcom/explorestack/protobuf/ByteString;

    if-eqz v3, :cond_25

    .line 650
    check-cast v2, Lcom/explorestack/protobuf/ByteString;

    invoke-static {v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/explorestack/protobuf/ByteString;)I

    move-result v2

    :goto_23
    add-int/2addr p0, v2

    goto :goto_2c

    .line 652
    :cond_25
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v2

    goto :goto_23

    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_2f
    return p0

    :cond_30
    :goto_30
    if-ge v1, v0, :cond_4c

    .line 657
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 658
    instance-of v3, v2, Lcom/explorestack/protobuf/ByteString;

    if-eqz v3, :cond_42

    .line 659
    check-cast v2, Lcom/explorestack/protobuf/ByteString;

    invoke-static {v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/explorestack/protobuf/ByteString;)I

    move-result v2

    :goto_40
    add-int/2addr p0, v2

    goto :goto_49

    .line 661
    :cond_42
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v2

    goto :goto_40

    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_4c
    return p0
.end method

.method public static computeSizeUInt32List(ILjava/util/List;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 533
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 537
    :cond_8
    invoke-static {p1}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result p1

    if-eqz p2, :cond_18

    .line 540
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 541
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 543
    :cond_18
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method public static computeSizeUInt32ListNoTag(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 512
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 519
    :cond_8
    instance-of v2, p0, Lcom/explorestack/protobuf/IntArrayList;

    if-eqz v2, :cond_1e

    .line 520
    check-cast p0, Lcom/explorestack/protobuf/IntArrayList;

    move v2, v1

    :goto_f
    if-ge v1, v0, :cond_1d

    .line 522
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/IntArrayList;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    return v2

    :cond_1e
    move v2, v1

    :goto_1f
    if-ge v1, v0, :cond_33

    .line 526
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_33
    return v2
.end method

.method public static computeSizeUInt64List(ILjava/util/List;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 389
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 393
    :cond_8
    invoke-static {p1}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result p1

    if-eqz p2, :cond_18

    .line 396
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 397
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 399
    :cond_18
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method public static computeSizeUInt64ListNoTag(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 368
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 375
    :cond_8
    instance-of v2, p0, Lcom/explorestack/protobuf/LongArrayList;

    if-eqz v2, :cond_1e

    .line 376
    check-cast p0, Lcom/explorestack/protobuf/LongArrayList;

    move v2, v1

    :goto_f
    if-ge v1, v0, :cond_1d

    .line 378
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    return v2

    :cond_1e
    move v2, v1

    :goto_1f
    if-ge v1, v0, :cond_33

    .line 382
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_33
    return v2
.end method

.method public static filterUnknownEnumList(ILjava/util/List;Lcom/explorestack/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "*>;TUB;",
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    if-nez p2, :cond_3

    return-object p3

    .line 913
    :cond_3
    instance-of v0, p1, Ljava/util/RandomAccess;

    if-eqz v0, :cond_38

    .line 915
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v1, v0, :cond_2e

    .line 917
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 918
    invoke-interface {p2, v4}, Lcom/explorestack/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;

    move-result-object v5

    if-eqz v5, :cond_27

    if-eq v1, v2, :cond_24

    .line 920
    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 924
    :cond_27
    invoke-static {p0, v4, p3, p4}, Lcom/explorestack/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p3

    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2e
    if-eq v2, v0, :cond_37

    .line 928
    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_37
    return-object p3

    .line 931
    :cond_38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3c
    :goto_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 932
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 933
    invoke-interface {p2, v0}, Lcom/explorestack/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;

    move-result-object v1

    if-nez v1, :cond_3c

    .line 934
    invoke-static {p0, v0, p3, p4}, Lcom/explorestack/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p3

    .line 935
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_3c

    :cond_5a
    return-object p3
.end method

.method public static filterUnknownEnumList(ILjava/util/List;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/explorestack/protobuf/Internal$EnumVerifier;",
            "TUB;",
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    if-nez p2, :cond_3

    return-object p3

    .line 953
    :cond_3
    instance-of v0, p1, Ljava/util/RandomAccess;

    if-eqz v0, :cond_38

    .line 955
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v1, v0, :cond_2e

    .line 957
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 958
    invoke-interface {p2, v4}, Lcom/explorestack/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v5

    if-eqz v5, :cond_27

    if-eq v1, v2, :cond_24

    .line 960
    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 964
    :cond_27
    invoke-static {p0, v4, p3, p4}, Lcom/explorestack/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p3

    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2e
    if-eq v2, v0, :cond_37

    .line 968
    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_37
    return-object p3

    .line 971
    :cond_38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3c
    :goto_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 972
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 973
    invoke-interface {p2, v0}, Lcom/explorestack/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 974
    invoke-static {p0, v0, p3, p4}, Lcom/explorestack/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p3

    .line 975
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_3c

    :cond_5a
    return-object p3
.end method

.method public static getGeneratedMessageClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 811
    :try_start_0
    const-class v0, Lcom/explorestack/protobuf/GeneratedMessageV3;

    sget-boolean v1, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    :catchall_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMapDefaultEntry(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 827
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 828
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/explorestack/protobuf/SchemaUtil;->toCamelCase(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DefaultEntryHolder"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 829
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 830
    array-length v2, v0

    if-ne v2, v1, :cond_35

    const/4 p0, 0x0

    .line 837
    aget-object p0, v0, p0

    invoke-static {p0}, Lcom/explorestack/protobuf/UnsafeUtil;->getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 831
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to look up map field default entry holder class for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_58
    .catchall {:try_start_0 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception p0

    .line 839
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getUnknownFieldSetSchema(Z)Lcom/explorestack/protobuf/UnknownFieldSchema;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 799
    :try_start_1
    invoke-static {}, Lcom/explorestack/protobuf/SchemaUtil;->getUnknownFieldSetSchemaClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    .line 803
    :cond_8
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/UnknownFieldSchema;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_21

    return-object p0

    :catchall_21
    return-object v0
.end method

.method public static getUnknownFieldSetSchemaClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 819
    :try_start_0
    const-class v0, Lcom/explorestack/protobuf/UnknownFieldSetSchema;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_3

    return-object v0

    :catchall_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static mergeExtensions(Lcom/explorestack/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "FT::",
            "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
            "TFT;>;>(",
            "Lcom/explorestack/protobuf/ExtensionSchema<",
            "TFT;>;TT;TT;)V"
        }
    .end annotation

    .line 887
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/explorestack/protobuf/FieldSet;

    move-result-object p2

    .line 888
    invoke-virtual {p2}, Lcom/explorestack/protobuf/FieldSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 889
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/ExtensionSchema;->getMutableExtensions(Ljava/lang/Object;)Lcom/explorestack/protobuf/FieldSet;

    move-result-object p0

    .line 890
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/FieldSet;->mergeFrom(Lcom/explorestack/protobuf/FieldSet;)V

    :cond_11
    return-void
.end method

.method public static mergeMap(Lcom/explorestack/protobuf/MapFieldSchema;Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/MapFieldSchema;",
            "TT;TT;J)V"
        }
    .end annotation

    .line 881
    invoke-static {p1, p3, p4}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 880
    invoke-interface {p0, v0, p2}, Lcom/explorestack/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 882
    invoke-static {p1, p3, p4, p0}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public static mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;TT;)V"
        }
    .end annotation

    .line 896
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 897
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 898
    invoke-virtual {p0, v0, p2}, Lcom/explorestack/protobuf/UnknownFieldSchema;->merge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 899
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSchema;->setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static proto2UnknownFieldSetSchema()Lcom/explorestack/protobuf/UnknownFieldSchema;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation

    .line 786
    sget-object v0, Lcom/explorestack/protobuf/SchemaUtil;->PROTO2_UNKNOWN_FIELD_SET_SCHEMA:Lcom/explorestack/protobuf/UnknownFieldSchema;

    return-object v0
.end method

.method public static proto3UnknownFieldSetSchema()Lcom/explorestack/protobuf/UnknownFieldSchema;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation

    .line 790
    sget-object v0, Lcom/explorestack/protobuf/SchemaUtil;->PROTO3_UNKNOWN_FIELD_SET_SCHEMA:Lcom/explorestack/protobuf/UnknownFieldSchema;

    return-object v0
.end method

.method public static requireGeneratedMessage(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 62
    const-class v0, Lcom/explorestack/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/explorestack/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_1b

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_1b

    .line 65
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    :goto_1b
    return-void
.end method

.method public static safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    .line 875
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public static storeUnknownEnum(IILjava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(IITUB;",
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    if-nez p2, :cond_6

    .line 986
    invoke-virtual {p3}, Lcom/explorestack/protobuf/UnknownFieldSchema;->newBuilder()Ljava/lang/Object;

    move-result-object p2

    :cond_6
    int-to-long v0, p1

    .line 988
    invoke-virtual {p3, p2, p0, v0, v1}, Lcom/explorestack/protobuf/UnknownFieldSchema;->addVarint(Ljava/lang/Object;IJ)V

    return-object p2
.end method

.method public static toCamelCase(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 845
    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4e

    .line 846
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-gt v4, v3, :cond_27

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_27

    if-eqz p1, :cond_22

    add-int/lit8 v3, v3, -0x20

    int-to-char p1, v3

    .line 850
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 852
    :cond_22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_25
    move p1, v1

    goto :goto_4b

    :cond_27
    const/16 v4, 0x41

    if-gt v4, v3, :cond_3e

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_3e

    if-nez v2, :cond_3a

    if-nez p1, :cond_3a

    add-int/lit8 v3, v3, 0x20

    int-to-char p1, v3

    .line 858
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 860
    :cond_3a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_3e
    const/16 p1, 0x30

    const/4 v4, 0x1

    if-gt p1, v3, :cond_4a

    const/16 p1, 0x39

    if-gt v3, p1, :cond_4a

    .line 864
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4a
    move p1, v4

    :goto_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 870
    :cond_4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unknownFieldSetLiteSchema()Lcom/explorestack/protobuf/UnknownFieldSchema;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation

    .line 794
    sget-object v0, Lcom/explorestack/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/explorestack/protobuf/UnknownFieldSchema;

    return-object v0
.end method

.method public static writeBoolList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/explorestack/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 275
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 276
    invoke-interface {p2, p0, p1, p3}, Lcom/explorestack/protobuf/Writer;->writeBoolList(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static writeBytesList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/ByteString;",
            ">;",
            "Lcom/explorestack/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 289
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 290
    invoke-interface {p2, p0, p1}, Lcom/explorestack/protobuf/Writer;->writeBytesList(ILjava/util/List;)V

    :cond_b
    return-void
.end method

.method public static writeDoubleList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Lcom/explorestack/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 184
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 185
    invoke-interface {p2, p0, p1, p3}, Lcom/explorestack/protobuf/Writer;->writeDoubleList(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static writeEnumList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/explorestack/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 268
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 269
    invoke-interface {p2, p0, p1, p3}, Lcom/explorestack/protobuf/Writer;->writeEnumList(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static writeFixed32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/explorestack/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 254
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 255
    invoke-interface {p2, p0, p1, p3}, Lcom/explorestack/protobuf/Writer;->writeFixed32List(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static writeFixed64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/explorestack/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 219
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 220
    invoke-interface {p2, p0, p1, p3}, Lcom/explorestack/protobuf/Writer;->writeFixed64List(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static writeFloatList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/explorestack/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 191
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 192
    invoke-interface {p2, p0, p1, p3}, Lcom/explorestack/protobuf/Writer;->writeFloatList(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static writeGroupList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/explorestack/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 319
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 320
    invoke-interface {p2, p0, p1}, Lcom/explorestack/protobuf/Writer;->writeGroupList(ILjava/util/List;)V

    :cond_b
    return-void
.end method

.method public static writeGroupList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Lcom/explorestack/protobuf/Schema;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/explorestack/protobuf/Writer;",
            "Lcom/explorestack/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 326
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 327
    invoke-interface {p2, p0, p1, p3}, Lcom/explorestack/protobuf/Writer;->writeGroupList(ILjava/util/List;Lcom/explorestack/protobuf/Schema;)V

    :cond_b
    return-void
.end method

.method public static writeInt32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/explorestack/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 233
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 234
    invoke-interface {p2, p0, p1, p3}, Lcom/explorestack/protobuf/Writer;->writeInt32List(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static writeInt64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/explorestack/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 198
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 199
    invoke-interface {p2, p0, p1, p3}, Lcom/explorestack/protobuf/Writer;->writeInt64List(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static writeMessageList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/explorestack/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 296
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 297
    invoke-interface {p2, p0, p1}, Lcom/explorestack/protobuf/Writer;->writeMessageList(ILjava/util/List;)V

    :cond_b
    return-void
.end method

.method public static writeMessageList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Lcom/explorestack/protobuf/Schema;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/explorestack/protobuf/Writer;",
            "Lcom/explorestack/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 303
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 304
    invoke-interface {p2, p0, p1, p3}, Lcom/explorestack/protobuf/Writer;->writeMessageList(ILjava/util/List;Lcom/explorestack/protobuf/Schema;)V

    :cond_b
    return-void
.end method

.method public static writeSFixed32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/explorestack/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 261
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 262
    invoke-interface {p2, p0, p1, p3}, Lcom/explorestack/protobuf/Writer;->writeSFixed32List(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static writeSFixed64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/explorestack/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 226
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 227
    invoke-interface {p2, p0, p1, p3}, Lcom/explorestack/protobuf/Writer;->writeSFixed64List(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static writeSInt32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/explorestack/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 247
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 248
    invoke-interface {p2, p0, p1, p3}, Lcom/explorestack/protobuf/Writer;->writeSInt32List(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static writeSInt64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/explorestack/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 212
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 213
    invoke-interface {p2, p0, p1, p3}, Lcom/explorestack/protobuf/Writer;->writeSInt64List(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static writeStringList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/explorestack/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 282
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 283
    invoke-interface {p2, p0, p1}, Lcom/explorestack/protobuf/Writer;->writeStringList(ILjava/util/List;)V

    :cond_b
    return-void
.end method

.method public static writeUInt32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/explorestack/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 240
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 241
    invoke-interface {p2, p0, p1, p3}, Lcom/explorestack/protobuf/Writer;->writeUInt32List(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static writeUInt64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/explorestack/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 205
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 206
    invoke-interface {p2, p0, p1, p3}, Lcom/explorestack/protobuf/Writer;->writeUInt64List(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method
