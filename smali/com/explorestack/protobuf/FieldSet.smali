###### Class com.explorestack.protobuf.FieldSet (com.explorestack.protobuf.FieldSet)
.class public final Lcom/explorestack/protobuf/FieldSet;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/FieldSet$Builder;,
        Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/FieldSet;


# instance fields
.field public final fields:Lcom/explorestack/protobuf/SmallSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public hasLazyField:Z

.field public isImmutable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 114
    new-instance v0, Lcom/explorestack/protobuf/FieldSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/FieldSet;-><init>(Z)V

    sput-object v0, Lcom/explorestack/protobuf/FieldSet;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/FieldSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 82
    invoke-static {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/explorestack/protobuf/SmallSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    return-void
.end method

.method public constructor <init>(Lcom/explorestack/protobuf/SmallSortedMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    .line 94
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldSet;->makeImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/SmallSortedMap;Lcom/explorestack/protobuf/FieldSet$1;)V
    .registers 3

    .line 51
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/FieldSet;-><init>(Lcom/explorestack/protobuf/SmallSortedMap;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    const/4 p1, 0x0

    .line 88
    invoke-static {p1}, Lcom/explorestack/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/explorestack/protobuf/SmallSortedMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/FieldSet;-><init>(Lcom/explorestack/protobuf/SmallSortedMap;)V

    .line 89
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldSet;->makeImmutable()V

    return-void
.end method

.method public static synthetic access$100(Lcom/explorestack/protobuf/SmallSortedMap;Z)Lcom/explorestack/protobuf/SmallSortedMap;
    .registers 2

    .line 51
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/FieldSet;->cloneAllFieldsMap(Lcom/explorestack/protobuf/SmallSortedMap;Z)Lcom/explorestack/protobuf/SmallSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$302(Lcom/explorestack/protobuf/FieldSet;Z)Z
    .registers 2

    .line 51
    iput-boolean p1, p0, Lcom/explorestack/protobuf/FieldSet;->hasLazyField:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/explorestack/protobuf/FieldSet;)Lcom/explorestack/protobuf/SmallSortedMap;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z
    .registers 2

    .line 51
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/FieldSet;->isValidType(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Ljava/util/Map$Entry;)Z
    .registers 1

    .line 51
    invoke-static {p0}, Lcom/explorestack/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    .line 51
    invoke-static {p0}, Lcom/explorestack/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static cloneAllFieldsMap(Lcom/explorestack/protobuf/SmallSortedMap;Z)Lcom/explorestack/protobuf/SmallSortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Lcom/explorestack/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/explorestack/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 204
    invoke-static {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/explorestack/protobuf/SmallSortedMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 205
    :goto_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 206
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/explorestack/protobuf/FieldSet;->cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 208
    :cond_17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 209
    invoke-static {v0, v1, p1}, Lcom/explorestack/protobuf/FieldSet;->cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;Z)V

    goto :goto_1f

    :cond_2f
    return-object v0
.end method

.method public static cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 216
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    .line 217
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 218
    instance-of v1, p1, Lcom/explorestack/protobuf/LazyField;

    if-eqz v1, :cond_18

    .line 219
    check-cast p1, Lcom/explorestack/protobuf/LazyField;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/LazyField;->getValue()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_18
    if-eqz p2, :cond_29

    .line 220
    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_29

    .line 221
    new-instance p2, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 223
    :cond_29
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 513
    instance-of v0, p0, [B

    if-eqz v0, :cond_f

    .line 514
    check-cast p0, [B

    .line 515
    array-length v0, p0

    new-array v0, v0, [B

    .line 516
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_f
    return-object p0
.end method

.method public static computeElementSize(Lcom/explorestack/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I
    .registers 4

    .line 816
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p1

    .line 817
    sget-object v0, Lcom/explorestack/protobuf/WireFormat$FieldType;->GROUP:Lcom/explorestack/protobuf/WireFormat$FieldType;

    if-ne p0, v0, :cond_a

    mul-int/lit8 p1, p1, 0x2

    .line 822
    :cond_a
    invoke-static {p0, p2}, Lcom/explorestack/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static computeElementSizeNoTag(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I
    .registers 3

    .line 834
    sget-object v0, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_fa

    .line 893
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 886
    :pswitch_13
    instance-of p0, p1, Lcom/explorestack/protobuf/Internal$EnumLite;

    if-eqz p0, :cond_22

    .line 887
    check-cast p1, Lcom/explorestack/protobuf/Internal$EnumLite;

    invoke-interface {p1}, Lcom/explorestack/protobuf/Internal$EnumLite;->getNumber()I

    move-result p0

    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result p0

    return p0

    .line 889
    :cond_22
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result p0

    return p0

    .line 876
    :pswitch_2d
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result p0

    return p0

    .line 874
    :pswitch_38
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result p0

    return p0

    .line 872
    :pswitch_43
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result p0

    return p0

    .line 870
    :pswitch_4e
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result p0

    return p0

    .line 868
    :pswitch_59
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result p0

    return p0

    .line 856
    :pswitch_64
    instance-of p0, p1, Lcom/explorestack/protobuf/ByteString;

    if-eqz p0, :cond_6f

    .line 857
    check-cast p1, Lcom/explorestack/protobuf/ByteString;

    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/explorestack/protobuf/ByteString;)I

    move-result p0

    return p0

    .line 859
    :cond_6f
    check-cast p1, [B

    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeByteArraySizeNoTag([B)I

    move-result p0

    return p0

    .line 862
    :pswitch_76
    instance-of p0, p1, Lcom/explorestack/protobuf/ByteString;

    if-eqz p0, :cond_81

    .line 863
    check-cast p1, Lcom/explorestack/protobuf/ByteString;

    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/explorestack/protobuf/ByteString;)I

    move-result p0

    return p0

    .line 865
    :cond_81
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 879
    :pswitch_88
    instance-of p0, p1, Lcom/explorestack/protobuf/LazyField;

    if-eqz p0, :cond_93

    .line 880
    check-cast p1, Lcom/explorestack/protobuf/LazyField;

    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/explorestack/protobuf/LazyFieldLite;)I

    move-result p0

    return p0

    .line 882
    :cond_93
    check-cast p1, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/explorestack/protobuf/MessageLite;)I

    move-result p0

    return p0

    .line 854
    :pswitch_9a
    check-cast p1, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/explorestack/protobuf/MessageLite;)I

    move-result p0

    return p0

    .line 852
    :pswitch_a1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result p0

    return p0

    .line 850
    :pswitch_ac
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result p0

    return p0

    .line 848
    :pswitch_b7
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result p0

    return p0

    .line 846
    :pswitch_c2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result p0

    return p0

    .line 844
    :pswitch_cd
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result p0

    return p0

    .line 842
    :pswitch_d8
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result p0

    return p0

    .line 840
    :pswitch_e3
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result p0

    return p0

    .line 838
    :pswitch_ee
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result p0

    return p0

    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_ee
        :pswitch_e3
        :pswitch_d8
        :pswitch_cd
        :pswitch_c2
        :pswitch_b7
        :pswitch_ac
        :pswitch_a1
        :pswitch_9a
        :pswitch_88
        :pswitch_76
        :pswitch_64
        :pswitch_59
        :pswitch_4e
        :pswitch_43
        :pswitch_38
        :pswitch_2d
        :pswitch_13
    .end packed-switch
.end method

.method public static computeFieldSize(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 898
    invoke-interface {p0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object v0

    .line 899
    invoke-interface {p0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v1

    .line 900
    invoke-interface {p0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 901
    invoke-interface {p0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_36

    .line 903
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 904
    invoke-static {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1b

    .line 907
    :cond_2b
    invoke-static {v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    add-int/2addr p0, v2

    .line 908
    invoke-static {v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 911
    :cond_36
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 912
    invoke-static {v0, v1, p1}, Lcom/explorestack/protobuf/FieldSet;->computeElementSize(Lcom/explorestack/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_3c

    :cond_4c
    return v2

    .line 917
    :cond_4d
    invoke-static {v0, v1, p1}, Lcom/explorestack/protobuf/FieldSet;->computeElementSize(Lcom/explorestack/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static emptySet()Lcom/explorestack/protobuf/FieldSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lcom/explorestack/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 105
    sget-object v0, Lcom/explorestack/protobuf/FieldSet;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/FieldSet;

    return-object v0
.end method

.method public static getWireFormatForFieldType(Lcom/explorestack/protobuf/WireFormat$FieldType;Z)I
    .registers 2

    if-eqz p1, :cond_4

    const/4 p0, 0x2

    return p0

    .line 498
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getWireType()I

    move-result p0

    return p0
.end method

.method public static isInitialized(Ljava/util/Map$Entry;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 464
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    .line 465
    invoke-interface {v0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/explorestack/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_51

    .line 466
    invoke-interface {v0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 467
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/MessageLite;

    .line 468
    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageLite;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_20

    return v1

    .line 473
    :cond_33
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 474
    instance-of v0, p0, Lcom/explorestack/protobuf/MessageLite;

    if-eqz v0, :cond_44

    .line 475
    check-cast p0, Lcom/explorestack/protobuf/MessageLite;

    invoke-interface {p0}, Lcom/explorestack/protobuf/MessageLite;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_51

    return v1

    .line 478
    :cond_44
    instance-of p0, p0, Lcom/explorestack/protobuf/LazyField;

    if-eqz p0, :cond_49

    return v3

    .line 481
    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_51
    return v3
.end method

.method public static isValidType(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z
    .registers 4

    .line 413
    invoke-static {p1}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    invoke-virtual {p0}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_48

    return v1

    .line 434
    :pswitch_15
    instance-of p0, p1, Lcom/explorestack/protobuf/MessageLite;

    if-nez p0, :cond_1f

    instance-of p0, p1, Lcom/explorestack/protobuf/LazyField;

    if-eqz p0, :cond_1e

    goto :goto_1f

    :cond_1e
    return v1

    :cond_1f
    :goto_1f
    return v0

    .line 431
    :pswitch_20
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_2a

    instance-of p0, p1, Lcom/explorestack/protobuf/Internal$EnumLite;

    if-eqz p0, :cond_29

    goto :goto_2a

    :cond_29
    return v1

    :cond_2a
    :goto_2a
    return v0

    .line 428
    :pswitch_2b
    instance-of p0, p1, Lcom/explorestack/protobuf/ByteString;

    if-nez p0, :cond_35

    instance-of p0, p1, [B

    if-eqz p0, :cond_34

    goto :goto_35

    :cond_34
    return v1

    :cond_35
    :goto_35
    return v0

    .line 426
    :pswitch_36
    instance-of p0, p1, Ljava/lang/String;

    return p0

    .line 424
    :pswitch_39
    instance-of p0, p1, Ljava/lang/Boolean;

    return p0

    .line 422
    :pswitch_3c
    instance-of p0, p1, Ljava/lang/Double;

    return p0

    .line 420
    :pswitch_3f
    instance-of p0, p1, Ljava/lang/Float;

    return p0

    .line 418
    :pswitch_42
    instance-of p0, p1, Ljava/lang/Long;

    return p0

    .line 416
    :pswitch_45
    instance-of p0, p1, Ljava/lang/Integer;

    return p0

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_2b
        :pswitch_20
        :pswitch_15
    .end packed-switch
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/FieldSet$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lcom/explorestack/protobuf/FieldSet$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/explorestack/protobuf/FieldSet$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/FieldSet$Builder;-><init>(Lcom/explorestack/protobuf/FieldSet$1;)V

    return-object v0
.end method

.method public static newFieldSet()Lcom/explorestack/protobuf/FieldSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lcom/explorestack/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/explorestack/protobuf/FieldSet;

    invoke-direct {v0}, Lcom/explorestack/protobuf/FieldSet;-><init>()V

    return-object v0
.end method

.method public static readPrimitiveField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_9

    .line 574
    sget-object p2, Lcom/explorestack/protobuf/WireFormat$Utf8Validation;->STRICT:Lcom/explorestack/protobuf/WireFormat$Utf8Validation;

    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/WireFormat;->readPrimitiveField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;Lcom/explorestack/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 576
    :cond_9
    sget-object p2, Lcom/explorestack/protobuf/WireFormat$Utf8Validation;->LOOSE:Lcom/explorestack/protobuf/WireFormat$Utf8Validation;

    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/WireFormat;->readPrimitiveField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;Lcom/explorestack/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static writeElement(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 635
    sget-object v0, Lcom/explorestack/protobuf/WireFormat$FieldType;->GROUP:Lcom/explorestack/protobuf/WireFormat$FieldType;

    if-ne p1, v0, :cond_a

    .line 636
    check-cast p3, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeGroup(ILcom/explorestack/protobuf/MessageLite;)V

    return-void

    :cond_a
    const/4 v0, 0x0

    .line 638
    invoke-static {p1, v0}, Lcom/explorestack/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/explorestack/protobuf/WireFormat$FieldType;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    .line 639
    invoke-static {p0, p1, p3}, Lcom/explorestack/protobuf/FieldSet;->writeElementNoTag(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    return-void
.end method

.method public static writeElementNoTag(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 654
    sget-object v0, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_d2

    return-void

    .line 716
    :pswitch_c
    instance-of p1, p2, Lcom/explorestack/protobuf/Internal$EnumLite;

    if-eqz p1, :cond_1a

    .line 717
    check-cast p2, Lcom/explorestack/protobuf/Internal$EnumLite;

    invoke-interface {p2}, Lcom/explorestack/protobuf/Internal$EnumLite;->getNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    return-void

    .line 719
    :cond_1a
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    return-void

    .line 712
    :pswitch_24
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeSInt64NoTag(J)V

    return-void

    .line 709
    :pswitch_2e
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeSInt32NoTag(I)V

    return-void

    .line 706
    :pswitch_38
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeSFixed64NoTag(J)V

    return-void

    .line 703
    :pswitch_42
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeSFixed32NoTag(I)V

    return-void

    .line 700
    :pswitch_4c
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    return-void

    .line 693
    :pswitch_56
    instance-of p1, p2, Lcom/explorestack/protobuf/ByteString;

    if-eqz p1, :cond_60

    .line 694
    check-cast p2, Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/explorestack/protobuf/ByteString;)V

    return-void

    .line 696
    :cond_60
    check-cast p2, [B

    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeByteArrayNoTag([B)V

    return-void

    .line 686
    :pswitch_66
    instance-of p1, p2, Lcom/explorestack/protobuf/ByteString;

    if-eqz p1, :cond_70

    .line 687
    check-cast p2, Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/explorestack/protobuf/ByteString;)V

    return-void

    .line 689
    :cond_70
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    return-void

    .line 683
    :pswitch_76
    check-cast p2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessageNoTag(Lcom/explorestack/protobuf/MessageLite;)V

    return-void

    .line 680
    :pswitch_7c
    check-cast p2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/explorestack/protobuf/MessageLite;)V

    return-void

    .line 677
    :pswitch_82
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBoolNoTag(Z)V

    return-void

    .line 674
    :pswitch_8c
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    return-void

    .line 671
    :pswitch_96
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    return-void

    .line 668
    :pswitch_a0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    return-void

    .line 665
    :pswitch_aa
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    return-void

    .line 662
    :pswitch_b4
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    return-void

    .line 659
    :pswitch_be
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloatNoTag(F)V

    return-void

    .line 656
    :pswitch_c8
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeDoubleNoTag(D)V

    return-void

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_c8
        :pswitch_be
        :pswitch_b4
        :pswitch_aa
        :pswitch_a0
        :pswitch_96
        :pswitch_8c
        :pswitch_82
        :pswitch_7c
        :pswitch_76
        :pswitch_66
        :pswitch_56
        :pswitch_4c
        :pswitch_42
        :pswitch_38
        :pswitch_2e
        :pswitch_24
        :pswitch_c
    .end packed-switch
.end method

.method public static writeField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/explorestack/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 729
    invoke-interface {p0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object v0

    .line 730
    invoke-interface {p0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v1

    .line 731
    invoke-interface {p0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 732
    check-cast p1, Ljava/util/List;

    .line 733
    invoke-interface {p0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_44

    const/4 p0, 0x2

    .line 734
    invoke-virtual {p2, v1, p0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    .line 737
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 738
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1f

    .line 740
    :cond_2f
    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 742
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 743
    invoke-static {p2, v0, p1}, Lcom/explorestack/protobuf/FieldSet;->writeElementNoTag(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_36

    .line 746
    :cond_44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_48
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 747
    invoke-static {p2, v0, v1, p1}, Lcom/explorestack/protobuf/FieldSet;->writeElement(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    goto :goto_48

    :cond_56
    return-void

    .line 751
    :cond_57
    instance-of p0, p1, Lcom/explorestack/protobuf/LazyField;

    if-eqz p0, :cond_65

    .line 752
    check-cast p1, Lcom/explorestack/protobuf/LazyField;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/LazyField;->getValue()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p0

    invoke-static {p2, v0, v1, p0}, Lcom/explorestack/protobuf/FieldSet;->writeElement(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    return-void

    .line 754
    :cond_65
    invoke-static {p2, v0, v1, p1}, Lcom/explorestack/protobuf/FieldSet;->writeElement(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 366
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/FieldSet;->verifyType(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 373
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldSet;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 377
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1, p1, v0}, Lcom/explorestack/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 379
    :cond_1a
    check-cast v0, Ljava/util/List;

    .line 382
    :goto_1c
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 367
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->clear()V

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet;->hasLazyField:Z

    return-void
.end method

.method public clearField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object p1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    .line 305
    iput-boolean p1, p0, Lcom/explorestack/protobuf/FieldSet;->hasLazyField:Z

    :cond_10
    return-void
.end method

.method public clone()Lcom/explorestack/protobuf/FieldSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 169
    invoke-static {}, Lcom/explorestack/protobuf/FieldSet;->newFieldSet()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    const/4 v1, 0x0

    .line 170
    :goto_5
    iget-object v2, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 171
    iget-object v2, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/explorestack/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 172
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/explorestack/protobuf/FieldSet;->setField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 174
    :cond_23
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 175
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/explorestack/protobuf/FieldSet;->setField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_2d

    .line 177
    :cond_47
    iget-boolean v1, p0, Lcom/explorestack/protobuf/FieldSet;->hasLazyField:Z

    iput-boolean v1, v0, Lcom/explorestack/protobuf/FieldSet;->hasLazyField:Z

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldSet;->clone()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 244
    iget-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_14

    .line 245
    new-instance v0, Lcom/explorestack/protobuf/LazyField$LazyIterator;

    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SmallSortedMap;->descendingEntrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyField$LazyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 247
    :cond_14
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->descendingEntrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 146
    :cond_4
    instance-of v0, p1, Lcom/explorestack/protobuf/FieldSet;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 150
    :cond_a
    check-cast p1, Lcom/explorestack/protobuf/FieldSet;

    .line 151
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    iget-object p1, p1, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAllFields()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 192
    iget-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_17

    .line 193
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/FieldSet;->cloneAllFieldsMap(Lcom/explorestack/protobuf/SmallSortedMap;Z)Lcom/explorestack/protobuf/SmallSortedMap;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 195
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->makeImmutable()V

    :cond_16
    return-object v0

    .line 199
    :cond_17
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    return-object v0

    :cond_22
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 266
    instance-of v0, p1, Lcom/explorestack/protobuf/LazyField;

    if-eqz v0, :cond_10

    .line 267
    check-cast p1, Lcom/explorestack/protobuf/LazyField;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/LazyField;->getValue()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    :cond_10
    return-object p1
.end method

.method public getMessageSetSerializedSize()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 778
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v0, v2, :cond_18

    .line 779
    iget-object v2, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v2, v0}, Lcom/explorestack/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/explorestack/protobuf/FieldSet;->getMessageSetSerializedSize(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 781
    :cond_18
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 782
    invoke-virtual {p0, v2}, Lcom/explorestack/protobuf/FieldSet;->getMessageSetSerializedSize(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_22

    :cond_34
    return v1
.end method

.method public final getMessageSetSerializedSize(Ljava/util/Map$Entry;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 788
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    .line 789
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 790
    invoke-interface {v0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    move-result-object v2

    sget-object v3, Lcom/explorestack/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    if-ne v2, v3, :cond_44

    .line 791
    invoke-interface {v0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-nez v2, :cond_44

    .line 792
    invoke-interface {v0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v2

    if-nez v2, :cond_44

    .line 793
    instance-of v0, v1, Lcom/explorestack/protobuf/LazyField;

    if-eqz v0, :cond_33

    .line 795
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result p1

    check-cast v1, Lcom/explorestack/protobuf/LazyField;

    .line 794
    invoke-static {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeLazyFieldMessageSetExtensionSize(ILcom/explorestack/protobuf/LazyFieldLite;)I

    move-result p1

    return p1

    .line 798
    :cond_33
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result p1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 797
    invoke-static {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSetExtensionSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result p1

    return p1

    .line 801
    :cond_44
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/FieldSet;->computeFieldSize(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 326
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 331
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldSet;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 336
    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 334
    :cond_13
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 327
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRepeatedFieldCount(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 311
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 316
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldSet;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p1, 0x0

    return p1

    .line 320
    :cond_e
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 312
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSerializedSize()I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 765
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v0, v2, :cond_22

    .line 766
    iget-object v2, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v2, v0}, Lcom/explorestack/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 767
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/FieldSet;->computeFieldSize(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 769
    :cond_22
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 770
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/FieldSet;->computeFieldSize(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2c

    :cond_48
    return v1
.end method

.method public hasField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 252
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_12

    .line 256
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1

    .line 253
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hasField() can only be called on non-repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isImmutable()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet;->isImmutable:Z

    return v0
.end method

.method public isInitialized()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 448
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 449
    iget-object v2, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/explorestack/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/explorestack/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_17

    return v0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 453
    :cond_1a
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 454
    invoke-static {v2}, Lcom/explorestack/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_24

    return v0

    :cond_37
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 232
    iget-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_14

    .line 233
    new-instance v0, Lcom/explorestack/protobuf/LazyField$LazyIterator;

    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyField$LazyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 235
    :cond_14
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public makeImmutable()V
    .registers 2

    .line 123
    iget-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet;->isImmutable:Z

    if-eqz v0, :cond_5

    return-void

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->makeImmutable()V

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet;->isImmutable:Z

    return-void
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/FieldSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/FieldSet<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 504
    :goto_1
    iget-object v1, p1, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 505
    iget-object v1, p1, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/FieldSet;->mergeFromField(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 507
    :cond_15
    iget-object p1, p1, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 508
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/FieldSet;->mergeFromField(Ljava/util/Map$Entry;)V

    goto :goto_1f

    :cond_2f
    return-void
.end method

.method public final mergeFromField(Ljava/util/Map$Entry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 525
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    .line 526
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 527
    instance-of v1, p1, Lcom/explorestack/protobuf/LazyField;

    if-eqz v1, :cond_14

    .line 528
    check-cast p1, Lcom/explorestack/protobuf/LazyField;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/LazyField;->getValue()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    .line 531
    :cond_14
    invoke-interface {v0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 532
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/FieldSet;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_25

    .line 534
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 536
    :cond_25
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 537
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lcom/explorestack/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 539
    :cond_40
    iget-object p1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 540
    :cond_46
    invoke-interface {v0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/explorestack/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_74

    .line 541
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/FieldSet;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5e

    .line 543
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-static {p1}, Lcom/explorestack/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 546
    :cond_5e
    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 548
    invoke-interface {v1}, Lcom/explorestack/protobuf/MessageLite;->toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;

    move-result-object v1

    check-cast p1, Lcom/explorestack/protobuf/MessageLite;

    invoke-interface {v0, v1, p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->internalMergeFrom(Lcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite$Builder;

    move-result-object p1

    .line 549
    invoke-interface {p1}, Lcom/explorestack/protobuf/MessageLite$Builder;->build()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    .line 550
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 553
    :cond_74
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-static {p1}, Lcom/explorestack/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 277
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 278
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_28

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 287
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 288
    invoke-virtual {p0, p1, v1}, Lcom/explorestack/protobuf/FieldSet;->verifyType(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_18

    :cond_26
    move-object p2, v0

    goto :goto_33

    .line 279
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 292
    :cond_30
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/FieldSet;->verifyType(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 295
    :goto_33
    instance-of v0, p2, Lcom/explorestack/protobuf/LazyField;

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    .line 296
    iput-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet;->hasLazyField:Z

    .line 298
    :cond_3a
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 346
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 351
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldSet;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 356
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/protobuf/FieldSet;->verifyType(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 357
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 353
    :cond_15
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 347
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final verifyType(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 393
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/explorestack/protobuf/FieldSet;->isValidType(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 401
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 405
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 406
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    move-result-object p1

    .line 407
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 402
    const-string p2, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeMessageSetTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 594
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 595
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/explorestack/protobuf/FieldSet;->writeMessageSetTo(Ljava/util/Map$Entry;Lcom/explorestack/protobuf/CodedOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 597
    :cond_15
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 598
    invoke-virtual {p0, v1, p1}, Lcom/explorestack/protobuf/FieldSet;->writeMessageSetTo(Ljava/util/Map$Entry;Lcom/explorestack/protobuf/CodedOutputStream;)V

    goto :goto_1f

    :cond_2f
    return-void
.end method

.method public final writeMessageSetTo(Ljava/util/Map$Entry;Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/explorestack/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    .line 605
    invoke-interface {v0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/explorestack/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_38

    .line 606
    invoke-interface {v0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_38

    .line 607
    invoke-interface {v0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v1

    if-nez v1, :cond_38

    .line 608
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 609
    instance-of v1, v0, Lcom/explorestack/protobuf/LazyField;

    if-eqz v1, :cond_28

    .line 610
    check-cast v0, Lcom/explorestack/protobuf/LazyField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/LazyField;->getValue()Lcom/explorestack/protobuf/MessageLite;

    move-result-object v0

    .line 612
    :cond_28
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result p1

    check-cast v0, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p2, p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/explorestack/protobuf/MessageLite;)V

    return-void

    .line 614
    :cond_38
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/explorestack/protobuf/FieldSet;->writeField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 583
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 584
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 585
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/explorestack/protobuf/FieldSet;->writeField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/explorestack/protobuf/CodedOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 587
    :cond_1f
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 588
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/explorestack/protobuf/FieldSet;->writeField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/explorestack/protobuf/CodedOutputStream;)V

    goto :goto_29

    :cond_43
    return-void
.end method

###### Class com.explorestack.protobuf.FieldSet.AnonymousClass1 (com.explorestack.protobuf.FieldSet$1)
.class public synthetic Lcom/explorestack/protobuf/FieldSet$1;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/FieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

.field public static final synthetic $SwitchMap$com$google$protobuf$WireFormat$JavaType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 654
    invoke-static {}, Lcom/explorestack/protobuf/WireFormat$FieldType;->values()[Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/explorestack/protobuf/WireFormat$FieldType;->DOUBLE:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v3, Lcom/explorestack/protobuf/WireFormat$FieldType;->FLOAT:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v4, Lcom/explorestack/protobuf/WireFormat$FieldType;->INT64:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v5, Lcom/explorestack/protobuf/WireFormat$FieldType;->UINT64:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    const/4 v4, 0x5

    :try_start_34
    sget-object v5, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v6, Lcom/explorestack/protobuf/WireFormat$FieldType;->INT32:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    :catch_3e
    const/4 v5, 0x6

    :try_start_3f
    sget-object v6, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v7, Lcom/explorestack/protobuf/WireFormat$FieldType;->FIXED64:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_49} :catch_49

    :catch_49
    const/4 v6, 0x7

    :try_start_4a
    sget-object v7, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v8, Lcom/explorestack/protobuf/WireFormat$FieldType;->FIXED32:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_54} :catch_54

    :catch_54
    const/16 v7, 0x8

    :try_start_56
    sget-object v8, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v9, Lcom/explorestack/protobuf/WireFormat$FieldType;->BOOL:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_60} :catch_60

    :catch_60
    const/16 v8, 0x9

    :try_start_62
    sget-object v9, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/explorestack/protobuf/WireFormat$FieldType;->GROUP:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v9, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/explorestack/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0xa

    aput v11, v9, v10
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v9, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/explorestack/protobuf/WireFormat$FieldType;->STRING:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0xb

    aput v11, v9, v10
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v9, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/explorestack/protobuf/WireFormat$FieldType;->BYTES:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0xc

    aput v11, v9, v10
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v9, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/explorestack/protobuf/WireFormat$FieldType;->UINT32:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0xd

    aput v11, v9, v10
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v9, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/explorestack/protobuf/WireFormat$FieldType;->SFIXED32:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0xe

    aput v11, v9, v10
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v9, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/explorestack/protobuf/WireFormat$FieldType;->SFIXED64:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0xf

    aput v11, v9, v10
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b4
    sget-object v9, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/explorestack/protobuf/WireFormat$FieldType;->SINT32:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0x10

    aput v11, v9, v10
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c0
    sget-object v9, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/explorestack/protobuf/WireFormat$FieldType;->SINT64:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0x11

    aput v11, v9, v10
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_cc

    :catch_cc
    :try_start_cc
    sget-object v9, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/explorestack/protobuf/WireFormat$FieldType;->ENUM:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0x12

    aput v11, v9, v10
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d8} :catch_d8

    .line 414
    :catch_d8
    invoke-static {}, Lcom/explorestack/protobuf/WireFormat$JavaType;->values()[Lcom/explorestack/protobuf/WireFormat$JavaType;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    :try_start_e1
    sget-object v10, Lcom/explorestack/protobuf/WireFormat$JavaType;->INT:Lcom/explorestack/protobuf/WireFormat$JavaType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_e9} :catch_e9

    :catch_e9
    :try_start_e9
    sget-object v1, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v9, Lcom/explorestack/protobuf/WireFormat$JavaType;->LONG:Lcom/explorestack/protobuf/WireFormat$JavaType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v0, v1, v9
    :try_end_f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e9 .. :try_end_f3} :catch_f3

    :catch_f3
    :try_start_f3
    sget-object v0, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$JavaType;->FLOAT:Lcom/explorestack/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f3 .. :try_end_fd} :catch_fd

    :catch_fd
    :try_start_fd
    sget-object v0, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$JavaType;->DOUBLE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_107
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fd .. :try_end_107} :catch_107

    :catch_107
    :try_start_107
    sget-object v0, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$JavaType;->BOOLEAN:Lcom/explorestack/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_111
    .catch Ljava/lang/NoSuchFieldError; {:try_start_107 .. :try_end_111} :catch_111

    :catch_111
    :try_start_111
    sget-object v0, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$JavaType;->STRING:Lcom/explorestack/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_11b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_111 .. :try_end_11b} :catch_11b

    :catch_11b
    :try_start_11b
    sget-object v0, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$JavaType;->BYTE_STRING:Lcom/explorestack/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_125
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11b .. :try_end_125} :catch_125

    :catch_125
    :try_start_125
    sget-object v0, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$JavaType;->ENUM:Lcom/explorestack/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_12f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_125 .. :try_end_12f} :catch_12f

    :catch_12f
    :try_start_12f
    sget-object v0, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_139
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12f .. :try_end_139} :catch_139

    :catch_139
    return-void
.end method

###### Class com.explorestack.protobuf.FieldSet.Builder (com.explorestack.protobuf.FieldSet$Builder)
.class public final Lcom/explorestack/protobuf/FieldSet$Builder;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/FieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public fields:Lcom/explorestack/protobuf/SmallSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public hasLazyField:Z

.field public hasNestedBuilders:Z

.field public isMutable:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x10

    .line 933
    invoke-static {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/explorestack/protobuf/SmallSortedMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/FieldSet$Builder;-><init>(Lcom/explorestack/protobuf/SmallSortedMap;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/FieldSet$1;)V
    .registers 2

    .line 925
    invoke-direct {p0}, Lcom/explorestack/protobuf/FieldSet$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/explorestack/protobuf/SmallSortedMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 937
    iput-object p1, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    const/4 p1, 0x1

    .line 938
    iput-boolean p1, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->isMutable:Z

    return-void
.end method

.method public static replaceBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1010
    instance-of v0, p0, Lcom/explorestack/protobuf/MessageLite$Builder;

    if-eqz v0, :cond_a

    check-cast p0, Lcom/explorestack/protobuf/MessageLite$Builder;

    invoke-interface {p0}, Lcom/explorestack/protobuf/MessageLite$Builder;->build()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method public static replaceBuilders(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_3

    return-object p1

    .line 978
    :cond_3
    invoke-interface {p0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_58

    .line 979
    invoke-interface {p0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_53

    .line 980
    instance-of p0, p1, Ljava/util/List;

    if-eqz p0, :cond_38

    .line 986
    move-object p0, p1

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    .line 987
    :goto_19
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 988
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 989
    invoke-static {v1}, Lcom/explorestack/protobuf/FieldSet$Builder;->replaceBuilder(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_34

    if-ne p0, p1, :cond_31

    .line 996
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v1

    .line 998
    :cond_31
    invoke-interface {p0, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_37
    return-object p0

    .line 981
    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Repeated field should contains a List but actually contains type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1003
    :cond_53
    invoke-static {p1}, Lcom/explorestack/protobuf/FieldSet$Builder;->replaceBuilder(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_58
    return-object p1
.end method

.method public static replaceBuilders(Lcom/explorestack/protobuf/SmallSortedMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Lcom/explorestack/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 960
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 961
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-static {v1}, Lcom/explorestack/protobuf/FieldSet$Builder;->replaceBuilders(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 963
    :cond_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 964
    invoke-static {v0}, Lcom/explorestack/protobuf/FieldSet$Builder;->replaceBuilders(Ljava/util/Map$Entry;)V

    goto :goto_19

    :cond_29
    return-void
.end method

.method public static replaceBuilders(Ljava/util/Map$Entry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 970
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/FieldSet$Builder;->replaceBuilders(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1190
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldSet$Builder;->ensureIsMutable()V

    .line 1191
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1196
    iget-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    if-nez v0, :cond_14

    instance-of v0, p2, Lcom/explorestack/protobuf/MessageLite$Builder;

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    iput-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    .line 1198
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/FieldSet$Builder;->verifyType(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 1200
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldSet$Builder;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 1203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1204
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1, p1, v0}, Lcom/explorestack/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    .line 1206
    :cond_2b
    check-cast v0, Ljava/util/List;

    .line 1209
    :goto_2d
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 1192
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lcom/explorestack/protobuf/FieldSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 943
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 944
    invoke-static {}, Lcom/explorestack/protobuf/FieldSet;->emptySet()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    .line 946
    iput-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->isMutable:Z

    .line 947
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    .line 948
    iget-boolean v2, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    if-eqz v2, :cond_1d

    .line 950
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/FieldSet;->access$100(Lcom/explorestack/protobuf/SmallSortedMap;Z)Lcom/explorestack/protobuf/SmallSortedMap;

    move-result-object v1

    .line 951
    invoke-static {v1}, Lcom/explorestack/protobuf/FieldSet$Builder;->replaceBuilders(Lcom/explorestack/protobuf/SmallSortedMap;)V

    .line 953
    :cond_1d
    new-instance v0, Lcom/explorestack/protobuf/FieldSet;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/FieldSet;-><init>(Lcom/explorestack/protobuf/SmallSortedMap;Lcom/explorestack/protobuf/FieldSet$1;)V

    .line 954
    iget-boolean v1, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->hasLazyField:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/FieldSet;->access$302(Lcom/explorestack/protobuf/FieldSet;Z)Z

    return-object v0
.end method

.method public clearField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1107
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldSet$Builder;->ensureIsMutable()V

    .line 1108
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    iget-object p1, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x0

    .line 1110
    iput-boolean p1, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->hasLazyField:Z

    :cond_13
    return-void
.end method

.method public final ensureIsMutable()V
    .registers 3

    .line 1065
    iget-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->isMutable:Z

    if-nez v0, :cond_f

    .line 1066
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/FieldSet;->access$100(Lcom/explorestack/protobuf/SmallSortedMap;Z)Lcom/explorestack/protobuf/SmallSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    .line 1067
    iput-boolean v1, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->isMutable:Z

    :cond_f
    return-void
.end method

.method public getAllFields()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1024
    iget-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->hasLazyField:Z

    if-eqz v0, :cond_1b

    .line 1025
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/FieldSet;->access$100(Lcom/explorestack/protobuf/SmallSortedMap;Z)Lcom/explorestack/protobuf/SmallSortedMap;

    move-result-object v0

    .line 1026
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1027
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->makeImmutable()V

    return-object v0

    .line 1029
    :cond_17
    invoke-static {v0}, Lcom/explorestack/protobuf/FieldSet$Builder;->replaceBuilders(Lcom/explorestack/protobuf/SmallSortedMap;)V

    return-object v0

    .line 1033
    :cond_1b
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    return-object v0

    :cond_26
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1051
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldSet$Builder;->getFieldAllowBuilders(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 1052
    invoke-static {p1, v0}, Lcom/explorestack/protobuf/FieldSet$Builder;->replaceBuilders(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFieldAllowBuilders(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1057
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1058
    instance-of v0, p1, Lcom/explorestack/protobuf/LazyField;

    if-eqz v0, :cond_10

    .line 1059
    check-cast p1, Lcom/explorestack/protobuf/LazyField;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/LazyField;->getValue()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    :cond_10
    return-object p1
.end method

.method public getRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1135
    iget-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    if-eqz v0, :cond_7

    .line 1136
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldSet$Builder;->ensureIsMutable()V

    .line 1138
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/FieldSet$Builder;->getRepeatedFieldAllowBuilders(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p1

    .line 1139
    invoke-static {p1}, Lcom/explorestack/protobuf/FieldSet$Builder;->replaceBuilder(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldAllowBuilders(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1147
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1152
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldSet$Builder;->getFieldAllowBuilders(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1157
    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1155
    :cond_13
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 1148
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRepeatedFieldCount(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1118
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1123
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldSet$Builder;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p1, 0x0

    return p1

    .line 1127
    :cond_e
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 1119
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1038
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1042
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1

    .line 1039
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hasField() can only be called on non-repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isInitialized()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 1242
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 1243
    iget-object v2, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/explorestack/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/explorestack/protobuf/FieldSet;->access$600(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_17

    return v0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1247
    :cond_1a
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1248
    invoke-static {v2}, Lcom/explorestack/protobuf/FieldSet;->access$600(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_24

    return v0

    :cond_37
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/FieldSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/FieldSet<",
            "TT;>;)V"
        }
    .end annotation

    .line 1259
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldSet$Builder;->ensureIsMutable()V

    const/4 v0, 0x0

    .line 1260
    :goto_4
    invoke-static {p1}, Lcom/explorestack/protobuf/FieldSet;->access$400(Lcom/explorestack/protobuf/FieldSet;)Lcom/explorestack/protobuf/SmallSortedMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 1261
    invoke-static {p1}, Lcom/explorestack/protobuf/FieldSet;->access$400(Lcom/explorestack/protobuf/FieldSet;)Lcom/explorestack/protobuf/SmallSortedMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/FieldSet$Builder;->mergeFromField(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1263
    :cond_1c
    invoke-static {p1}, Lcom/explorestack/protobuf/FieldSet;->access$400(Lcom/explorestack/protobuf/FieldSet;)Lcom/explorestack/protobuf/SmallSortedMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1264
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/FieldSet$Builder;->mergeFromField(Ljava/util/Map$Entry;)V

    goto :goto_28

    :cond_38
    return-void
.end method

.method public final mergeFromField(Ljava/util/Map$Entry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1270
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    .line 1271
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 1272
    instance-of v1, p1, Lcom/explorestack/protobuf/LazyField;

    if-eqz v1, :cond_14

    .line 1273
    check-cast p1, Lcom/explorestack/protobuf/LazyField;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/LazyField;->getValue()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    .line 1276
    :cond_14
    invoke-interface {v0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1277
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/FieldSet$Builder;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_25

    .line 1279
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1281
    :cond_25
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1282
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lcom/explorestack/protobuf/FieldSet;->access$700(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 1284
    :cond_40
    iget-object p1, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1285
    :cond_46
    invoke-interface {v0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/explorestack/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_80

    .line 1286
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/FieldSet$Builder;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5e

    .line 1288
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-static {p1}, Lcom/explorestack/protobuf/FieldSet;->access$700(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1291
    :cond_5e
    instance-of v2, v1, Lcom/explorestack/protobuf/MessageLite$Builder;

    if-eqz v2, :cond_6a

    .line 1292
    check-cast v1, Lcom/explorestack/protobuf/MessageLite$Builder;

    check-cast p1, Lcom/explorestack/protobuf/MessageLite;

    invoke-interface {v0, v1, p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->internalMergeFrom(Lcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite$Builder;

    return-void

    .line 1294
    :cond_6a
    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 1296
    invoke-interface {v1}, Lcom/explorestack/protobuf/MessageLite;->toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;

    move-result-object v1

    check-cast p1, Lcom/explorestack/protobuf/MessageLite;

    invoke-interface {v0, v1, p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->internalMergeFrom(Lcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite$Builder;

    move-result-object p1

    .line 1297
    invoke-interface {p1}, Lcom/explorestack/protobuf/MessageLite$Builder;->build()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    .line 1298
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1302
    :cond_80
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-static {p1}, Lcom/explorestack/protobuf/FieldSet;->access$700(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1077
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldSet$Builder;->ensureIsMutable()V

    .line 1078
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_43

    .line 1079
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_3b

    .line 1086
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1088
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1089
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/FieldSet$Builder;->verifyType(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 1090
    iget-boolean v4, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    if-nez v4, :cond_35

    instance-of v3, v3, Lcom/explorestack/protobuf/MessageLite$Builder;

    if-eqz v3, :cond_33

    goto :goto_35

    :cond_33
    move v3, v1

    goto :goto_36

    :cond_35
    :goto_35
    move v3, v2

    :goto_36
    iput-boolean v3, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    goto :goto_1d

    :cond_39
    move-object p2, v0

    goto :goto_46

    .line 1080
    :cond_3b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1094
    :cond_43
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/FieldSet$Builder;->verifyType(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 1097
    :goto_46
    instance-of v0, p2, Lcom/explorestack/protobuf/LazyField;

    if-eqz v0, :cond_4c

    .line 1098
    iput-boolean v2, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->hasLazyField:Z

    .line 1100
    :cond_4c
    iget-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    if-nez v0, :cond_54

    instance-of v0, p2, Lcom/explorestack/protobuf/MessageLite$Builder;

    if-eqz v0, :cond_55

    :cond_54
    move v1, v2

    :cond_55
    iput-boolean v1, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    .line 1102
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1167
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldSet$Builder;->ensureIsMutable()V

    .line 1168
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1173
    iget-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    if-nez v0, :cond_14

    instance-of v0, p3, Lcom/explorestack/protobuf/MessageLite$Builder;

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    iput-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    .line 1175
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldSet$Builder;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 1180
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/protobuf/FieldSet$Builder;->verifyType(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 1181
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1177
    :cond_26
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 1169
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final verifyType(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1220
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/explorestack/protobuf/FieldSet;->access$500(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 1222
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_1b

    instance-of v0, p2, Lcom/explorestack/protobuf/MessageLite$Builder;

    if-eqz v0, :cond_1b

    return-void

    .line 1226
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1230
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1231
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    move-result-object p1

    .line 1232
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 1227
    const-string p2, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    return-void
.end method

###### Class com.explorestack.protobuf.FieldSet.FieldDescriptorLite (com.explorestack.protobuf.FieldSet$FieldDescriptorLite)
.class public interface abstract Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;
.super Ljava/lang/Object;
.source "FieldSet.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/FieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FieldDescriptorLite"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getLiteJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;
.end method

.method public abstract getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;
.end method

.method public abstract getNumber()I
.end method

.method public abstract internalMergeFrom(Lcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
.end method

.method public abstract isPacked()Z
.end method

.method public abstract isRepeated()Z
.end method
