###### Class vm2.Buffer (vm2.Buffer)
.class public final Lvm2/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x40

.field private static final NOBYTES:[B


# instance fields
.field private bytes:[B

.field private length:I

.field private offset:I

.field private value:Lvm2/LuaValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 44
    new-array v0, v0, [B

    sput-object v0, Lvm2/Buffer;->NOBYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x40

    .line 63
    invoke-direct {p0, v0}, Lvm2/Buffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-array p1, p1, [B

    iput-object p1, p0, Lvm2/Buffer;->bytes:[B

    const/4 p1, 0x0

    .line 72
    iput p1, p0, Lvm2/Buffer;->length:I

    .line 73
    iput p1, p0, Lvm2/Buffer;->offset:I

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lvm2/Buffer;->value:Lvm2/LuaValue;

    return-void
.end method

.method public constructor <init>(Lvm2/LuaValue;)V
    .registers 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Lvm2/Buffer;->NOBYTES:[B

    iput-object v0, p0, Lvm2/Buffer;->bytes:[B

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lvm2/Buffer;->offset:I

    iput v0, p0, Lvm2/Buffer;->length:I

    .line 84
    iput-object p1, p0, Lvm2/Buffer;->value:Lvm2/LuaValue;

    return-void
.end method

.method private final realloc(II)V
    .registers 6

    .line 241
    iget-object v0, p0, Lvm2/Buffer;->bytes:[B

    array-length v1, v0

    if-eq p1, v1, :cond_12

    .line 242
    new-array p1, p1, [B

    .line 243
    iget v1, p0, Lvm2/Buffer;->offset:I

    iget v2, p0, Lvm2/Buffer;->length:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    iput-object p1, p0, Lvm2/Buffer;->bytes:[B

    .line 245
    iput p2, p0, Lvm2/Buffer;->offset:I

    :cond_12
    return-void
.end method


# virtual methods
.method public final append(B)Lvm2/Buffer;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 136
    invoke-virtual {p0, v0, v1}, Lvm2/Buffer;->makeroom(II)V

    .line 137
    iget-object v0, p0, Lvm2/Buffer;->bytes:[B

    iget v1, p0, Lvm2/Buffer;->offset:I

    iget v2, p0, Lvm2/Buffer;->length:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lvm2/Buffer;->length:I

    add-int/2addr v1, v2

    aput-byte p1, v0, v1

    return-object p0
.end method

.method public final append(Ljava/lang/String;)Lvm2/Buffer;
    .registers 7

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 170
    invoke-static {p1}, Lvm2/LuaString;->lengthAsUtf8([C)I

    move-result v0

    const/4 v1, 0x0

    .line 171
    invoke-virtual {p0, v1, v0}, Lvm2/Buffer;->makeroom(II)V

    .line 172
    array-length v1, p1

    iget-object v2, p0, Lvm2/Buffer;->bytes:[B

    iget v3, p0, Lvm2/Buffer;->offset:I

    iget v4, p0, Lvm2/Buffer;->length:I

    add-int/2addr v3, v4

    invoke-static {p1, v1, v2, v3}, Lvm2/LuaString;->encodeToUtf8([CI[BI)I

    .line 173
    iget p1, p0, Lvm2/Buffer;->length:I

    add-int/2addr p1, v0

    iput p1, p0, Lvm2/Buffer;->length:I

    return-object p0
.end method

.method public final append(Lvm2/LuaString;)Lvm2/Buffer;
    .registers 7

    .line 155
    iget v0, p1, Lvm2/LuaString;->m_length:I

    const/4 v1, 0x0

    .line 156
    invoke-virtual {p0, v1, v0}, Lvm2/Buffer;->makeroom(II)V

    .line 157
    iget-object v2, p0, Lvm2/Buffer;->bytes:[B

    iget v3, p0, Lvm2/Buffer;->offset:I

    iget v4, p0, Lvm2/Buffer;->length:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Lvm2/LuaString;->copyInto(I[BII)V

    .line 158
    iget p1, p0, Lvm2/Buffer;->length:I

    add-int/2addr p1, v0

    iput p1, p0, Lvm2/Buffer;->length:I

    return-object p0
.end method

.method public final append(Lvm2/LuaValue;)Lvm2/Buffer;
    .registers 2

    .line 146
    invoke-virtual {p1}, Lvm2/LuaValue;->strvalue()Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/Buffer;->append(Lvm2/LuaString;)Lvm2/Buffer;

    return-object p0
.end method

.method public concatTo(Lvm2/LuaNumber;)Lvm2/Buffer;
    .registers 3

    .line 200
    iget-object v0, p0, Lvm2/Buffer;->value:Lvm2/LuaValue;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lvm2/LuaValue;->isstring()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lvm2/Buffer;->value:Lvm2/LuaValue;

    invoke-virtual {p1, v0}, Lvm2/LuaNumber;->concat(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/Buffer;->setvalue(Lvm2/LuaValue;)Lvm2/Buffer;

    move-result-object p1

    return-object p1

    :cond_15
    invoke-virtual {p1}, Lvm2/LuaValue;->strvalue()Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/Buffer;->prepend(Lvm2/LuaString;)Lvm2/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public concatTo(Lvm2/LuaString;)Lvm2/Buffer;
    .registers 3

    .line 190
    iget-object v0, p0, Lvm2/Buffer;->value:Lvm2/LuaValue;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lvm2/LuaValue;->isstring()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lvm2/Buffer;->value:Lvm2/LuaValue;

    invoke-virtual {p1, v0}, Lvm2/LuaString;->concat(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/Buffer;->setvalue(Lvm2/LuaValue;)Lvm2/Buffer;

    move-result-object p1

    return-object p1

    :cond_15
    invoke-virtual {p0, p1}, Lvm2/Buffer;->prepend(Lvm2/LuaString;)Lvm2/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public concatTo(Lvm2/LuaValue;)Lvm2/Buffer;
    .registers 3

    .line 182
    invoke-virtual {p0}, Lvm2/Buffer;->value()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->concat(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/Buffer;->setvalue(Lvm2/LuaValue;)Lvm2/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public final makeroom(II)V
    .registers 7

    .line 222
    iget-object v0, p0, Lvm2/Buffer;->value:Lvm2/LuaValue;

    if-eqz v0, :cond_20

    .line 223
    invoke-virtual {v0}, Lvm2/LuaValue;->strvalue()Lvm2/LuaString;

    move-result-object v0

    const/4 v1, 0x0

    .line 224
    iput-object v1, p0, Lvm2/Buffer;->value:Lvm2/LuaValue;

    .line 225
    iget v1, v0, Lvm2/LuaString;->m_length:I

    iput v1, p0, Lvm2/Buffer;->length:I

    .line 226
    iput p1, p0, Lvm2/Buffer;->offset:I

    add-int v2, p1, v1

    add-int/2addr v2, p2

    .line 227
    new-array p2, v2, [B

    iput-object p2, p0, Lvm2/Buffer;->bytes:[B

    .line 228
    iget-object v2, v0, Lvm2/LuaString;->m_bytes:[B

    iget v0, v0, Lvm2/LuaString;->m_offset:I

    invoke-static {v2, v0, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 229
    :cond_20
    iget v0, p0, Lvm2/Buffer;->offset:I

    iget v1, p0, Lvm2/Buffer;->length:I

    add-int v2, v0, v1

    add-int/2addr v2, p2

    iget-object v3, p0, Lvm2/Buffer;->bytes:[B

    array-length v3, v3

    if-gt v2, v3, :cond_30

    if-ge v0, p1, :cond_2f

    goto :goto_30

    :cond_2f
    return-void

    :cond_30
    :goto_30
    add-int v0, p1, v1

    add-int/2addr v0, p2

    const/16 v2, 0x20

    if-ge v0, v2, :cond_39

    move v0, v2

    goto :goto_3f

    :cond_39
    mul-int/lit8 v2, v1, 0x2

    if-ge v0, v2, :cond_3f

    mul-int/lit8 v0, v1, 0x2

    :cond_3f
    :goto_3f
    if-nez p1, :cond_43

    const/4 p1, 0x0

    goto :goto_46

    :cond_43
    sub-int p1, v0, v1

    sub-int/2addr p1, p2

    .line 232
    :goto_46
    invoke-direct {p0, v0, p1}, Lvm2/Buffer;->realloc(II)V

    return-void
.end method

.method public prepend(Lvm2/LuaString;)Lvm2/Buffer;
    .registers 6

    .line 208
    iget v0, p1, Lvm2/LuaString;->m_length:I

    const/4 v1, 0x0

    .line 209
    invoke-virtual {p0, v0, v1}, Lvm2/Buffer;->makeroom(II)V

    .line 210
    iget-object v1, p1, Lvm2/LuaString;->m_bytes:[B

    iget p1, p1, Lvm2/LuaString;->m_offset:I

    iget-object v2, p0, Lvm2/Buffer;->bytes:[B

    iget v3, p0, Lvm2/Buffer;->offset:I

    sub-int/2addr v3, v0

    invoke-static {v1, p1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    iget p1, p0, Lvm2/Buffer;->offset:I

    sub-int/2addr p1, v0

    iput p1, p0, Lvm2/Buffer;->offset:I

    .line 212
    iget p1, p0, Lvm2/Buffer;->length:I

    add-int/2addr p1, v0

    iput p1, p0, Lvm2/Buffer;->length:I

    const/4 p1, 0x0

    .line 213
    iput-object p1, p0, Lvm2/Buffer;->value:Lvm2/LuaValue;

    return-object p0
.end method

.method public setvalue(Lvm2/LuaValue;)Lvm2/Buffer;
    .registers 3

    .line 100
    sget-object v0, Lvm2/Buffer;->NOBYTES:[B

    iput-object v0, p0, Lvm2/Buffer;->bytes:[B

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lvm2/Buffer;->length:I

    iput v0, p0, Lvm2/Buffer;->offset:I

    .line 102
    iput-object p1, p0, Lvm2/Buffer;->value:Lvm2/LuaValue;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 128
    invoke-virtual {p0}, Lvm2/Buffer;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tojstring()Ljava/lang/String;
    .registers 2

    .line 120
    invoke-virtual {p0}, Lvm2/Buffer;->value()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tostring()Lvm2/LuaString;
    .registers 4

    .line 111
    iget v0, p0, Lvm2/Buffer;->length:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lvm2/Buffer;->realloc(II)V

    .line 112
    iget-object v0, p0, Lvm2/Buffer;->bytes:[B

    iget v1, p0, Lvm2/Buffer;->offset:I

    iget v2, p0, Lvm2/Buffer;->length:I

    invoke-static {v0, v1, v2}, Lvm2/LuaString;->valueOf([BII)Lvm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public value()Lvm2/LuaValue;
    .registers 2

    .line 92
    iget-object v0, p0, Lvm2/Buffer;->value:Lvm2/LuaValue;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lvm2/Buffer;->tostring()Lvm2/LuaString;

    move-result-object v0

    return-object v0
.end method
