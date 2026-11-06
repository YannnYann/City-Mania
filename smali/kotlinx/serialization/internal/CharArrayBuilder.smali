###### Class kotlinx.serialization.internal.CharArrayBuilder (kotlinx.serialization.internal.CharArrayBuilder)
.class public final Lkotlinx/serialization/internal/CharArrayBuilder;
.super Lkotlinx/serialization/internal/PrimitiveArrayBuilder;
.source "PrimitiveArraysSerializers.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/internal/PrimitiveArrayBuilder<",
        "[C>;"
    }
.end annotation


# instance fields
.field public buffer:[C

.field public position:I


# direct methods
.method public constructor <init>([C)V
    .registers 3

    const-string v0, "bufferWithData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    invoke-direct {p0}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;-><init>()V

    .line 343
    iput-object p1, p0, Lkotlinx/serialization/internal/CharArrayBuilder;->buffer:[C

    .line 344
    array-length p1, p1

    iput p1, p0, Lkotlinx/serialization/internal/CharArrayBuilder;->position:I

    const/16 p1, 0xa

    .line 348
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/CharArrayBuilder;->ensureCapacity$kotlinx_serialization_core(I)V

    return-void
.end method


# virtual methods
.method public final append$kotlinx_serialization_core(C)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 357
    invoke-static {p0, v2, v0, v1}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;->ensureCapacity$kotlinx_serialization_core$default(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;IILjava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lkotlinx/serialization/internal/CharArrayBuilder;->buffer:[C

    invoke-virtual {p0}, Lkotlinx/serialization/internal/CharArrayBuilder;->getPosition$kotlinx_serialization_core()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/internal/CharArrayBuilder;->position:I

    aput-char p1, v0, v1

    return-void
.end method

.method public bridge synthetic build$kotlinx_serialization_core()Ljava/lang/Object;
    .registers 2

    .line 338
    invoke-virtual {p0}, Lkotlinx/serialization/internal/CharArrayBuilder;->build$kotlinx_serialization_core()[C

    move-result-object v0

    return-object v0
.end method

.method public build$kotlinx_serialization_core()[C
    .registers 3

    .line 361
    iget-object v0, p0, Lkotlinx/serialization/internal/CharArrayBuilder;->buffer:[C

    invoke-virtual {p0}, Lkotlinx/serialization/internal/CharArrayBuilder;->getPosition$kotlinx_serialization_core()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public ensureCapacity$kotlinx_serialization_core(I)V
    .registers 4

    .line 352
    iget-object v0, p0, Lkotlinx/serialization/internal/CharArrayBuilder;->buffer:[C

    array-length v1, v0

    if-ge v1, p1, :cond_17

    .line 353
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlinx/serialization/internal/CharArrayBuilder;->buffer:[C

    :cond_17
    return-void
.end method

.method public getPosition$kotlinx_serialization_core()I
    .registers 2

    .line 344
    iget v0, p0, Lkotlinx/serialization/internal/CharArrayBuilder;->position:I

    return v0
.end method
