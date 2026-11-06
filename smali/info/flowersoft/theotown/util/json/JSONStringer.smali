###### Class info.flowersoft.theotown.util.json.JSONStringer (info.flowersoft.theotown.util.json.JSONStringer)
.class public Linfo/flowersoft/theotown/util/json/JSONStringer;
.super Ljava/lang/Object;
.source "JSONStringer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;
    }
.end annotation


# instance fields
.field public final indent:Ljava/lang/String;

.field public final out:Ljava/lang/StringBuilder;

.field public final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->stack:Ljava/util/List;

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->indent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->stack:Ljava/util/List;

    .line 112
    new-array p1, p1, [C

    const/16 v0, 0x20

    .line 113
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([CC)V

    .line 114
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->indent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public array()Linfo/flowersoft/theotown/util/json/JSONStringer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 123
    sget-object v0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->EMPTY_ARRAY:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    const-string v1, "["

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONStringer;->open(Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONStringer;

    move-result-object v0

    return-object v0
.end method

.method public final beforeKey()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 336
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONStringer;->peek()Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    move-result-object v0

    .line 337
    sget-object v1, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->NONEMPTY_OBJECT:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    if-ne v0, v1, :cond_10

    .line 338
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 339
    :cond_10
    sget-object v1, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->EMPTY_OBJECT:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    if-ne v0, v1, :cond_1d

    .line 342
    :goto_14
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONStringer;->newline()V

    .line 343
    sget-object v0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->DANGLING_KEY:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/json/JSONStringer;->replaceTop(Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;)V

    return-void

    .line 340
    :cond_1d
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONException;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final beforeValue()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 351
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_45

    .line 354
    :cond_9
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONStringer;->peek()Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    move-result-object v0

    .line 355
    sget-object v1, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->EMPTY_ARRAY:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    if-ne v0, v1, :cond_1a

    .line 356
    sget-object v0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->NONEMPTY_ARRAY:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/json/JSONStringer;->replaceTop(Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;)V

    .line 357
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONStringer;->newline()V

    return-void

    .line 358
    :cond_1a
    sget-object v1, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->NONEMPTY_ARRAY:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    if-ne v0, v1, :cond_29

    .line 359
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONStringer;->newline()V

    return-void

    .line 361
    :cond_29
    sget-object v1, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->DANGLING_KEY:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    if-ne v0, v1, :cond_41

    .line 362
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->indent:Ljava/lang/String;

    if-nez v1, :cond_36

    const-string v1, ":"

    goto :goto_38

    :cond_36
    const-string v1, ": "

    :goto_38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    sget-object v0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->NONEMPTY_OBJECT:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/json/JSONStringer;->replaceTop(Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;)V

    return-void

    .line 364
    :cond_41
    sget-object v1, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->NULL:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    if-ne v0, v1, :cond_46

    :goto_45
    return-void

    .line 365
    :cond_46
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONException;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close(Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONStringer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONStringer;->peek()Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    move-result-object v0

    if-eq v0, p2, :cond_11

    if-ne v0, p1, :cond_9

    goto :goto_11

    .line 170
    :cond_9
    new-instance p1, Linfo/flowersoft/theotown/util/json/JSONException;

    const-string p2, "Nesting problem"

    invoke-direct {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_11
    :goto_11
    iget-object p1, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-ne v0, p2, :cond_21

    .line 174
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONStringer;->newline()V

    .line 176
    :cond_21
    iget-object p1, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public endArray()Linfo/flowersoft/theotown/util/json/JSONStringer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 131
    sget-object v0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->EMPTY_ARRAY:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    sget-object v1, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->NONEMPTY_ARRAY:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    const-string v2, "]"

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONStringer;->close(Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONStringer;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Linfo/flowersoft/theotown/util/json/JSONStringer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 148
    sget-object v0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->EMPTY_OBJECT:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    sget-object v1, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->NONEMPTY_OBJECT:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    const-string v2, "}"

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONStringer;->close(Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONStringer;

    move-result-object v0

    return-object v0
.end method

.method public key(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONStringer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 327
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONStringer;->beforeKey()V

    .line 328
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONStringer;->string(Ljava/lang/String;)V

    return-object p0

    .line 325
    :cond_9
    new-instance p1, Linfo/flowersoft/theotown/util/json/JSONException;

    const-string v0, "Names must be non-null"

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final newline()V
    .registers 4

    .line 309
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->indent:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_1f

    .line 312
    :cond_5
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 313
    :goto_d
    iget-object v1, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 314
    iget-object v1, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->indent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1f
    :goto_1f
    return-void
.end method

.method public object()Linfo/flowersoft/theotown/util/json/JSONStringer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 140
    sget-object v0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->EMPTY_OBJECT:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    const-string v1, "{"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONStringer;->open(Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONStringer;

    move-result-object v0

    return-object v0
.end method

.method public open(Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONStringer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_11

    goto :goto_19

    .line 156
    :cond_11
    new-instance p1, Linfo/flowersoft/theotown/util/json/JSONException;

    const-string p2, "Nesting problem: multiple top-level roots"

    invoke-direct {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_19
    :goto_19
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONStringer;->beforeValue()V

    .line 159
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object p1, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final peek()Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 186
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    return-object v0

    .line 184
    :cond_17
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONException;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final replaceTop(Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;)V
    .registers 4

    .line 192
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final string(Ljava/lang/String;)V
    .registers 8

    .line 267
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_7a

    .line 269
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_70

    const/16 v4, 0xd

    if-eq v3, v4, :cond_68

    const/16 v4, 0x22

    const/16 v5, 0x5c

    if-eq v3, v4, :cond_5f

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_5f

    if-eq v3, v5, :cond_5f

    packed-switch v3, :pswitch_data_80

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_41

    .line 299
    iget-object v4, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "\\u%04x"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 301
    :cond_41
    iget-object v4, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 289
    :pswitch_47
    iget-object v3, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const-string v4, "\\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 283
    :pswitch_4f
    iget-object v3, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const-string v4, "\\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 286
    :pswitch_57
    iget-object v3, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const-string v4, "\\b"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 280
    :cond_5f
    iget-object v4, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 292
    :cond_68
    iget-object v3, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const-string v4, "\\r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 295
    :cond_70
    iget-object v3, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const-string v4, "\\f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 306
    :cond_7a
    iget-object p1, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_data_80
    .packed-switch 0x8
        :pswitch_57
        :pswitch_4f
        :pswitch_47
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 379
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value(D)Linfo/flowersoft/theotown/util/json/JSONStringer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 249
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONStringer;->beforeValue()V

    .line 250
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 247
    :cond_19
    new-instance p1, Linfo/flowersoft/theotown/util/json/JSONException;

    const-string p2, "Nesting problem"

    invoke-direct {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public value(J)Linfo/flowersoft/theotown/util/json/JSONStringer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 262
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONStringer;->beforeValue()V

    .line 263
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object p0

    .line 260
    :cond_11
    new-instance p1, Linfo/flowersoft/theotown/util/json/JSONException;

    const-string p2, "Nesting problem"

    invoke-direct {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public value(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONStringer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    .line 206
    instance-of v0, p1, Linfo/flowersoft/theotown/util/json/JSONArray;

    if-eqz v0, :cond_12

    .line 207
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-virtual {p1, p0}, Linfo/flowersoft/theotown/util/json/JSONArray;->writeTo(Linfo/flowersoft/theotown/util/json/JSONStringer;)V

    return-object p0

    .line 209
    :cond_12
    instance-of v0, p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v0, :cond_1c

    .line 210
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p1, p0}, Linfo/flowersoft/theotown/util/json/JSONObject;->writeTo(Linfo/flowersoft/theotown/util/json/JSONStringer;)V

    return-object p0

    .line 213
    :cond_1c
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONStringer;->beforeValue()V

    if-eqz p1, :cond_42

    .line 214
    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_42

    sget-object v0, Linfo/flowersoft/theotown/util/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_2a

    goto :goto_42

    .line 218
    :cond_2a
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_3a

    .line 219
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 221
    :cond_3a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/json/JSONStringer;->string(Ljava/lang/String;)V

    return-object p0

    .line 217
    :cond_42
    :goto_42
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object p0

    .line 204
    :cond_48
    new-instance p1, Linfo/flowersoft/theotown/util/json/JSONException;

    const-string v0, "Nesting problem"

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public value(Z)Linfo/flowersoft/theotown/util/json/JSONStringer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 234
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/json/JSONStringer;->beforeValue()V

    .line 235
    iget-object v0, p0, Linfo/flowersoft/theotown/util/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-object p0

    .line 232
    :cond_11
    new-instance p1, Linfo/flowersoft/theotown/util/json/JSONException;

    const-string v0, "Nesting problem"

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.util.json.JSONStringer.Scope (info.flowersoft.theotown.util.json.JSONStringer$Scope)
.class final enum Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;
.super Ljava/lang/Enum;
.source "JSONStringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/json/JSONStringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

.field public static final enum DANGLING_KEY:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

.field public static final enum EMPTY_ARRAY:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

.field public static final enum EMPTY_OBJECT:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

.field public static final enum NONEMPTY_ARRAY:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

.field public static final enum NONEMPTY_OBJECT:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

.field public static final enum NULL:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;


# direct methods
.method public static synthetic $values()[Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;
    .registers 6

    .line 66
    sget-object v0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->EMPTY_ARRAY:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    sget-object v1, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->NONEMPTY_ARRAY:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    sget-object v2, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->EMPTY_OBJECT:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    sget-object v3, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->DANGLING_KEY:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    sget-object v4, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->NONEMPTY_OBJECT:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    sget-object v5, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->NULL:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    filled-new-array/range {v0 .. v5}, [Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 71
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    const-string v1, "EMPTY_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->EMPTY_ARRAY:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    .line 76
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    const-string v1, "NONEMPTY_ARRAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->NONEMPTY_ARRAY:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    .line 81
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    const-string v1, "EMPTY_OBJECT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->EMPTY_OBJECT:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    .line 86
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    const-string v1, "DANGLING_KEY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->DANGLING_KEY:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    .line 91
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    const-string v1, "NONEMPTY_OBJECT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->NONEMPTY_OBJECT:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    .line 96
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    const-string v1, "NULL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->NULL:Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    .line 66
    invoke-static {}, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->$values()[Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->$VALUES:[Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 66
    const-class v0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    return-object p0
.end method

.method public static values()[Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;
    .registers 1

    .line 66
    sget-object v0, Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->$VALUES:[Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    invoke-virtual {v0}, [Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/util/json/JSONStringer$Scope;

    return-object v0
.end method
