###### Class com.facebook.ads.redexgen.X.C9X (com.facebook.ads.redexgen.X.9X)
.class public final Lcom/facebook/ads/redexgen/X/9X;
.super Lcom/facebook/ads/redexgen/X/Vq;
.source ""


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4W;,
        Lcom/facebook/ads/redexgen/X/4U;,
        Lcom/facebook/ads/redexgen/X/4V;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/Vq<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;

.field public static final A04:Lcom/facebook/ads/redexgen/X/Vq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Vq<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final serialVersionUID:J


# instance fields
.field public final transient A00:[Ljava/lang/Object;

.field public final transient A01:I

.field public final transient A02:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 418
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "0JCoK4PZ0IyrSLrhpLXDGtW7CYJKFavd"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vVp4yGiG2pwrs9hfFSq954qopQZNS2M3"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "8rm8KVIKfejszq0ftKxTGSKW9n8zRxxE"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "puOB3grMAVT2N8OXlFYYxiuBKlP5LhF3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "0LpmPtXY5Q"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "SzRgaK4USjqb7fE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4VC6aP0VXaxjT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "XOemoKi8sXB6M"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9X;->A03:[Ljava/lang/String;

    const/4 v3, 0x0

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/9X;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/9X;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9X;->A04:Lcom/facebook/ads/redexgen/X/Vq;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "hashTable",
            "alternatingKeysAndValues",
            "size"
        }
    .end annotation

    .line 28791
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9X;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vq;-><init>()V

    .line 28792
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9X;->A02:Ljava/lang/Object;

    .line 28793
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/9X;->A00:[Ljava/lang/Object;

    .line 28794
    iput p3, p0, Lcom/facebook/ads/redexgen/X/9X;->A01:I

    .line 28795
    return-void
.end method

.method public static A00(I[Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/Vr;)Lcom/facebook/ads/redexgen/X/9X;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "alternatingKeysAndValues",
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            "Lcom/facebook/ads/redexgen/X/Vr<",
            "TK;TV;>;)",
            "Lcom/facebook/ads/redexgen/X/9X<",
            "TK;TV;>;"
        }
    .end annotation

    .line 28796
    .local p4, "builder":Lcom/facebook/ads/redexgen/X/Vr;, "Lcom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    if-nez p0, :cond_7

    .line 28797
    sget-object v0, Lcom/facebook/ads/redexgen/X/9X;->A04:Lcom/facebook/ads/redexgen/X/Vq;

    check-cast v0, Lcom/facebook/ads/redexgen/X/9X;

    .line 28798
    .local v0, "empty":Lcom/facebook/ads/redexgen/X/9X;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    return-object v0

    .line 28799
    .end local v0    # "empty":Lcom/facebook/ads/redexgen/X/9X;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    :cond_7
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_21

    .line 28800
    aget-object v0, p1, v1

    .line 28801
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 28802
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/W7;->A03(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28803
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/9X;

    invoke-direct {v0, v1, p1, v3}, Lcom/facebook/ads/redexgen/X/9X;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v0

    .line 28804
    :cond_21
    array-length v0, p1

    shr-int/2addr v0, v3

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Wu;->A01(II)I

    .line 28805
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/9k;->A03(I)I

    move-result v0

    .line 28806
    .local v2, "tableSize":I
    invoke-static {p1, p0, v0, v1}, Lcom/facebook/ads/redexgen/X/9X;->A02([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v2

    .line 28807
    .local v3, "hashTablePlus":Ljava/lang/Object;
    instance-of v0, v2, [Ljava/lang/Object;

    if-eqz v0, :cond_53

    .line 28808
    check-cast v2, [Ljava/lang/Object;

    .line 28809
    .local p0, "hashTableAndSizeAndDuplicate":[Ljava/lang/Object;
    const/4 v0, 0x2

    aget-object v0, v2, v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Vs;

    .line 28810
    .local p1, "duplicateKey":Lcom/facebook/ads/redexgen/X/Vs;
    if-eqz p2, :cond_55

    .line 28811
    iput-object v0, p2, Lcom/facebook/ads/redexgen/X/Vr;->A01:Lcom/facebook/ads/redexgen/X/Vs;

    .line 28812
    aget-object v1, v2, v1

    .line 28813
    .local v0, "hashTable":Ljava/lang/Object;
    aget-object v0, v2, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 28814
    mul-int/lit8 v0, p0, 0x2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 28815
    .end local p0    # "hashTableAndSizeAndDuplicate":[Ljava/lang/Object;
    .end local p1    # "duplicateKey":Lcom/facebook/ads/redexgen/X/Vs;
    .restart local v0    # "hashTable":Ljava/lang/Object;
    :goto_4d
    new-instance v0, Lcom/facebook/ads/redexgen/X/9X;

    invoke-direct {v0, v1, p1, p0}, Lcom/facebook/ads/redexgen/X/9X;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v0

    .line 28816
    .end local p0
    .end local p1
    :cond_53
    move-object v1, v2

    goto :goto_4d

    .line 28817
    .end local v0    # "hashTable":Ljava/lang/Object;
    .restart local p0    # "hashTableAndSizeAndDuplicate":[Ljava/lang/Object;
    .restart local p1    # "duplicateKey":Lcom/facebook/ads/redexgen/X/Vs;
    :cond_55
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vs;->A02()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public static A01(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hashTableObject",
            "alternatingKeysAndValues",
            "size",
            "keyOffset",
            "key"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 28818
    const/4 v4, 0x0

    if-nez p4, :cond_4

    .line 28819
    return-object v4

    .line 28820
    :cond_4
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3c

    .line 28821
    aget-object v0, p1, p3

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 28822
    xor-int/lit8 v0, p3, 0x1

    aget-object v3, p1, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/9X;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_36

    sget-object v2, Lcom/facebook/ads/redexgen/X/9X;->A03:[Ljava/lang/String;

    const-string v1, "m74HwlRwKK5qs"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "QzZAHk8R722Mu"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 28823
    :cond_35
    return-object v4

    :cond_36
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28824
    :cond_3c
    if-nez p0, :cond_3f

    .line 28825
    return-object v4

    .line 28826
    :cond_3f
    instance-of v0, p0, [B

    if-eqz v0, :cond_68

    .line 28827
    check-cast p0, [B

    .line 28828
    .local v2, "hashTable":[B
    array-length v3, p0

    sub-int/2addr v3, v1

    .line 28829
    .local v3, "mask":I
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A00(I)I

    move-result v2

    .line 28830
    .local v1, "h":I
    :goto_4f
    and-int/2addr v2, v3

    .line 28831
    aget-byte v1, p0, v2

    const/16 v0, 0xff

    and-int/2addr v1, v0

    .line 28832
    .local v4, "keyIndex":I
    if-ne v1, v0, :cond_58

    .line 28833
    return-object v4

    .line 28834
    :cond_58
    aget-object v0, p1, v1

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 28835
    xor-int/lit8 v0, v1, 0x1

    aget-object v0, p1, v0

    return-object v0

    .line 28836
    .end local v4    # "keyIndex":I
    :cond_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 28837
    .end local v1    # "h":I
    .end local v2    # "hashTable":[B
    .end local v3    # "mask":I
    :cond_68
    instance-of v0, p0, [S

    if-eqz v0, :cond_92

    .line 28838
    check-cast p0, [S

    .line 28839
    .local v2, "hashTable":[S
    array-length v3, p0

    sub-int/2addr v3, v1

    .line 28840
    .restart local v3    # "mask":I
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A00(I)I

    move-result v2

    .line 28841
    .restart local v1    # "h":I
    :goto_78
    and-int/2addr v2, v3

    .line 28842
    aget-short v1, p0, v2

    const v0, 0xffff

    and-int/2addr v1, v0

    .line 28843
    .restart local v4    # "keyIndex":I
    if-ne v1, v0, :cond_82

    .line 28844
    return-object v4

    .line 28845
    :cond_82
    aget-object v0, p1, v1

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 28846
    xor-int/lit8 v0, v1, 0x1

    aget-object v0, p1, v0

    return-object v0

    .line 28847
    .end local v4    # "keyIndex":I
    :cond_8f
    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    .line 28848
    .end local v1    # "h":I
    .end local v2    # "hashTable":[S
    .end local v3    # "mask":I
    :cond_92
    check-cast p0, [I

    .line 28849
    .local v2, "hashTable":[I
    array-length v3, p0

    sub-int/2addr v3, v1

    .line 28850
    .restart local v3    # "mask":I
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A00(I)I

    move-result v2

    .line 28851
    .restart local v1    # "h":I
    :goto_9e
    and-int/2addr v2, v3

    .line 28852
    aget v1, p0, v2

    .line 28853
    .restart local v4    # "keyIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_a5

    .line 28854
    return-object v4

    .line 28855
    :cond_a5
    aget-object v0, p1, v1

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 28856
    xor-int/lit8 v0, v1, 0x1

    aget-object v0, p1, v0

    return-object v0

    .line 28857
    .end local v4    # "keyIndex":I
    :cond_b2
    add-int/lit8 v2, v2, 0x1

    goto :goto_9e
.end method

.method public static A02([Ljava/lang/Object;III)Ljava/lang/Object;
    .registers 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "alternatingKeysAndValues",
            "n",
            "tableSize",
            "keyOffset"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 28858
    const/4 v0, 0x1

    move/from16 v9, p1

    if-ne v9, v0, :cond_18

    .line 28859
    aget-object v0, p0, p3

    .line 28860
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    xor-int/lit8 v0, p3, 0x1

    aget-object v0, p0, v0

    .line 28861
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 28862
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/W7;->A03(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28863
    const/4 v0, 0x0

    return-object v0

    .line 28864
    :cond_18
    move/from16 v1, p2

    add-int/lit8 v15, v1, -0x1

    .line 28865
    .local v3, "mask":I
    const/4 v6, 0x0

    .line 28866
    .local v4, "duplicateKey":Lcom/facebook/ads/redexgen/X/Vs;
    const/16 v0, 0x80

    const/4 v8, 0x3

    const/4 v7, -0x1

    if-gt v1, v0, :cond_96

    .line 28867
    new-array v1, v1, [B

    .line 28868
    .local v5, "hashTable":[B
    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 28869
    const/4 v3, 0x0

    .line 28870
    .local v8, "outI":I
    const/4 v4, 0x0

    .local v10, "i":I
    :goto_2a
    if-ge v4, v9, :cond_82

    .line 28871
    mul-int/lit8 v2, v4, 0x2

    add-int v2, v2, p3

    .line 28872
    .local v11, "keyIndex":I
    mul-int/lit8 v10, v3, 0x2

    add-int v10, v10, p3

    .line 28873
    .local v12, "outKeyIndex":I
    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 28874
    .local v13, "key":Ljava/lang/Object;
    xor-int/lit8 v0, v2, 0x1

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 28875
    .local v14, "value":Ljava/lang/Object;
    invoke-static {v5, v2}, Lcom/facebook/ads/redexgen/X/W7;->A03(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28876
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A00(I)I

    move-result v11

    .line 28877
    .local v15, "h":I
    :goto_4d
    and-int/2addr v11, v15

    .line 28878
    aget-byte v7, v1, v11

    const/16 v0, 0xff

    and-int/2addr v7, v0

    .line 28879
    .local v9, "previousKeyIndex":I
    if-ne v7, v0, :cond_65

    .line 28880
    int-to-byte v0, v10

    aput-byte v0, v1, v11

    .line 28881
    .end local v9    # "previousKeyIndex":I
    .end local v15    # "h":I
    if-ge v3, v4, :cond_60

    .line 28882
    aput-object v5, p0, v10

    .line 28883
    xor-int/lit8 v0, v10, 0x1

    aput-object v2, p0, v0

    .line 28884
    :cond_60
    add-int/lit8 v3, v3, 0x1

    .line 28885
    .end local v2
    .end local v9
    .end local v11    # "keyIndex":I
    .end local v12    # "outKeyIndex":I
    .end local v13    # "key":Ljava/lang/Object;
    .end local v14    # "value":Ljava/lang/Object;
    .end local v15
    .restart local v4    # "duplicateKey":Lcom/facebook/ads/redexgen/X/Vs;
    :goto_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 28886
    .restart local v9    # "previousKeyIndex":I
    .restart local v15    # "h":I
    :cond_65
    aget-object v0, p0, v7

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 28887
    new-instance v6, Lcom/facebook/ads/redexgen/X/Vs;

    xor-int/lit8 v0, v7, 0x1

    aget-object v0, p0, v0

    .line 28888
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v5, v2, v0}, Lcom/facebook/ads/redexgen/X/Vs;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28889
    .end local v4    # "duplicateKey":Lcom/facebook/ads/redexgen/X/Vs;
    .local v2, "duplicateKey":Lcom/facebook/ads/redexgen/X/Vs;
    xor-int/lit8 v0, v7, 0x1

    aput-object v2, p0, v0

    .line 28890
    goto :goto_62

    .line 28891
    .restart local v11    # "keyIndex":I
    .restart local v12    # "outKeyIndex":I
    .restart local v13    # "key":Ljava/lang/Object;
    .restart local v14    # "value":Ljava/lang/Object;
    .restart local v15    # "h":I
    :cond_7f
    add-int/lit8 v11, v11, 0x1

    goto :goto_4d

    .line 28892
    .end local v10    # "i":I
    .end local v11    # "keyIndex":I
    .end local v12    # "outKeyIndex":I
    .end local v13    # "key":Ljava/lang/Object;
    .end local v14    # "value":Ljava/lang/Object;
    .end local v15    # "h":I
    :cond_82
    if-ne v3, v9, :cond_86

    move-object v2, v1

    :goto_85
    return-object v2

    :cond_86
    new-array v2, v8, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v6, v2, v0

    goto :goto_85

    .line 28893
    .end local v5    # "hashTable":[B
    .end local v8    # "outI":I
    :cond_96
    const v0, 0x8000

    if-gt v1, v0, :cond_14d

    .line 28894
    new-array v10, v1, [S

    .line 28895
    .local v2, "hashTable":[S
    invoke-static {v10, v7}, Ljava/util/Arrays;->fill([SS)V

    .line 28896
    const/4 v11, 0x0

    .line 28897
    .local v5, "outI":I
    const/4 v7, 0x0

    .local v6, "i":I
    :goto_a2
    if-ge v7, v9, :cond_139

    .line 28898
    mul-int/lit8 v1, v7, 0x2

    add-int v1, v1, p3

    .line 28899
    .local v8, "keyIndex":I
    mul-int/lit8 v5, v11, 0x2

    add-int v5, v5, p3

    .line 28900
    .local v9, "outKeyIndex":I
    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 28901
    .local v10, "key":Ljava/lang/Object;
    xor-int/lit8 v0, v1, 0x1

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 28902
    .local v11, "value":Ljava/lang/Object;
    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/W7;->A03(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28903
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A00(I)I

    move-result v14

    .line 28904
    .local v12, "h":I
    :goto_c5
    and-int/2addr v14, v15

    .line 28905
    aget-short v12, v10, v14

    const v0, 0xffff

    and-int/2addr v12, v0

    .line 28906
    .local v13, "previousKeyIndex":I
    if-ne v12, v0, :cond_e7

    .line 28907
    int-to-short v2, v5

    sget-object v12, Lcom/facebook/ads/redexgen/X/9X;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v12, v0

    const/4 v0, 0x6

    aget-object v0, v12, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_114

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28908
    .restart local v12    # "h":I
    .restart local v13    # "previousKeyIndex":I
    :cond_e7
    aget-object v13, p0, v12

    sget-object v1, Lcom/facebook/ads/redexgen/X/9X;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_133

    sget-object v2, Lcom/facebook/ads/redexgen/X/9X;->A03:[Ljava/lang/String;

    const-string v1, "132H5NZsZrg6Xqi7jtE1e9rwUTzIYkqc"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 28909
    new-instance v6, Lcom/facebook/ads/redexgen/X/Vs;

    xor-int/lit8 v0, v12, 0x1

    aget-object v0, p0, v0

    .line 28910
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Vs;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28911
    xor-int/lit8 v0, v12, 0x1

    aput-object v3, p0, v0

    .line 28912
    goto :goto_12c

    .line 28913
    :cond_114
    sget-object v12, Lcom/facebook/ads/redexgen/X/9X;->A03:[Ljava/lang/String;

    const-string v1, "RYUuWOHldm0v9FSj6rxkYBJp8GLKyfZS"

    const/4 v0, 0x3

    aput-object v1, v12, v0

    const-string v1, "WhyHqWlMlW7EEzIF7xPF9ZB4dwDOPtto"

    const/4 v0, 0x1

    aput-object v1, v12, v0

    aput-short v2, v10, v14

    .line 28914
    .end local v12    # "h":I
    .end local v13    # "previousKeyIndex":I
    if-ge v11, v7, :cond_12a

    .line 28915
    aput-object v4, p0, v5

    .line 28916
    xor-int/lit8 v0, v5, 0x1

    aput-object v3, p0, v0

    .line 28917
    :cond_12a
    add-int/lit8 v11, v11, 0x1

    .line 28918
    .end local v8    # "keyIndex":I
    .end local v9    # "outKeyIndex":I
    .end local v10    # "key":Ljava/lang/Object;
    .end local v11    # "value":Ljava/lang/Object;
    .end local v12
    .end local v13
    :goto_12c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_a2

    .line 28919
    .restart local v8    # "keyIndex":I
    .restart local v9    # "outKeyIndex":I
    .restart local v10    # "key":Ljava/lang/Object;
    .restart local v11    # "value":Ljava/lang/Object;
    .restart local v12    # "h":I
    :cond_130
    add-int/lit8 v14, v14, 0x1

    goto :goto_c5

    :cond_133
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28920
    .end local v6    # "i":I
    .end local v8    # "keyIndex":I
    .end local v9    # "outKeyIndex":I
    .end local v10    # "key":Ljava/lang/Object;
    .end local v11    # "value":Ljava/lang/Object;
    .end local v12    # "h":I
    :cond_139
    if-ne v11, v9, :cond_13d

    move-object v2, v10

    :goto_13c
    return-object v2

    :cond_13d
    new-array v2, v8, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v10, v2, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v6, v2, v0

    goto :goto_13c

    .line 28921
    .end local v2    # "hashTable":[S
    .end local v5    # "outI":I
    :cond_14d
    new-array v5, v1, [I

    .line 28922
    .local v2, "hashTable":[I
    invoke-static {v5, v7}, Ljava/util/Arrays;->fill([II)V

    .line 28923
    const/4 v4, 0x0

    .line 28924
    .restart local v5    # "outI":I
    const/4 v3, 0x0

    .restart local v6    # "i":I
    :goto_154
    if-ge v3, v9, :cond_1d2

    .line 28925
    mul-int/lit8 v1, v3, 0x2

    add-int v1, v1, p3

    .line 28926
    .local v9, "keyIndex":I
    mul-int/lit8 v12, v4, 0x2

    add-int v12, v12, p3

    .line 28927
    .local v10, "outKeyIndex":I
    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 28928
    .local v11, "key":Ljava/lang/Object;
    xor-int/lit8 v0, v1, 0x1

    aget-object v11, p0, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/9X;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_1c2

    sget-object v10, Lcom/facebook/ads/redexgen/X/9X;->A03:[Ljava/lang/String;

    const-string v1, "znNdX2XpfWsTkrLTozQqyBdhAAOJURRo"

    const/4 v0, 0x3

    aput-object v1, v10, v0

    const-string v1, "JfodrNQWZAXgkCQeLodduPbNZlM3VrbX"

    const/4 v0, 0x1

    aput-object v1, v10, v0

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 28929
    .local v12, "value":Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/W7;->A03(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28930
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A00(I)I

    move-result v0

    .line 28931
    .local v13, "h":I
    :goto_18f
    and-int/2addr v0, v15

    .line 28932
    aget v10, v5, v0

    .line 28933
    .local v14, "previousKeyIndex":I
    if-ne v10, v7, :cond_1a4

    .line 28934
    aput v12, v5, v0

    .line 28935
    .end local v13    # "h":I
    .end local v14    # "previousKeyIndex":I
    if-ge v4, v3, :cond_19e

    .line 28936
    aput-object v2, p0, v12

    .line 28937
    xor-int/lit8 v0, v12, 0x1

    aput-object v1, p0, v0

    .line 28938
    :cond_19e
    add-int/lit8 v4, v4, 0x1

    .line 28939
    .end local v9    # "keyIndex":I
    .end local v10    # "outKeyIndex":I
    .end local v11    # "key":Ljava/lang/Object;
    .end local v12    # "value":Ljava/lang/Object;
    .end local v13
    .end local v14
    :goto_1a0
    add-int/lit8 v3, v3, 0x1

    const/4 v7, -0x1

    goto :goto_154

    .line 28940
    .restart local v13    # "h":I
    .restart local v14    # "previousKeyIndex":I
    :cond_1a4
    aget-object v7, p0, v10

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1be

    .line 28941
    new-instance v6, Lcom/facebook/ads/redexgen/X/Vs;

    xor-int/lit8 v0, v10, 0x1

    aget-object v0, p0, v0

    .line 28942
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vs;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28943
    xor-int/lit8 v0, v10, 0x1

    aput-object v1, p0, v0

    .line 28944
    goto :goto_1a0

    .line 28945
    .restart local v9    # "keyIndex":I
    .restart local v10    # "outKeyIndex":I
    .restart local v11    # "key":Ljava/lang/Object;
    .restart local v12    # "value":Ljava/lang/Object;
    .restart local v13    # "h":I
    :cond_1be
    add-int/lit8 v0, v0, 0x1

    const/4 v7, -0x1

    goto :goto_18f

    :cond_1c2
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 28946
    .local v12, "value":Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/W7;->A03(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28947
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A00(I)I

    move-result v0

    goto :goto_18f

    .line 28948
    .end local v6    # "i":I
    .end local v9    # "keyIndex":I
    .end local v10    # "outKeyIndex":I
    .end local v11    # "key":Ljava/lang/Object;
    .end local v12    # "value":Ljava/lang/Object;
    .end local v13    # "h":I
    :cond_1d2
    if-ne v4, v9, :cond_1d6

    move-object v2, v5

    :goto_1d5
    return-object v2

    :cond_1d6
    new-array v2, v8, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v5, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v6, v2, v0

    goto :goto_1d5
.end method


# virtual methods
.method public final A0A()Lcom/facebook/ads/redexgen/X/Vt;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/Vt<",
            "TV;>;"
        }
    .end annotation

    .line 28949
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9X;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9X;->A00:[Ljava/lang/Object;

    const/4 v2, 0x1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/9X;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/4U;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/4U;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public final A0D()Lcom/facebook/ads/redexgen/X/9k;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/9k<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 28950
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9X;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9X;->A00:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/9X;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/4W;

    invoke-direct {v0, p0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/4W;-><init>(Lcom/facebook/ads/redexgen/X/Vq;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method public final A0E()Lcom/facebook/ads/redexgen/X/9k;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/9k<",
            "TK;>;"
        }
    .end annotation

    .line 28951
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9X;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9X;->A00:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A01:I

    new-instance v1, Lcom/facebook/ads/redexgen/X/4U;

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/4U;-><init>([Ljava/lang/Object;II)V

    .line 28952
    .local v0, "keyList":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TK;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/4V;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/4V;-><init>(Lcom/facebook/ads/redexgen/X/Vq;Lcom/facebook/ads/redexgen/X/9l;)V

    return-object v0
.end method

.method public final A0F()Z
    .registers 2

    .line 28953
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9X;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 28954
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9X;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9X;->A02:Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9X;->A00:[Ljava/lang/Object;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/9X;->A01:I

    const/4 v0, 0x0

    invoke-static {v3, v2, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/9X;->A01(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 28955
    .local v0, "result":Ljava/lang/Object;
    if-nez v0, :cond_f

    .line 28956
    const/4 v0, 0x0

    return-object v0

    .line 28957
    :cond_f
    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 28958
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9X;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A01:I

    return v0
.end method

###### Class com.facebook.ads.redexgen.X.C4V (com.facebook.ads.redexgen.X.4V)
.class public final Lcom/facebook/ads/redexgen/X/4V;
.super Lcom/facebook/ads/redexgen/X/9k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/9k<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final transient A00:Lcom/facebook/ads/redexgen/X/9l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9l<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final transient A01:Lcom/facebook/ads/redexgen/X/Vq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Vq<",
            "TK;*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Vq;Lcom/facebook/ads/redexgen/X/9l;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "map",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Vq<",
            "TK;*>;",
            "Lcom/facebook/ads/redexgen/X/9l<",
            "TK;>;)V"
        }
    .end annotation

    .line 11016
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4V;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    .local p1, "map":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/google/common/collect/ImmutableMap<TK;*>;"
    .local p2, "list":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TK;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9k;-><init>()V

    .line 11017
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4V;->A01:Lcom/facebook/ads/redexgen/X/Vq;

    .line 11018
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/4V;->A00:Lcom/facebook/ads/redexgen/X/9l;

    .line 11019
    return-void
.end method


# virtual methods
.method public final A0I([Ljava/lang/Object;I)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dst",
            "offset"
        }
    .end annotation

    .line 11020
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4V;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4V;->A0J()Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/9l;->A0I([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/9l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/9l<",
            "TK;>;"
        }
    .end annotation

    .line 11021
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4V;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A00:Lcom/facebook/ads/redexgen/X/9l;

    return-object v0
.end method

.method public final A0K()Z
    .registers 2

    .line 11022
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4V;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/VV;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/VV<",
            "TK;>;"
        }
    .end annotation

    .line 11023
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4V;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4V;->A0J()Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A0N()Lcom/facebook/ads/redexgen/X/VV;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 11024
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4V;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A01:Lcom/facebook/ads/redexgen/X/Vq;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Vq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 11025
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4V;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4V;->A0N()Lcom/facebook/ads/redexgen/X/VV;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 11026
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4V;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A01:Lcom/facebook/ads/redexgen/X/Vq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vq;->size()I

    move-result v0

    return v0
.end method
