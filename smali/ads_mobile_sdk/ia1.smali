###### Class ads_mobile_sdk.ia1 (ads_mobile_sdk.ia1)
.class public final Lads_mobile_sdk/ia1;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/ia1;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0xd

.field public static final g:I = 0x4

.field public static final h:I = 0x5

.field public static final i:I = 0x6

.field public static final j:I = 0xc

.field public static final k:I = 0xf

.field public static final l:I = 0x7

.field public static final m:I = 0x8

.field public static final n:I = 0xe

.field public static final o:I = 0x9

.field public static final p:I = 0xa

.field public static final q:I = 0xb


# instance fields
.field private arraySeparator_:Ljava/lang/String;

.field private bitField0_:I

.field private bucketSize_:I

.field private captureGroup_:Ljava/lang/String;

.field private elementMaxLength_:I

.field private excludeFalse_:Z

.field private excludeTrue_:Z

.field private itemSeparator_:Ljava/lang/String;

.field private keyValueSeparator_:Ljava/lang/String;

.field private maxLength_:I

.field private maxSize_:I

.field private multiplyingFactor_:D

.field private path_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private round_:I

.field private type_:I

.field private urlKey_:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ia1;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/ia1;->DEFAULT_INSTANCE:Lads_mobile_sdk/ia1;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/ia1;

    invoke-direct {v0}, Lads_mobile_sdk/ia1;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/ia1;->DEFAULT_INSTANCE:Lads_mobile_sdk/ia1;

    .line 5
    const-class v1, Lads_mobile_sdk/ia1;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 20
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/ia1;->path_:Lads_mobile_sdk/yh1$f;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/ia1;->urlKey_:Ljava/lang/String;

    .line 22
    const-string v1, ","

    iput-object v1, p0, Lads_mobile_sdk/ia1;->arraySeparator_:Ljava/lang/String;

    .line 23
    const-string v1, "="

    iput-object v1, p0, Lads_mobile_sdk/ia1;->keyValueSeparator_:Ljava/lang/String;

    .line 24
    const-string v1, "&"

    iput-object v1, p0, Lads_mobile_sdk/ia1;->itemSeparator_:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lads_mobile_sdk/ia1;->captureGroup_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A()Z
    .registers 2

    .line 487
    iget-boolean v0, p0, Lads_mobile_sdk/ia1;->excludeTrue_:Z

    return v0
.end method

.method public final B()Ljava/lang/String;
    .registers 2

    .line 1132
    iget-object v0, p0, Lads_mobile_sdk/ia1;->itemSeparator_:Ljava/lang/String;

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .registers 2

    .line 1040
    iget-object v0, p0, Lads_mobile_sdk/ia1;->keyValueSeparator_:Ljava/lang/String;

    return-object v0
.end method

.method public final D()I
    .registers 2

    .line 436
    iget v0, p0, Lads_mobile_sdk/ia1;->maxLength_:I

    return v0
.end method

.method public final E()I
    .registers 2

    .line 810
    iget v0, p0, Lads_mobile_sdk/ia1;->maxSize_:I

    return v0
.end method

.method public final F()D
    .registers 3

    .line 743
    iget-wide v0, p0, Lads_mobile_sdk/ia1;->multiplyingFactor_:D

    return-wide v0
.end method

.method public final G()Lads_mobile_sdk/yh1$f;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ia1;->path_:Lads_mobile_sdk/yh1$f;

    return-object v0
.end method

.method public final H()I
    .registers 2

    .line 613
    iget v0, p0, Lads_mobile_sdk/ia1;->round_:I

    return v0
.end method

.method public final I()Lads_mobile_sdk/lj3;
    .registers 3

    .line 367
    iget v0, p0, Lads_mobile_sdk/ia1;->type_:I

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    const/4 v0, 0x0

    goto :goto_1a

    .line 368
    :cond_f
    sget-object v0, Lads_mobile_sdk/lj3;->e:Lads_mobile_sdk/lj3;

    goto :goto_1a

    .line 369
    :cond_12
    sget-object v0, Lads_mobile_sdk/lj3;->d:Lads_mobile_sdk/lj3;

    goto :goto_1a

    .line 370
    :cond_15
    sget-object v0, Lads_mobile_sdk/lj3;->c:Lads_mobile_sdk/lj3;

    goto :goto_1a

    .line 371
    :cond_18
    sget-object v0, Lads_mobile_sdk/lj3;->b:Lads_mobile_sdk/lj3;

    :goto_1a
    if-nez v0, :cond_1e

    .line 372
    sget-object v0, Lads_mobile_sdk/lj3;->f:Lads_mobile_sdk/lj3;

    :cond_1e
    return-object v0
.end method

.method public final J()Ljava/lang/String;
    .registers 2

    .line 254
    iget-object v0, p0, Lads_mobile_sdk/ia1;->urlKey_:Ljava/lang/String;

    return-object v0
.end method

.method public final K()Z
    .registers 2

    .line 663
    iget v0, p0, Lads_mobile_sdk/ia1;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final L()Z
    .registers 2

    .line 1209
    iget v0, p0, Lads_mobile_sdk/ia1;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final M()Z
    .registers 2

    .line 428
    iget v0, p0, Lads_mobile_sdk/ia1;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final N()Z
    .registers 2

    .line 794
    iget v0, p0, Lads_mobile_sdk/ia1;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final O()Z
    .registers 2

    .line 729
    iget v0, p0, Lads_mobile_sdk/ia1;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final P()Z
    .registers 2

    .line 599
    iget v0, p0, Lads_mobile_sdk/ia1;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21

    .line 1
    sget-object v0, Lads_mobile_sdk/ga1;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_56

    const/4 v1, 0x2

    if-eq v0, v1, :cond_50

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    const/4 v1, 0x5

    if-eq v0, v1, :cond_19

    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_19
    const-class v0, Lads_mobile_sdk/ia1;

    invoke-static {v0}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object v0

    return-object v0

    .line 39
    :cond_20
    sget-object v0, Lads_mobile_sdk/ia1;->DEFAULT_INSTANCE:Lads_mobile_sdk/ia1;

    return-object v0

    .line 40
    :cond_23
    const-string v15, "elementMaxLength_"

    const-string v16, "multiplyingFactor_"

    const-string v1, "bitField0_"

    const-string v2, "path_"

    const-string v3, "urlKey_"

    const-string v4, "type_"

    const-string v5, "excludeTrue_"

    const-string v6, "excludeFalse_"

    const-string v7, "round_"

    const-string v8, "maxSize_"

    const-string v9, "arraySeparator_"

    const-string v10, "keyValueSeparator_"

    const-string v11, "itemSeparator_"

    const-string v12, "captureGroup_"

    const-string v13, "bucketSize_"

    const-string v14, "maxLength_"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    .line 63
    sget-object v1, Lads_mobile_sdk/ia1;->DEFAULT_INSTANCE:Lads_mobile_sdk/ia1;

    const-string v2, "\u0004\u000f\u0000\u0001\u0001\u000f\u000f\u0000\u0001\u0000\u0001\u021a\u0002\u1208\u0000\u0003\u100c\u0001\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u100b\u0005\u0007\u100b\u0008\u0008\u1208\t\t\u1208\u000b\n\u1208\u000c\u000b\u1208\r\u000c\u100b\u0006\r\u100b\u0002\u000e\u100b\n\u000f\u1000\u0007"

    invoke-static {v1, v2, v0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 64
    :cond_50
    new-instance v0, Lads_mobile_sdk/ha1;

    invoke-direct {v0}, Lads_mobile_sdk/ha1;-><init>()V

    return-object v0

    .line 65
    :cond_56
    new-instance v0, Lads_mobile_sdk/ia1;

    invoke-direct {v0}, Lads_mobile_sdk/ia1;-><init>()V

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .registers 2

    .line 877
    iget-object v0, p0, Lads_mobile_sdk/ia1;->arraySeparator_:Ljava/lang/String;

    return-object v0
.end method

.method public final w()I
    .registers 2

    .line 678
    iget v0, p0, Lads_mobile_sdk/ia1;->bucketSize_:I

    return v0
.end method

.method public final x()Ljava/lang/String;
    .registers 2

    .line 1226
    iget-object v0, p0, Lads_mobile_sdk/ia1;->captureGroup_:Ljava/lang/String;

    return-object v0
.end method

.method public final y()I
    .registers 2

    .line 975
    iget v0, p0, Lads_mobile_sdk/ia1;->elementMaxLength_:I

    return v0
.end method

.method public final z()Z
    .registers 2

    .line 550
    iget-boolean v0, p0, Lads_mobile_sdk/ia1;->excludeFalse_:Z

    return v0
.end method
