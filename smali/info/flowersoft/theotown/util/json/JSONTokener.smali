###### Class info.flowersoft.theotown.util.json.JSONTokener (info.flowersoft.theotown.util.json.JSONTokener)
.class public Linfo/flowersoft/theotown/util/json/JSONTokener;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field public final in:Ljava/lang/String;

.field public final inChars:[C

.field public pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->in:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->inChars:[C

    return-void
.end method

.method public static dehexchar(C)I
    .registers 3

    .line 0
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x41

    if-lt p0, v0, :cond_15

    const/16 v0, 0x46

    if-gt p0, v0, :cond_15

    add-int/lit8 p0, p0, -0x37

    return p0

    :cond_15
    const/16 v0, 0x61

    if-lt p0, v0, :cond_20

    const/16 v0, 0x66

    if-gt p0, v0, :cond_20

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_20
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public back()V
    .registers 3

    .line 506
    iget v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    .line 507
    iput v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    :cond_c
    return-void
.end method

.method public more()Z
    .registers 3

    .line 400
    iget v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    iget-object v1, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->inChars:[C

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public next()C
    .registers 4

    .line 408
    iget v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    iget-object v1, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->inChars:[C

    array-length v2, v1

    if-ge v0, v2, :cond_e

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    aget-char v0, v1, v0

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public next(C)C
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 415
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->next()C

    move-result v0

    if-ne v0, p1, :cond_7

    return v0

    .line 417
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object p1

    throw p1
.end method

.method public next(I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 443
    iget v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    add-int v1, v0, p1

    iget-object v2, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->inChars:[C

    array-length v3, v2

    if-gt v1, v3, :cond_14

    .line 446
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2, v0, p1}, Ljava/lang/String;-><init>([CII)V

    .line 447
    iget v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    return-object v1

    .line 444
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is out of bounds"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object p1

    throw p1
.end method

.method public nextClean()C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 428
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->nextCleanInternal()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    return v0

    :cond_9
    int-to-char v0, v0

    return v0
.end method

.method public final nextCleanInternal()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 87
    :cond_0
    :goto_0
    iget v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    iget-object v1, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->inChars:[C

    array-length v2, v1

    if-ge v0, v2, :cond_33

    add-int/lit8 v2, v0, 0x1

    .line 88
    iput v2, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    aget-char v0, v1, v0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_22

    goto :goto_2e

    .line 96
    :cond_22
    array-length v4, v1

    if-ne v2, v4, :cond_26

    goto :goto_2e

    .line 99
    :cond_26
    aget-char v1, v1, v2

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_2f

    if-eq v1, v3, :cond_2f

    :goto_2e
    return v0

    .line 103
    :cond_2f
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->skipComment()V

    goto :goto_0

    :cond_33
    const/4 v0, -0x1

    return v0
.end method

.method public nextString(C)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 158
    iget v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    const/4 v1, 0x0

    .line 159
    :cond_3
    :goto_3
    iget v2, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    iget-object v3, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->inChars:[C

    array-length v4, v3

    if-ge v2, v4, :cond_56

    add-int/lit8 v4, v2, 0x1

    .line 160
    iput v4, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    aget-char v5, v3, v2

    if-ne v5, p1, :cond_24

    if-nez v1, :cond_1b

    .line 165
    new-instance p1, Ljava/lang/String;

    sub-int/2addr v2, v0

    invoke-direct {p1, v3, v0, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_1b
    sub-int/2addr v2, v0

    .line 168
    invoke-virtual {v1, v3, v0, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_24
    const/16 v2, 0x5c

    if-ne v5, v2, :cond_3

    .line 173
    array-length v2, v3

    if-eq v4, v2, :cond_4f

    if-nez v1, :cond_3b

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    sub-int/2addr v4, v0

    mul-int/lit8 v4, v4, 0x2

    const/16 v2, 0x10

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 180
    :cond_3b
    iget-object v2, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->inChars:[C

    iget v3, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->readEscapeCharacter()C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    iget v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    goto :goto_3

    .line 174
    :cond_4f
    const-string p1, "Unterminated escape sequence"

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object p1

    throw p1

    .line 185
    :cond_56
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object p1

    throw p1
.end method

.method public nextTo(C)Ljava/lang/String;
    .registers 2

    .line 476
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONTokener;->nextToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nextTo(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 468
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 470
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONTokener;->nextToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final nextToInternal(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 278
    iget v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    .line 279
    :goto_2
    iget v1, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    iget-object v2, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->inChars:[C

    array-length v3, v2

    if-ge v1, v3, :cond_2d

    .line 280
    aget-char v1, v2, v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_22

    const/16 v2, 0xa

    if-eq v1, v2, :cond_22

    .line 281
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1b

    goto :goto_22

    .line 279
    :cond_1b
    iget v1, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    goto :goto_2

    .line 282
    :cond_22
    :goto_22
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->inChars:[C

    iget v2, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    sub-int/2addr v2, v0

    invoke-direct {p1, v1, v0, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 285
    :cond_2d
    new-instance p1, Ljava/lang/String;

    array-length v1, v2

    sub-int/2addr v1, v0

    invoke-direct {p1, v2, v0, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method

.method public nextValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->nextCleanInternal()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_32

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2c

    const/16 v1, 0x27

    if-eq v0, v1, :cond_2c

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_27

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_22

    .line 82
    iget v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    .line 83
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->readLiteral()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 75
    :cond_22
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->readObject()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 77
    :cond_27
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->readArray()Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    return-object v0

    :cond_2c
    int-to-char v0, v0

    .line 80
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :cond_32
    const-string v0, "End of input"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object v0

    throw v0
.end method

.method public final readArray()Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 341
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 345
    :goto_6
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->nextCleanInternal()I

    move-result v2

    const/4 v3, -0x1

    const-string v4, "Unterminated array"

    if-eq v2, v3, :cond_45

    const/4 v3, 0x0

    const/16 v5, 0x2c

    const/4 v6, 0x1

    if-eq v2, v5, :cond_41

    const/16 v7, 0x3b

    if-eq v2, v7, :cond_41

    const/16 v8, 0x5d

    if-eq v2, v8, :cond_3b

    .line 360
    iget v1, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    sub-int/2addr v1, v6

    iput v1, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    .line 362
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    .line 363
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->nextCleanInternal()I

    move-result v1

    if-eq v1, v5, :cond_39

    if-eq v1, v7, :cond_39

    if-ne v1, v8, :cond_34

    goto :goto_40

    .line 371
    :cond_34
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object v0

    throw v0

    :cond_39
    :goto_39
    move v1, v6

    goto :goto_6

    :cond_3b
    if-eqz v1, :cond_40

    .line 350
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    :cond_40
    :goto_40
    return-object v0

    .line 356
    :cond_41
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    goto :goto_39

    .line 347
    :cond_45
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object v0

    throw v0
.end method

.method public final readEscapeCharacter()C
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->inChars:[C

    iget v1, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    aget-char v3, v0, v1

    const/16 v4, 0x62

    if-eq v3, v4, :cond_4e

    const/16 v4, 0x66

    if-eq v3, v4, :cond_4b

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_48

    const/16 v4, 0x72

    if-eq v3, v4, :cond_45

    const/16 v4, 0x74

    if-eq v3, v4, :cond_42

    const/16 v4, 0x75

    if-eq v3, v4, :cond_23

    return v3

    :cond_23
    add-int/lit8 v1, v1, 0x5

    .line 200
    array-length v3, v0

    if-gt v1, v3, :cond_3b

    .line 203
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x4

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 204
    iget v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    add-int/2addr v0, v3

    iput v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    const/16 v0, 0x10

    .line 205
    invoke-static {v1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    return v0

    .line 201
    :cond_3b
    const-string v0, "Unterminated escape sequence"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object v0

    throw v0

    :cond_42
    const/16 v0, 0x9

    return v0

    :cond_45
    const/16 v0, 0xd

    return v0

    :cond_48
    const/16 v0, 0xa

    return v0

    :cond_4b
    const/16 v0, 0xc

    return v0

    :cond_4e
    const/16 v0, 0x8

    return v0
.end method

.method public final readLiteral()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 229
    const-string v0, "{}[]/\\:,=;# \t\u000c"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->nextToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_90

    .line 232
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 233
    sget-object v0, Linfo/flowersoft/theotown/util/json/JSONObject;->NULL:Ljava/lang/Object;

    return-object v0

    .line 234
    :cond_17
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 235
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 236
    :cond_22
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 237
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_2d
    const/16 v1, 0x2e

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_85

    .line 243
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_61

    const-string v1, "0X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    goto :goto_61

    .line 246
    :cond_47
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5d

    .line 247
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    goto :goto_68

    :cond_5d
    const/16 v2, 0xa

    move-object v1, v0

    goto :goto_68

    :cond_61
    :goto_61
    const/4 v1, 0x2

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    .line 251
    :goto_68
    :try_start_68
    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_80

    const-wide/32 v3, -0x80000000

    cmp-long v3, v1, v3

    if-ltz v3, :cond_80

    long-to-int v1, v1

    .line 253
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 255
    :cond_80
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_84
    .catch Ljava/lang/NumberFormatException; {:try_start_68 .. :try_end_84} :catch_85

    return-object v0

    .line 267
    :catch_85
    :cond_85
    :try_start_85
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0
    :try_end_89
    .catch Ljava/lang/NumberFormatException; {:try_start_85 .. :try_end_89} :catch_8a

    return-object v0

    .line 271
    :catch_8a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 231
    :cond_90
    const-string v0, "Expected literal value"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object v0

    throw v0
.end method

.method public final readObject()Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 292
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 294
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->nextCleanInternal()I

    move-result v1

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_f

    goto/16 :goto_9a

    :cond_f
    const/4 v3, -0x1

    if-eq v1, v3, :cond_18

    .line 298
    iget v1, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    .line 301
    :cond_18
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 302
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_4f

    if-nez v1, :cond_29

    .line 304
    const-string v0, "Names cannot be null"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object v0

    throw v0

    .line 306
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Names must be strings, but "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is of type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object v0

    throw v0

    .line 315
    :cond_4f
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->nextCleanInternal()I

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_72

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_5c

    goto :goto_72

    .line 317
    :cond_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \':\' after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object v0

    throw v0

    .line 319
    :cond_72
    :goto_72
    iget v3, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    iget-object v4, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->inChars:[C

    array-length v5, v4

    if-ge v3, v5, :cond_83

    aget-char v4, v4, v3

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_83

    add-int/lit8 v3, v3, 0x1

    .line 320
    iput v3, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    .line 322
    :cond_83
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 323
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->nextCleanInternal()I

    move-result v1

    const/16 v3, 0x2c

    if-eq v1, v3, :cond_18

    const/16 v3, 0x3b

    if-eq v1, v3, :cond_18

    if-ne v1, v2, :cond_9b

    :goto_9a
    return-object v0

    .line 330
    :cond_9b
    const-string v0, "Unterminated object"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object v0

    throw v0
.end method

.method public final skipComment()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->inChars:[C

    iget v1, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_25

    .line 121
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->in:Ljava/lang/String;

    const-string v1, "*/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    add-int/lit8 v0, v0, 0x2

    .line 125
    iput v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    return-void

    .line 123
    :cond_1e
    const-string v0, "Unterminated comment"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;

    move-result-object v0

    throw v0

    .line 131
    :cond_25
    :goto_25
    iget v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    iget-object v1, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->inChars:[C

    array-length v2, v1

    if-ge v0, v2, :cond_40

    .line 132
    aget-char v1, v1, v0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_3c

    const/16 v2, 0xa

    if-ne v1, v2, :cond_37

    goto :goto_3c

    :cond_37
    add-int/lit8 v0, v0, 0x1

    .line 131
    iput v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    goto :goto_25

    :cond_3c
    :goto_3c
    add-int/lit8 v0, v0, 0x1

    .line 134
    iput v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    :cond_40
    return-void
.end method

.method public skipPast(Ljava/lang/String;)V
    .registers 4

    .line 484
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->in:Ljava/lang/String;

    iget v1, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 485
    iget-object p1, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->inChars:[C

    array-length p1, p1

    goto :goto_14

    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    :goto_14
    iput p1, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    return-void
.end method

.method public skipTo(C)C
    .registers 4

    .line 493
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->in:Ljava/lang/String;

    iget v1, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 495
    iput v0, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public syntaxError(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONException;
    .registers 4

    .line 380
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/util/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
