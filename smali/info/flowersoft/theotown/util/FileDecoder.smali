###### Class info.flowersoft.theotown.util.FileDecoder (info.flowersoft.theotown.util.FileDecoder)
.class public final Linfo/flowersoft/theotown/util/FileDecoder;
.super Ljava/lang/Object;
.source "FileDecoder.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(Ljava/io/InputStream;Ljava/lang/String;)Linfo/flowersoft/theotown/util/BytesCallbackFunction;
    .registers 7

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 18
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const v2, 0x1b4c7561

    .line 20
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const v2, 0x52010104

    .line 21
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const v2, 0x4040400

    .line 22
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 24
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 25
    new-instance v1, Linfo/flowersoft/theotown/util/FileDecoder$decode$combined$1;

    invoke-direct {v1, v0, p1}, Linfo/flowersoft/theotown/util/FileDecoder$decode$combined$1;-><init>([BLjava/io/InputStream;)V

    .line 36
    sget-object p1, Linfo/flowersoft/theotown/util/TempLua;->INSTANCE:Linfo/flowersoft/theotown/util/TempLua;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/TempLua;->getGlobals()Lvm2/Globals;

    move-result-object p1

    .line 37
    new-instance v0, Linfo/flowersoft/theotown/util/BytesCallbackFunction;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/BytesCallbackFunction;-><init>()V

    .line 38
    const-string v2, "."

    const-string v3, "b"

    invoke-virtual {p1, v1, v2, v3, p1}, Lvm2/Globals;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    .line 39
    invoke-static {p2}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.util.FileDecoder$decode$combined$1 (info.flowersoft.theotown.util.FileDecoder$decode$combined$1)
.class public final Linfo/flowersoft/theotown/util/FileDecoder$decode$combined$1;
.super Ljava/io/FilterInputStream;
.source "FileDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/util/FileDecoder;->decode(Ljava/io/InputStream;Ljava/lang/String;)Linfo/flowersoft/theotown/util/BytesCallbackFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $headerBytes:[B

.field public pos:I


# direct methods
.method public constructor <init>([BLjava/io/InputStream;)V
    .registers 3

    iput-object p1, p0, Linfo/flowersoft/theotown/util/FileDecoder$decode$combined$1;->$headerBytes:[B

    .line 25
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 26
    array-length p1, p1

    neg-int p1, p1

    iput p1, p0, Linfo/flowersoft/theotown/util/FileDecoder$decode$combined$1;->pos:I

    return-void
.end method


# virtual methods
.method public final getPos()I
    .registers 2

    .line 26
    iget v0, p0, Linfo/flowersoft/theotown/util/FileDecoder$decode$combined$1;->pos:I

    return v0
.end method

.method public read()I
    .registers 5

    .line 29
    iget v0, p0, Linfo/flowersoft/theotown/util/FileDecoder$decode$combined$1;->pos:I

    if-gez v0, :cond_f

    .line 30
    iget-object v1, p0, Linfo/flowersoft/theotown/util/FileDecoder$decode$combined$1;->$headerBytes:[B

    array-length v2, v1

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Linfo/flowersoft/theotown/util/FileDecoder$decode$combined$1;->pos:I

    add-int/2addr v2, v0

    aget-byte v0, v1, v2

    return v0

    .line 32
    :cond_f
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    return v0
.end method

.method public final setPos(I)V
    .registers 2

    .line 26
    iput p1, p0, Linfo/flowersoft/theotown/util/FileDecoder$decode$combined$1;->pos:I

    return-void
.end method
