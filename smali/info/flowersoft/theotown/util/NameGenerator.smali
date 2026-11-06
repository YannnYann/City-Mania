###### Class info.flowersoft.theotown.util.NameGenerator (info.flowersoft.theotown.util.NameGenerator)
.class public Linfo/flowersoft/theotown/util/NameGenerator;
.super Ljava/lang/Object;
.source "NameGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/util/NameGenerator$ProbFilter;
    }
.end annotation


# static fields
.field public static final chars:[C

.field public static final firstP:[F

.field public static final isVocal:[Z

.field public static final p:[F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x1a

    .line 11
    new-array v1, v0, [C

    fill-array-data v1, :array_20

    sput-object v1, Linfo/flowersoft/theotown/util/NameGenerator;->chars:[C

    .line 13
    new-array v1, v0, [Z

    fill-array-data v1, :array_3e

    sput-object v1, Linfo/flowersoft/theotown/util/NameGenerator;->isVocal:[Z

    .line 15
    new-array v1, v0, [F

    fill-array-data v1, :array_50

    sput-object v1, Linfo/flowersoft/theotown/util/NameGenerator;->p:[F

    .line 18
    new-array v0, v0, [F

    fill-array-data v0, :array_88

    sput-object v0, Linfo/flowersoft/theotown/util/NameGenerator;->firstP:[F

    return-void

    nop

    :array_20
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_3e
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_50
    .array-data 4
        0x3da3d70a    # 0.08f
        0x3c75c28f    # 0.015f
        0x3cdd2f1b    # 0.027f
        0x3d3020c5    # 0.043f
        0x3e020c4a    # 0.127f
        0x3cb43958    # 0.022f
        0x3ca3d70a    # 0.02f
        0x3d75c28f    # 0.06f
        0x3d8f5c29    # 0.07f
        0x3c75c28f    # 0.015f
        0x3d9db22d    # 0.077f
        0x3d23d70a    # 0.04f
        0x3cc49ba6    # 0.024f
        0x3d89374c    # 0.067f
        0x3d99999a    # 0.075f
        0x3c9ba5e3    # 0.019f
        0x3a6bedfa    # 9.0E-4f
        0x3d75c28f    # 0.06f
        0x3d810625    # 0.063f
        0x3db851ec    # 0.09f
        0x3cdd2f1b    # 0.027f
        0x3dc8b439
        0x3cc49ba6    # 0.024f
        0x3c75c28f    # 0.015f
        0x3ca3d70a    # 0.02f
        0x3a41fc8f    # 7.4E-4f
    .end array-data

    :array_88
    .array-data 4
        0x3de147ae    # 0.11f
        0x3d408312    # 0.047f
        0x3d0f5c29    # 0.035f
        0x3cdd2f1b    # 0.027f
        0x3ca3d70a    # 0.02f
        0x3d1ba5e3    # 0.038f
        0x3ca3d70a    # 0.02f
        0x3d8f5c29    # 0.07f
        0x3d75c28f    # 0.06f
        0x3bc49ba6    # 0.006f
        0x3bc49ba6    # 0.006f
        0x3cdd2f1b    # 0.027f
        0x3d343958    # 0.044f
        0x3cc49ba6    # 0.024f
        0x3d810625    # 0.063f
        0x3ccccccd    # 0.025f
        0x3aded289    # 0.0017f
        0x3c8b4396    # 0.017f
        0x3d9fbe77    # 0.078f
        0x3e2e147b    # 0.17f
        0x3c75c28f    # 0.015f
        0x3bc49ba6    # 0.006f
        0x3d8b4396    # 0.068f
        0x38d1b717    # 1.0E-4f
        0x3c83126f    # 0.016f
        0x3b449ba6    # 0.003f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()[F
    .registers 1

    .line 9
    sget-object v0, Linfo/flowersoft/theotown/util/NameGenerator;->firstP:[F

    return-object v0
.end method

.method public static synthetic access$100()[Z
    .registers 1

    .line 9
    sget-object v0, Linfo/flowersoft/theotown/util/NameGenerator;->isVocal:[Z

    return-object v0
.end method

.method public static synthetic access$200()[F
    .registers 1

    .line 9
    sget-object v0, Linfo/flowersoft/theotown/util/NameGenerator;->p:[F

    return-object v0
.end method

.method public static generate()Ljava/lang/String;
    .registers 9

    .line 35
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 37
    new-instance v1, Linfo/flowersoft/theotown/util/NameGenerator$1;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/NameGenerator$1;-><init>()V

    sget-object v2, Linfo/flowersoft/theotown/util/NameGenerator;->chars:[C

    array-length v3, v2

    invoke-static {v1, v3}, Linfo/flowersoft/theotown/util/NameGenerator;->getProbIndex(Linfo/flowersoft/theotown/util/NameGenerator$ProbFilter;I)I

    move-result v1

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v2, v2, v1

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 45
    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v1, v4, v5

    .line 46
    new-array v6, v3, [I

    aput v1, v6, v5

    :goto_36
    if-ge v3, v0, :cond_5e

    .line 49
    aget v7, v4, v5

    aput v7, v6, v5

    .line 50
    aput v1, v4, v5

    .line 51
    new-instance v1, Linfo/flowersoft/theotown/util/NameGenerator$2;

    invoke-direct {v1, v4, v6}, Linfo/flowersoft/theotown/util/NameGenerator$2;-><init>([I[I)V

    sget-object v7, Linfo/flowersoft/theotown/util/NameGenerator;->chars:[C

    array-length v8, v7

    invoke-static {v1, v8}, Linfo/flowersoft/theotown/util/NameGenerator;->getProbIndex(Linfo/flowersoft/theotown/util/NameGenerator$ProbFilter;I)I

    move-result v1

    .line 61
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v2, v7, v1

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_5e
    return-object v2
.end method

.method public static generateFiltered()Ljava/lang/String;
    .registers 2

    .line 26
    :cond_0
    invoke-static {}, Linfo/flowersoft/theotown/util/NameGenerator;->generate()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {}, Linfo/flowersoft/theotown/resources/WordFilter;->getInstance()Linfo/flowersoft/theotown/resources/WordFilter;

    move-result-object v1

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/resources/WordFilter;->isForbidden(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method

.method public static getProbIndex(Linfo/flowersoft/theotown/util/NameGenerator$ProbFilter;I)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_4
    if-ge v2, p1, :cond_e

    .line 71
    invoke-interface {p0, v2}, Linfo/flowersoft/theotown/util/NameGenerator$ProbFilter;->prob(I)F

    move-result v4

    add-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 74
    :cond_e
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v2, v3

    :goto_15
    if-ge v1, p1, :cond_24

    .line 78
    invoke-interface {p0, v1}, Linfo/flowersoft/theotown/util/NameGenerator$ProbFilter;->prob(I)F

    move-result v3

    add-float/2addr v0, v3

    cmpl-float v3, v0, v2

    if-lez v3, :cond_21

    return v1

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_24
    add-int/lit8 p1, p1, -0x1

    return p1
.end method

###### Class info.flowersoft.theotown.util.NameGenerator.AnonymousClass1 (info.flowersoft.theotown.util.NameGenerator$1)
.class Linfo/flowersoft/theotown/util/NameGenerator$1;
.super Ljava/lang/Object;
.source "NameGenerator.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/NameGenerator$ProbFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/util/NameGenerator;->generate()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public prob(I)F
    .registers 3

    .line 40
    invoke-static {}, Linfo/flowersoft/theotown/util/NameGenerator;->access$000()[F

    move-result-object v0

    aget p1, v0, p1

    return p1
.end method

###### Class info.flowersoft.theotown.util.NameGenerator.AnonymousClass2 (info.flowersoft.theotown.util.NameGenerator$2)
.class Linfo/flowersoft/theotown/util/NameGenerator$2;
.super Ljava/lang/Object;
.source "NameGenerator.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/NameGenerator$ProbFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/util/NameGenerator;->generate()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$lastIndex:[I

.field public final synthetic val$lastLastIndex:[I


# direct methods
.method public constructor <init>([I[I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Linfo/flowersoft/theotown/util/NameGenerator$2;->val$lastIndex:[I

    iput-object p2, p0, Linfo/flowersoft/theotown/util/NameGenerator$2;->val$lastLastIndex:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public prob(I)F
    .registers 6

    .line 54
    invoke-static {}, Linfo/flowersoft/theotown/util/NameGenerator;->access$100()[Z

    move-result-object v0

    aget-boolean v0, v0, p1

    invoke-static {}, Linfo/flowersoft/theotown/util/NameGenerator;->access$100()[Z

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/util/NameGenerator$2;->val$lastIndex:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    aget-boolean v1, v1, v2

    if-ne v0, v1, :cond_1b

    invoke-static {}, Linfo/flowersoft/theotown/util/NameGenerator;->access$100()[Z

    move-result-object v0

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_28

    :cond_1b
    iget-object v0, p0, Linfo/flowersoft/theotown/util/NameGenerator$2;->val$lastLastIndex:[I

    aget v0, v0, v3

    if-eq v0, p1, :cond_28

    .line 56
    invoke-static {}, Linfo/flowersoft/theotown/util/NameGenerator;->access$200()[F

    move-result-object v0

    aget p1, v0, p1

    return p1

    :cond_28
    const/4 p1, 0x0

    return p1
.end method

###### Class info.flowersoft.theotown.util.NameGenerator.ProbFilter (info.flowersoft.theotown.util.NameGenerator$ProbFilter)
.class interface abstract Linfo/flowersoft/theotown/util/NameGenerator$ProbFilter;
.super Ljava/lang/Object;
.source "NameGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/NameGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProbFilter"
.end annotation


# virtual methods
.method public abstract prob(I)F
.end method
