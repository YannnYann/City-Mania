###### Class info.flowersoft.theotown.util.BytesCallbackFunction (info.flowersoft.theotown.util.BytesCallbackFunction)
.class public final Linfo/flowersoft/theotown/util/BytesCallbackFunction;
.super Lvm2/lib/OneArgFunction;
.source "BytesCallbackFunction.kt"


# instance fields
.field public len:I

.field public final out:Ljava/io/ByteArrayOutputStream;

.field public paddingPrefix:I

.field public paddingSuffix:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    .line 13
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->out:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 42
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    .line 43
    iget v0, p0, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->paddingPrefix:I

    const v1, 0xfe02

    const-string v2, "Failed requirement."

    if-nez v0, :cond_1e

    if-ltz p1, :cond_18

    if-ge p1, v1, :cond_18

    .line 45
    iput p1, p0, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->paddingPrefix:I

    goto :goto_49

    .line 44
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_1e
    iget v0, p0, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->paddingSuffix:I

    if-nez v0, :cond_2f

    if-ltz p1, :cond_29

    if-ge p1, v1, :cond_29

    .line 48
    iput p1, p0, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->paddingSuffix:I

    goto :goto_49

    .line 47
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_2f
    iget v0, p0, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->len:I

    if-nez v0, :cond_3e

    if-lez p1, :cond_38

    .line 51
    iput p1, p0, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->len:I

    goto :goto_49

    .line 50
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3e
    if-ltz p1, :cond_51

    const/16 v0, 0x100

    if-ge p1, v0, :cond_51

    .line 54
    iget-object v0, p0, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 57
    :goto_49
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    const-string v0, "NIL"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 53
    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getLen()I
    .registers 2

    .line 30
    iget v0, p0, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->len:I

    return v0
.end method

.method public final getMaskBytes()[B
    .registers 3

    .line 36
    iget-object v0, p0, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v1, "toByteArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPaddingPrefix()I
    .registers 2

    .line 18
    iget v0, p0, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->paddingPrefix:I

    return v0
.end method

.method public final getPaddingSuffix()I
    .registers 2

    .line 24
    iget v0, p0, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->paddingSuffix:I

    return v0
.end method
