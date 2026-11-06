###### Class ads_mobile_sdk.z34 (ads_mobile_sdk.z34)
.class public final Lads_mobile_sdk/z34;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x9

    .line 2
    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    const/4 v1, 0x7

    aget v1, v0, v1

    const/16 v2, 0x8

    aget v0, v0, v2

    rem-int/2addr v1, v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/z34;->a:Ljava/util/ArrayDeque;

    return-void

    :array_1a
    .array-data 4
        0x6d68ab2
        0x9020cc0
        0x5195f13a
        0x8028dc2
        0x30a5d116
        -0x761d87ac
        0x20f6434
        0x67906f60
        0x10db9daa
    .end array-data
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/w34;
    .registers 3

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/z34;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/w34;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lads_mobile_sdk/v34;->b:Lads_mobile_sdk/v34;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/w34;

    return-object v0
.end method

.method public final a(JJJ)V
    .registers 17

    const/16 v0, 0x9

    .line 1
    new-array v0, v0, [I

    fill-array-data v0, :array_4a

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    const/4 v5, 0x4

    aget v5, v0, v5

    const/4 v6, 0x5

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v0, v7

    const/4 v8, 0x7

    aget v8, v0, v8

    const/16 v9, 0x8

    aget v0, v0, v9

    not-int v9, v1

    and-int/2addr v2, v9

    or-int/2addr v2, v3

    and-int/2addr v1, v4

    or-int/2addr v1, v5

    invoke-static {v2, v1, v6, v7}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v1

    rem-int/2addr v8, v0

    xor-int v0, v1, v8

    new-instance v1, Lads_mobile_sdk/w34;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lads_mobile_sdk/w34;-><init>(JJJ)V

    iget-object p1, p0, Lads_mobile_sdk/z34;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p2

    if-ge p2, v0, :cond_43

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    :cond_43
    new-instance p1, Lads_mobile_sdk/x34;

    invoke-direct {p1}, Lads_mobile_sdk/x34;-><init>()V

    throw p1

    nop

    :array_4a
    .array-data 4
        0x6ebe4208
        0x40a95b1
        0x310a3a42
        0x4640a5b1
        0x62e0284e
        -0x5a434c1d
        0x1773f284
        0x5a9cc3e5
        0x1afe3625
    .end array-data
.end method
