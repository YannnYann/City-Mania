###### Class com.explorestack.protobuf.BinaryReader (com.explorestack.protobuf.BinaryReader)
.class public abstract Lcom/explorestack/protobuf/BinaryReader;
.super Ljava/lang/Object;
.source "BinaryReader.java"

# interfaces
.implements Lcom/explorestack/protobuf/Reader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/BinaryReader$1;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Lcom/explorestack/protobuf/BinaryReader;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/nio/ByteBuffer;Z)Lcom/explorestack/protobuf/BinaryReader;
    .registers 3

    .line 68
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 70
    new-instance v0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;

    invoke-direct {v0, p0, p1}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-object v0

    .line 73
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Direct buffers not yet supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public shouldDiscardUnknownFields()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

###### Class com.explorestack.protobuf.BinaryReader.AnonymousClass1 (com.explorestack.protobuf.BinaryReader$1)
.class public synthetic Lcom/explorestack/protobuf/BinaryReader$1;
.super Ljava/lang/Object;
.source "BinaryReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/BinaryReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$protobuf$WireFormat$FieldType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1453
    invoke-static {}, Lcom/explorestack/protobuf/WireFormat$FieldType;->values()[Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/explorestack/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    :try_start_9
    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->BOOL:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/explorestack/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->BYTES:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/explorestack/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->DOUBLE:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/explorestack/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->ENUM:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/explorestack/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->FIXED32:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/explorestack/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->FIXED64:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/explorestack/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->FLOAT:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lcom/explorestack/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->INT32:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lcom/explorestack/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->INT64:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lcom/explorestack/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Lcom/explorestack/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->SFIXED32:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v0, Lcom/explorestack/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->SFIXED64:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v0, Lcom/explorestack/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->SINT32:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v0, Lcom/explorestack/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->SINT64:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v0, Lcom/explorestack/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->STRING:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b4
    sget-object v0, Lcom/explorestack/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->UINT32:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c0
    sget-object v0, Lcom/explorestack/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->UINT64:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_cc

    :catch_cc
    return-void
.end method

###### Class com.explorestack.protobuf.BinaryReader.SafeHeapReader (com.explorestack.protobuf.BinaryReader$SafeHeapReader)
.class public final Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;
.super Lcom/explorestack/protobuf/BinaryReader;
.source "BinaryReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/BinaryReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SafeHeapReader"
.end annotation


# instance fields
.field public final buffer:[B

.field public final bufferIsImmutable:Z

.field public endGroupTag:I

.field public final initialPos:I

.field public limit:I

.field public pos:I

.field public tag:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/BinaryReader;-><init>(Lcom/explorestack/protobuf/BinaryReader$1;)V

    .line 101
    iput-boolean p2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->bufferIsImmutable:Z

    .line 102
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 103
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iput p2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->initialPos:I

    .line 104
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->limit:I

    return-void
.end method


# virtual methods
.method public getFieldNumber()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_a

    return v1

    .line 121
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    iput v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    .line 122
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-ne v0, v2, :cond_15

    return v1

    .line 125
    :cond_15
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    return v0
.end method

.method public getTag()I
    .registers 2

    .line 130
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    return v0
.end method

.method public final isAtEnd()Z
    .registers 3

    .line 108
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public readBool()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 205
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public readBoolList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 812
    instance-of v0, p1, Lcom/explorestack/protobuf/BooleanArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_50

    .line 813
    move-object v0, p1

    check-cast v0, Lcom/explorestack/protobuf/BooleanArrayList;

    .line 814
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_35

    if-ne p1, v3, :cond_30

    .line 816
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result p1

    .line 817
    iget v3, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v3, p1

    .line 818
    :goto_1b
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge p1, v3, :cond_2c

    .line 819
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result p1

    if-eqz p1, :cond_27

    move p1, v2

    goto :goto_28

    :cond_27
    move p1, v1

    :goto_28
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/BooleanArrayList;->addBoolean(Z)V

    goto :goto_1b

    .line 821
    :cond_2c
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    return-void

    .line 840
    :cond_30
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 825
    :cond_35
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readBool()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 827
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_43

    goto :goto_90

    .line 830
    :cond_43
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 831
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 832
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_35

    .line 835
    iput p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    .line 843
    :cond_50
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_7f

    if-ne v0, v3, :cond_7a

    .line 845
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 846
    iget v3, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v3, v0

    .line 847
    :goto_61
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v3, :cond_76

    .line 848
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    if-eqz v0, :cond_6d

    move v0, v2

    goto :goto_6e

    :cond_6d
    move v0, v1

    :goto_6e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 850
    :cond_76
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    return-void

    .line 869
    :cond_7a
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 854
    :cond_7f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_91

    :goto_90
    return-void

    .line 859
    :cond_91
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 860
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 861
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_7f

    .line 864
    iput v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void
.end method

.method public final readByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1612
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-eq v0, v1, :cond_f

    .line 1615
    iget-object v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    aget-byte v0, v1, v0

    return v0

    .line 1613
    :cond_f
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 311
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 312
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    if-nez v0, :cond_d

    .line 314
    sget-object v0, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    return-object v0

    .line 317
    :cond_d
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 318
    iget-boolean v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->bufferIsImmutable:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 320
    invoke-static {v1, v2, v0}, Lcom/explorestack/protobuf/ByteString;->wrap([BII)Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    goto :goto_25

    :cond_1d
    iget-object v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 321
    invoke-static {v1, v2, v0}, Lcom/explorestack/protobuf/ByteString;->copyFrom([BII)Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    .line 322
    :goto_25
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-object v1
.end method

.method public readBytesList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 994
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 999
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    .line 1004
    :cond_17
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1005
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1006
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_9

    .line 1009
    iput v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    .line 995
    :cond_24
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 162
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 163
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readDoubleList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    instance-of v0, p1, Lcom/explorestack/protobuf/DoubleArrayList;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4d

    .line 365
    move-object v0, p1

    check-cast v0, Lcom/explorestack/protobuf/DoubleArrayList;

    .line 366
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eq p1, v2, :cond_32

    if-ne p1, v1, :cond_2d

    .line 368
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result p1

    .line 369
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 370
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, p1

    .line 371
    :goto_1d
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge p1, v1, :cond_8b

    .line 372
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/explorestack/protobuf/DoubleArrayList;->addDouble(D)V

    goto :goto_1d

    .line 392
    :cond_2d
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 377
    :cond_32
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/DoubleArrayList;->addDouble(D)V

    .line 379
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_40

    goto :goto_8b

    .line 382
    :cond_40
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 383
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 384
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_32

    .line 387
    iput p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    .line 395
    :cond_4d
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_7a

    if-ne v0, v1, :cond_75

    .line 397
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 398
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 399
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 400
    :goto_61
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_8b

    .line 401
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 421
    :cond_75
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 406
    :cond_7a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8c

    :cond_8b
    :goto_8b
    return-void

    .line 411
    :cond_8c
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 412
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 413
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_7a

    .line 416
    iput v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void
.end method

.method public readEnum()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 334
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 335
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    return v0
.end method

.method public readEnumList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1079
    instance-of v0, p1, Lcom/explorestack/protobuf/IntArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_45

    .line 1080
    move-object v0, p1

    check-cast v0, Lcom/explorestack/protobuf/IntArrayList;

    .line 1081
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2a

    if-ne p1, v1, :cond_25

    .line 1083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result p1

    .line 1084
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, p1

    .line 1085
    :goto_19
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge p1, v1, :cond_7c

    .line 1086
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/IntArrayList;->addInt(I)V

    goto :goto_19

    .line 1106
    :cond_25
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1091
    :cond_2a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readEnum()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/IntArrayList;->addInt(I)V

    .line 1093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_38

    goto :goto_7c

    .line 1096
    :cond_38
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1097
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1098
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_2a

    .line 1101
    iput p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    .line 1109
    :cond_45
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_6b

    if-ne v0, v1, :cond_66

    .line 1111
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1112
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1113
    :goto_56
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_7c

    .line 1114
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 1134
    :cond_66
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1119
    :cond_6b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7d

    :cond_7c
    :goto_7c
    return-void

    .line 1124
    :cond_7d
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1125
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1126
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_6b

    .line 1129
    iput v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void
.end method

.method public final readField(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1453
    sget-object v0, Lcom/explorestack/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_a0

    .line 1489
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1487
    :pswitch_13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readUInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1485
    :pswitch_1c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readUInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1483
    :pswitch_25
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1481
    :pswitch_2a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readSInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1479
    :pswitch_33
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readSInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1477
    :pswitch_3c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readSFixed64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1475
    :pswitch_45
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readSFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1473
    :pswitch_4e
    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readMessage(Ljava/lang/Class;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1471
    :pswitch_53
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1469
    :pswitch_5c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1467
    :pswitch_65
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 1465
    :pswitch_6e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readFixed64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1463
    :pswitch_77
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1461
    :pswitch_80
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readEnum()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1459
    :pswitch_89
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 1457
    :pswitch_92
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1

    .line 1455
    :pswitch_97
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readBool()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_97
        :pswitch_92
        :pswitch_89
        :pswitch_80
        :pswitch_77
        :pswitch_6e
        :pswitch_65
        :pswitch_5c
        :pswitch_53
        :pswitch_4e
        :pswitch_45
        :pswitch_3c
        :pswitch_33
        :pswitch_2a
        :pswitch_25
        :pswitch_1c
        :pswitch_13
    .end packed-switch
.end method

.method public readFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 198
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 199
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed32List(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    instance-of v0, p1, Lcom/explorestack/protobuf/IntArrayList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_49

    .line 749
    check-cast p1, Lcom/explorestack/protobuf/IntArrayList;

    .line 750
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_33

    if-ne v0, v1, :cond_2e

    .line 761
    :cond_12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readFixed32()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/IntArrayList;->addInt(I)V

    .line 763
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_21

    goto/16 :goto_91

    .line 766
    :cond_21
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 767
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 768
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_12

    .line 771
    iput v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    .line 776
    :cond_2e
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 752
    :cond_33
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 753
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 754
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 755
    :goto_3d
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_91

    .line 756
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/IntArrayList;->addInt(I)V

    goto :goto_3d

    .line 779
    :cond_49
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_77

    if-ne v0, v1, :cond_72

    .line 790
    :cond_53
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_65

    goto :goto_91

    .line 795
    :cond_65
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 796
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 797
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_53

    .line 800
    iput v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    .line 805
    :cond_72
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 781
    :cond_77
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 782
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 783
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 784
    :goto_81
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_91

    .line 785
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_81

    :cond_91
    :goto_91
    return-void
.end method

.method public readFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 192
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 193
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFixed64List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 684
    instance-of v0, p1, Lcom/explorestack/protobuf/LongArrayList;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_49

    .line 685
    move-object v0, p1

    check-cast v0, Lcom/explorestack/protobuf/LongArrayList;

    .line 686
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eq p1, v2, :cond_2e

    if-ne p1, v1, :cond_29

    .line 688
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result p1

    .line 689
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 690
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, p1

    .line 691
    :goto_1d
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge p1, v1, :cond_83

    .line 692
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/explorestack/protobuf/LongArrayList;->addLong(J)V

    goto :goto_1d

    .line 712
    :cond_29
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 697
    :cond_2e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/LongArrayList;->addLong(J)V

    .line 699
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3c

    goto :goto_83

    .line 702
    :cond_3c
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 703
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 704
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_2e

    .line 707
    iput p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    .line 715
    :cond_49
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_72

    if-ne v0, v1, :cond_6d

    .line 717
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 718
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 719
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 720
    :goto_5d
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_83

    .line 721
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 741
    :cond_6d
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 726
    :cond_72
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_84

    :cond_83
    :goto_83
    return-void

    .line 731
    :cond_84
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 732
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 733
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_72

    .line 736
    iput v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 168
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 169
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFloatList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    instance-of v0, p1, Lcom/explorestack/protobuf/FloatArrayList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_4d

    .line 429
    check-cast p1, Lcom/explorestack/protobuf/FloatArrayList;

    .line 430
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_33

    if-ne v0, v1, :cond_2e

    .line 441
    :cond_12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readFloat()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/FloatArrayList;->addFloat(F)V

    .line 443
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_21

    goto/16 :goto_99

    .line 446
    :cond_21
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 447
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 448
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_12

    .line 451
    iput v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    .line 456
    :cond_2e
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 432
    :cond_33
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 433
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 434
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 435
    :goto_3d
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_99

    .line 436
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/FloatArrayList;->addFloat(F)V

    goto :goto_3d

    .line 459
    :cond_4d
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_7b

    if-ne v0, v1, :cond_76

    .line 470
    :cond_57
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_69

    goto :goto_99

    .line 475
    :cond_69
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 476
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 477
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_57

    .line 480
    iput v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    .line 485
    :cond_76
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 461
    :cond_7b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 462
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 463
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 464
    :goto_85
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_99

    .line 465
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_85

    :cond_99
    :goto_99
    return-void
.end method

.method public final readGroup(Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/Schema<",
            "TT;>;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 291
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    iput v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 295
    :try_start_f
    invoke-interface {p1}, Lcom/explorestack/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 296
    invoke-interface {p1, v1, p0, p2}, Lcom/explorestack/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/explorestack/protobuf/Reader;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    .line 297
    invoke-interface {p1, v1}, Lcom/explorestack/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 299
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget p2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_27

    if-ne p1, p2, :cond_22

    .line 305
    iput v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    return-object v1

    .line 300
    :cond_22
    :try_start_22
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p1

    .line 305
    iput v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 306
    throw p1
.end method

.method public readGroup(Ljava/lang/Class;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 277
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 278
    invoke-static {}, Lcom/explorestack/protobuf/Protobuf;->getInstance()Lcom/explorestack/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/explorestack/protobuf/Schema;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readGroup(Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readGroupBySchemaWithCheck(Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/Schema<",
            "TT;>;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 284
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 285
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readGroup(Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readGroupList(Ljava/util/List;Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/explorestack/protobuf/Schema<",
            "TT;>;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 971
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    .line 974
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    .line 976
    :cond_b
    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readGroup(Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 978
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_19

    return-void

    .line 981
    :cond_19
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 982
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    if-eq v2, v0, :cond_b

    .line 986
    iput v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    .line 972
    :cond_24
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 187
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    return v0
.end method

.method public readInt32List(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 620
    instance-of v0, p1, Lcom/explorestack/protobuf/IntArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_49

    .line 621
    move-object v0, p1

    check-cast v0, Lcom/explorestack/protobuf/IntArrayList;

    .line 622
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2e

    if-ne p1, v1, :cond_29

    .line 624
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result p1

    .line 625
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, p1

    .line 626
    :goto_19
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge p1, v1, :cond_25

    .line 627
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/IntArrayList;->addInt(I)V

    goto :goto_19

    .line 629
    :cond_25
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    return-void

    .line 648
    :cond_29
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 633
    :cond_2e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readInt32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/IntArrayList;->addInt(I)V

    .line 635
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3c

    goto :goto_84

    .line 638
    :cond_3c
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 639
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 640
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_2e

    .line 643
    iput p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    .line 651
    :cond_49
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_73

    if-ne v0, v1, :cond_6e

    .line 653
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 654
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 655
    :goto_5a
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_6a

    .line 656
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 658
    :cond_6a
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    return-void

    .line 677
    :cond_6e
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 662
    :cond_73
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_85

    :goto_84
    return-void

    .line 667
    :cond_85
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 668
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 669
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_73

    .line 672
    iput v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void
.end method

.method public readInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 181
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt64List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    instance-of v0, p1, Lcom/explorestack/protobuf/LongArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_49

    .line 557
    move-object v0, p1

    check-cast v0, Lcom/explorestack/protobuf/LongArrayList;

    .line 558
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2e

    if-ne p1, v1, :cond_29

    .line 560
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result p1

    .line 561
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, p1

    .line 562
    :goto_19
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge p1, v1, :cond_25

    .line 563
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/explorestack/protobuf/LongArrayList;->addLong(J)V

    goto :goto_19

    .line 565
    :cond_25
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    return-void

    .line 584
    :cond_29
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 569
    :cond_2e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/LongArrayList;->addLong(J)V

    .line 571
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3c

    goto :goto_84

    .line 574
    :cond_3c
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 575
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 576
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_2e

    .line 579
    iput p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    .line 587
    :cond_49
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_73

    if-ne v0, v1, :cond_6e

    .line 589
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 590
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 591
    :goto_5a
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_6a

    .line 592
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 594
    :cond_6a
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    return-void

    .line 613
    :cond_6e
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 598
    :cond_73
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_85

    :goto_84
    return-void

    .line 603
    :cond_85
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 605
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_73

    .line 608
    iput v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void
.end method

.method public final readLittleEndian32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1619
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1620
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v0

    return v0
.end method

.method public final readLittleEndian32_NoCheck()I
    .registers 5

    .line 1629
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1630
    iget-object v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v2, v0, 0x4

    .line 1631
    iput v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1632
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method public final readLittleEndian64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1624
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1625
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readLittleEndian64_NoCheck()J
    .registers 10

    .line 1639
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1640
    iget-object v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v2, v0, 0x8

    .line 1641
    iput v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1642
    aget-byte v2, v1, v0

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x4

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x5

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x6

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readMap(Ljava/util/Map;Lcom/explorestack/protobuf/MapEntryLite$Metadata;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/explorestack/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1398
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 1399
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1400
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1403
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 1404
    iget v3, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v3, v1

    .line 1405
    iput v3, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 1408
    :try_start_12
    iget-object v1, p2, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 1409
    iget-object v3, p2, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1411
    :goto_16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->getFieldNumber()I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_27

    .line 1441
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_25

    .line 1444
    iput v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->limit:I

    return-void

    :catchall_25
    move-exception p1

    goto :goto_5d

    :cond_27
    const/4 v5, 0x1

    .line 1416
    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_48

    if-eq v4, v0, :cond_3b

    .line 1429
    :try_start_2e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->skipField()Z

    move-result v4

    if-eqz v4, :cond_35

    goto :goto_16

    .line 1430
    :cond_35
    new-instance v4, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {v4, v6}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1421
    :cond_3b
    iget-object v4, p2, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->valueType:Lcom/explorestack/protobuf/WireFormat$FieldType;

    iget-object v5, p2, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1425
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 1423
    invoke-virtual {p0, v4, v5, p3}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readField(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_16

    .line 1418
    :cond_48
    iget-object v4, p2, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->keyType:Lcom/explorestack/protobuf/WireFormat$FieldType;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v5}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readField(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4f
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_2e .. :try_end_4f} :catch_50
    .catchall {:try_start_2e .. :try_end_4f} :catchall_25

    goto :goto_16

    .line 1436
    :catch_50
    :try_start_50
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->skipField()Z

    move-result v4

    if-eqz v4, :cond_57

    goto :goto_16

    .line 1437
    :cond_57
    new-instance p1, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p1, v6}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5d
    .catchall {:try_start_50 .. :try_end_5d} :catchall_25

    .line 1444
    :goto_5d
    iput v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 1445
    throw p1
.end method

.method public final readMessage(Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/Schema<",
            "TT;>;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 251
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 254
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 255
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v0

    .line 256
    iput v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 260
    :try_start_e
    invoke-interface {p1}, Lcom/explorestack/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 261
    invoke-interface {p1, v0, p0, p2}, Lcom/explorestack/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/explorestack/protobuf/Reader;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    .line 262
    invoke-interface {p1, v0}, Lcom/explorestack/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 264
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_24

    if-ne p1, v2, :cond_1f

    .line 270
    iput v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->limit:I

    return-object v0

    .line 265
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p1

    .line 270
    iput v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 271
    throw p1
.end method

.method public readMessage(Ljava/lang/Class;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 237
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 238
    invoke-static {}, Lcom/explorestack/protobuf/Protobuf;->getInstance()Lcom/explorestack/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/explorestack/protobuf/Schema;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readMessage(Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readMessageBySchemaWithCheck(Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/Schema<",
            "TT;>;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 244
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 245
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readMessage(Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readMessageList(Ljava/util/List;Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/explorestack/protobuf/Schema<",
            "TT;>;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 938
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 941
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    .line 943
    :cond_b
    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readMessage(Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_19

    return-void

    .line 948
    :cond_19
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 949
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    if-eq v2, v0, :cond_b

    .line 953
    iput v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    .line 939
    :cond_24
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public readSFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 340
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed32List(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1141
    instance-of v0, p1, Lcom/explorestack/protobuf/IntArrayList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_49

    .line 1142
    check-cast p1, Lcom/explorestack/protobuf/IntArrayList;

    .line 1143
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_33

    if-ne v0, v1, :cond_2e

    .line 1154
    :cond_12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readSFixed32()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/IntArrayList;->addInt(I)V

    .line 1156
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_21

    goto/16 :goto_91

    .line 1159
    :cond_21
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1160
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1161
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_12

    .line 1164
    iput v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    .line 1169
    :cond_2e
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1145
    :cond_33
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1146
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 1147
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1148
    :goto_3d
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_91

    .line 1149
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/IntArrayList;->addInt(I)V

    goto :goto_3d

    .line 1172
    :cond_49
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_77

    if-ne v0, v1, :cond_72

    .line 1183
    :cond_53
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1185
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_65

    goto :goto_91

    .line 1188
    :cond_65
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1189
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1190
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_53

    .line 1193
    iput v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    .line 1198
    :cond_72
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1174
    :cond_77
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1175
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 1176
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1177
    :goto_81
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_91

    .line 1178
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_81

    :cond_91
    :goto_91
    return-void
.end method

.method public readSFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 346
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSFixed64List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1205
    instance-of v0, p1, Lcom/explorestack/protobuf/LongArrayList;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_49

    .line 1206
    move-object v0, p1

    check-cast v0, Lcom/explorestack/protobuf/LongArrayList;

    .line 1207
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eq p1, v2, :cond_2e

    if-ne p1, v1, :cond_29

    .line 1209
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result p1

    .line 1210
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 1211
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, p1

    .line 1212
    :goto_1d
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge p1, v1, :cond_83

    .line 1213
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/explorestack/protobuf/LongArrayList;->addLong(J)V

    goto :goto_1d

    .line 1233
    :cond_29
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1218
    :cond_2e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readSFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/LongArrayList;->addLong(J)V

    .line 1220
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3c

    goto :goto_83

    .line 1223
    :cond_3c
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1224
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1225
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_2e

    .line 1228
    iput p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    .line 1236
    :cond_49
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_72

    if-ne v0, v1, :cond_6d

    .line 1238
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1239
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 1240
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1241
    :goto_5d
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_83

    .line 1242
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 1262
    :cond_6d
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1247
    :cond_72
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1249
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_84

    :cond_83
    :goto_83
    return-void

    .line 1252
    :cond_84
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1253
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1254
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_72

    .line 1257
    iput v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void
.end method

.method public readSInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 352
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 353
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/explorestack/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt32List(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1269
    instance-of v0, p1, Lcom/explorestack/protobuf/IntArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_49

    .line 1270
    move-object v0, p1

    check-cast v0, Lcom/explorestack/protobuf/IntArrayList;

    .line 1271
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2e

    if-ne p1, v1, :cond_29

    .line 1273
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result p1

    .line 1274
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, p1

    .line 1275
    :goto_19
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge p1, v1, :cond_84

    .line 1276
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result p1

    invoke-static {p1}, Lcom/explorestack/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/IntArrayList;->addInt(I)V

    goto :goto_19

    .line 1296
    :cond_29
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1281
    :cond_2e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readSInt32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/IntArrayList;->addInt(I)V

    .line 1283
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3c

    goto :goto_84

    .line 1286
    :cond_3c
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1287
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1288
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_2e

    .line 1291
    iput p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    .line 1299
    :cond_49
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_73

    if-ne v0, v1, :cond_6e

    .line 1301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1302
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1303
    :goto_5a
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_84

    .line 1304
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/explorestack/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 1324
    :cond_6e
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1309
    :cond_73
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1311
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_85

    :cond_84
    :goto_84
    return-void

    .line 1314
    :cond_85
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1315
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1316
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_73

    .line 1319
    iput v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void
.end method

.method public readSInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 358
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 359
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt64List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1331
    instance-of v0, p1, Lcom/explorestack/protobuf/LongArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_49

    .line 1332
    move-object v0, p1

    check-cast v0, Lcom/explorestack/protobuf/LongArrayList;

    .line 1333
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2e

    if-ne p1, v1, :cond_29

    .line 1335
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result p1

    .line 1336
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, p1

    .line 1337
    :goto_19
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge p1, v1, :cond_84

    .line 1338
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/explorestack/protobuf/LongArrayList;->addLong(J)V

    goto :goto_19

    .line 1358
    :cond_29
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1343
    :cond_2e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readSInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/LongArrayList;->addLong(J)V

    .line 1345
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3c

    goto :goto_84

    .line 1348
    :cond_3c
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1349
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1350
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_2e

    .line 1353
    iput p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    .line 1361
    :cond_49
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_73

    if-ne v0, v1, :cond_6e

    .line 1363
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1364
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1365
    :goto_5a
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_84

    .line 1366
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 1386
    :cond_6e
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1371
    :cond_73
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1373
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_85

    :cond_84
    :goto_84
    return-void

    .line 1376
    :cond_85
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1377
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1378
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_73

    .line 1381
    iput v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void
.end method

.method public readString()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readStringInternal(Z)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 219
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 220
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    if-nez v0, :cond_d

    .line 222
    const-string p1, ""

    return-object p1

    .line 225
    :cond_d
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    if-eqz p1, :cond_24

    .line 226
    iget-object p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v2, v1, v0

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_24

    .line 227
    :cond_1f
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 229
    :cond_24
    :goto_24
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    sget-object v3, Lcom/explorestack/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 230
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-object p1
.end method

.method public readStringList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 876
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readStringListInternal(Ljava/util/List;Z)V

    return-void
.end method

.method public readStringListInternal(Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 886
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_48

    .line 890
    instance-of v0, p1, Lcom/explorestack/protobuf/LazyStringList;

    if-eqz v0, :cond_2d

    if-nez p2, :cond_2d

    .line 891
    move-object v0, p1

    check-cast v0, Lcom/explorestack/protobuf/LazyStringList;

    .line 893
    :cond_12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 895
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_3a

    .line 898
    :cond_20
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 899
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result p2

    .line 900
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq p2, v1, :cond_12

    .line 903
    iput p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    .line 909
    :cond_2d
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 911
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_3b

    :goto_3a
    return-void

    .line 914
    :cond_3b
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 915
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 916
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_2d

    .line 919
    iput v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    .line 887
    :cond_48
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public readStringListRequireUtf8(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 881
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readStringListInternal(Ljava/util/List;Z)V

    return-void
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 329
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt32List(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1017
    instance-of v0, p1, Lcom/explorestack/protobuf/IntArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_45

    .line 1018
    move-object v0, p1

    check-cast v0, Lcom/explorestack/protobuf/IntArrayList;

    .line 1019
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2a

    if-ne p1, v1, :cond_25

    .line 1021
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result p1

    .line 1022
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, p1

    .line 1023
    :goto_19
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge p1, v1, :cond_7c

    .line 1024
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/IntArrayList;->addInt(I)V

    goto :goto_19

    .line 1044
    :cond_25
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1029
    :cond_2a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readUInt32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/IntArrayList;->addInt(I)V

    .line 1031
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_38

    goto :goto_7c

    .line 1034
    :cond_38
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1035
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1036
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_2a

    .line 1039
    iput p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    .line 1047
    :cond_45
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_6b

    if-ne v0, v1, :cond_66

    .line 1049
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1050
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1051
    :goto_56
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_7c

    .line 1052
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 1072
    :cond_66
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1057
    :cond_6b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7d

    :cond_7c
    :goto_7c
    return-void

    .line 1062
    :cond_7d
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1063
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1064
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_6b

    .line 1067
    iput v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void
.end method

.method public readUInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 175
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUInt64List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    instance-of v0, p1, Lcom/explorestack/protobuf/LongArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_49

    .line 493
    move-object v0, p1

    check-cast v0, Lcom/explorestack/protobuf/LongArrayList;

    .line 494
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2e

    if-ne p1, v1, :cond_29

    .line 496
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result p1

    .line 497
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, p1

    .line 498
    :goto_19
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge p1, v1, :cond_25

    .line 499
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/explorestack/protobuf/LongArrayList;->addLong(J)V

    goto :goto_19

    .line 501
    :cond_25
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    return-void

    .line 520
    :cond_29
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 505
    :cond_2e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readUInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/LongArrayList;->addLong(J)V

    .line 507
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3c

    goto :goto_84

    .line 510
    :cond_3c
    iget p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 511
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 512
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_2e

    .line 515
    iput p1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    .line 523
    :cond_49
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_73

    if-ne v0, v1, :cond_6e

    .line 525
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 526
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 527
    :goto_5a
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_6a

    .line 528
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 530
    :cond_6a
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    return-void

    .line 549
    :cond_6e
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 534
    :cond_73
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_85

    :goto_84
    return-void

    .line 539
    :cond_85
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 540
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 541
    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_73

    .line 544
    iput v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void
.end method

.method public final readVarint32()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1496
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1498
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-eq v1, v0, :cond_7f

    .line 1503
    iget-object v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v4, v2, v0

    if-ltz v4, :cond_11

    .line 1504
    iput v3, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return v4

    :cond_11
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-ge v1, v5, :cond_1c

    .line 1507
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint64SlowPath()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_1c
    add-int/lit8 v1, v0, 0x2

    .line 1508
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_28

    xor-int/lit8 v0, v3, -0x80

    goto :goto_7c

    :cond_28
    add-int/lit8 v4, v0, 0x3

    .line 1510
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    if-ltz v1, :cond_35

    xor-int/lit16 v0, v1, 0x3f80

    :goto_33
    move v1, v4

    goto :goto_7c

    :cond_35
    add-int/lit8 v3, v0, 0x4

    .line 1512
    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_44

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    :goto_42
    move v1, v3

    goto :goto_7c

    :cond_44
    add-int/lit8 v4, v0, 0x5

    .line 1515
    aget-byte v3, v2, v3

    shl-int/lit8 v5, v3, 0x1c

    xor-int/2addr v1, v5

    const v5, 0xfe03f80

    xor-int/2addr v1, v5

    if-gez v3, :cond_78

    add-int/lit8 v3, v0, 0x6

    .line 1518
    aget-byte v4, v2, v4

    if-gez v4, :cond_7a

    add-int/lit8 v4, v0, 0x7

    aget-byte v3, v2, v3

    if-gez v3, :cond_78

    add-int/lit8 v3, v0, 0x8

    aget-byte v4, v2, v4

    if-gez v4, :cond_7a

    add-int/lit8 v4, v0, 0x9

    aget-byte v3, v2, v3

    if-gez v3, :cond_78

    add-int/lit8 v0, v0, 0xa

    aget-byte v2, v2, v4

    if-ltz v2, :cond_73

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_7c

    .line 1524
    :cond_73
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_78
    move v0, v1

    goto :goto_33

    :cond_7a
    move v0, v1

    goto :goto_42

    .line 1527
    :goto_7c
    iput v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return v0

    .line 1499
    :cond_7f
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readVarint64()J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1543
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1545
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-eq v1, v0, :cond_c6

    .line 1549
    iget-object v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    .line 1552
    aget-byte v4, v2, v0

    if-ltz v4, :cond_12

    .line 1553
    iput v3, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    int-to-long v0, v4

    return-wide v0

    :cond_12
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-ge v1, v5, :cond_1c

    .line 1556
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    :cond_1c
    add-int/lit8 v1, v0, 0x2

    .line 1557
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_2a

    xor-int/lit8 v0, v3, -0x80

    int-to-long v2, v0

    goto/16 :goto_c3

    :cond_2a
    add-int/lit8 v4, v0, 0x3

    .line 1559
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    if-ltz v1, :cond_39

    xor-int/lit16 v0, v1, 0x3f80

    int-to-long v2, v0

    move v1, v4

    goto/16 :goto_c3

    :cond_39
    add-int/lit8 v3, v0, 0x4

    .line 1561
    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_4c

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    move-wide v10, v0

    move v1, v3

    move-wide v2, v10

    goto/16 :goto_c3

    :cond_4c
    int-to-long v4, v1

    add-int/lit8 v1, v0, 0x5

    .line 1563
    aget-byte v3, v2, v3

    int-to-long v6, v3

    const/16 v3, 0x1c

    shl-long/2addr v6, v3

    xor-long v3, v4, v6

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_63

    const-wide/32 v5, 0xfe03f80

    :goto_60
    xor-long v2, v3, v5

    goto :goto_c3

    :cond_63
    add-int/lit8 v7, v0, 0x6

    .line 1565
    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x23

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-gez v1, :cond_79

    const-wide v0, -0x7f01fc080L

    :goto_75
    xor-long v2, v3, v0

    move v1, v7

    goto :goto_c3

    :cond_79
    add-int/lit8 v1, v0, 0x7

    .line 1567
    aget-byte v7, v2, v7

    int-to-long v7, v7

    const/16 v9, 0x2a

    shl-long/2addr v7, v9

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-ltz v7, :cond_8c

    const-wide v5, 0x3f80fe03f80L

    goto :goto_60

    :cond_8c
    add-int/lit8 v7, v0, 0x8

    .line 1569
    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x31

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-gez v1, :cond_9f

    const-wide v0, -0x1fc07f01fc080L

    goto :goto_75

    :cond_9f
    add-int/lit8 v1, v0, 0x9

    .line 1579
    aget-byte v7, v2, v7

    int-to-long v7, v7

    const/16 v9, 0x38

    shl-long/2addr v7, v9

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-gez v7, :cond_bc

    add-int/lit8 v0, v0, 0xa

    .line 1590
    aget-byte v1, v2, v1

    int-to-long v1, v1

    cmp-long v1, v1, v5

    if-ltz v1, :cond_be

    move v1, v0

    :cond_bc
    move-wide v2, v3

    goto :goto_c3

    .line 1591
    :cond_be
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1595
    :goto_c3
    iput v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-wide v2

    .line 1546
    :cond_c6
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final readVarint64SlowPath()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    .line 1602
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    .line 1608
    :cond_18
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final requireBytes(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_a

    .line 1696
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_a

    return-void

    .line 1697
    :cond_a
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final requirePosition(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1724
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ne v0, p1, :cond_5

    return-void

    .line 1725
    :cond_5
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final requireWireType(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1702
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-ne v0, p1, :cond_9

    return-void

    .line 1703
    :cond_9
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final skipBytes(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1676
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1678
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void
.end method

.method public skipField()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-nez v0, :cond_3f

    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-ne v0, v1, :cond_d

    goto :goto_3f

    .line 139
    :cond_d
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3b

    if-eq v0, v1, :cond_35

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2d

    const/4 v2, 0x3

    if-eq v0, v2, :cond_29

    const/4 v2, 0x5

    if-ne v0, v2, :cond_24

    const/4 v0, 0x4

    .line 150
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->skipBytes(I)V

    return v1

    .line 156
    :cond_24
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 153
    :cond_29
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->skipGroup()V

    return v1

    .line 147
    :cond_2d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->skipBytes(I)V

    return v1

    :cond_35
    const/16 v0, 0x8

    .line 144
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->skipBytes(I)V

    return v1

    .line 141
    :cond_3b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->skipVarint()V

    return v1

    :cond_3f
    :goto_3f
    const/4 v0, 0x0

    return v0
.end method

.method public final skipGroup()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1682
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 1683
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/explorestack/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    iput v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 1685
    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->getFieldNumber()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1e

    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->skipField()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1689
    :cond_1e
    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v2, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-ne v1, v2, :cond_27

    .line 1692
    iput v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    return-void

    .line 1690
    :cond_27
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final skipVarint()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1653
    iget v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v1, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    sub-int/2addr v0, v1

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1b

    .line 1654
    iget-object v0, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1b

    add-int/lit8 v4, v1, 0x1

    .line 1657
    aget-byte v1, v0, v1

    if-ltz v1, :cond_17

    .line 1658
    iput v4, p0, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_17
    add-int/lit8 v3, v3, 0x1

    move v1, v4

    goto :goto_c

    .line 1663
    :cond_1b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->skipVarintSlowPath()V

    return-void
.end method

.method public final skipVarintSlowPath()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 1668
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->readByte()B

    move-result v1

    if-ltz v1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1672
    :cond_f
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final verifyPackedFixed32Length(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1716
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_8

    return-void

    .line 1719
    :cond_8
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final verifyPackedFixed64Length(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1708
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    and-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_8

    return-void

    .line 1711
    :cond_8
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method
