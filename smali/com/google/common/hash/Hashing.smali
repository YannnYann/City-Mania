###### Class com.google.common.hash.Hashing (com.google.common.hash.Hashing)
.class public final Lcom/google/common/hash/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# static fields
.field public static final GOOD_FAST_HASH_SEED:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    return-void
.end method

.method public static murmur3_128()Lcom/google/common/hash/HashFunction;
    .registers 1

    .line 181
    sget-object v0, Lcom/google/common/hash/Murmur3_128HashFunction;->MURMUR3_128:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method
