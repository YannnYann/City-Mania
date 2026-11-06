###### Class ads_mobile_sdk.gl1 (ads_mobile_sdk.gl1)
.class Lads_mobile_sdk/gl1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/gl1$b;,
        Lads_mobile_sdk/gl1$a;
    }
.end annotation


# instance fields
.field private final a:Lads_mobile_sdk/tw1;

.field private final b:Lads_mobile_sdk/er0;

.field private volatile c:Lads_mobile_sdk/du;

.field protected volatile d:Lads_mobile_sdk/tw1;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/tw1;)V
    .registers 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1a

    .line 72
    iput-object p1, p0, Lads_mobile_sdk/gl1;->d:Lads_mobile_sdk/tw1;

    .line 73
    invoke-interface {p1}, Lads_mobile_sdk/uw1;->getDefaultInstanceForType()Lads_mobile_sdk/tw1;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/gl1;->a:Lads_mobile_sdk/tw1;

    .line 74
    invoke-static {}, Lads_mobile_sdk/er0;->a()Lads_mobile_sdk/er0;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/gl1;->b:Lads_mobile_sdk/er0;

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lads_mobile_sdk/gl1;->c:Lads_mobile_sdk/du;

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lads_mobile_sdk/gl1;->e:Z

    return-void

    .line 77
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "message cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lads_mobile_sdk/gl1;->d:Lads_mobile_sdk/tw1;

    if-eqz v0, :cond_5

    return-void

    .line 208
    :cond_5
    monitor-enter p0

    .line 209
    :try_start_6
    iget-boolean v0, p0, Lads_mobile_sdk/gl1;->e:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_2b

    if-nez v0, :cond_48

    const/4 v0, 0x1

    .line 214
    :try_start_b
    iget-object v1, p0, Lads_mobile_sdk/gl1;->c:Lads_mobile_sdk/du;

    invoke-virtual {v1}, Lads_mobile_sdk/du;->g()Lads_mobile_sdk/my;

    move-result-object v1

    .line 215
    invoke-virtual {v1, v0}, Lads_mobile_sdk/my;->a(Z)V

    .line 221
    iget-object v2, p0, Lads_mobile_sdk/gl1;->b:Lads_mobile_sdk/er0;

    invoke-virtual {v2}, Lads_mobile_sdk/er0;->c()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 222
    iget-object v2, p0, Lads_mobile_sdk/gl1;->a:Lads_mobile_sdk/tw1;

    invoke-interface {v2}, Lads_mobile_sdk/tw1;->getParserForType()Lads_mobile_sdk/aj2;

    move-result-object v2

    iget-object v3, p0, Lads_mobile_sdk/gl1;->b:Lads_mobile_sdk/er0;

    invoke-interface {v2, v1, v3}, Lads_mobile_sdk/aj2;->a(Lads_mobile_sdk/my;Lads_mobile_sdk/er0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/tw1;

    goto :goto_3d

    :catchall_2b
    move-exception v0

    goto :goto_50

    :catch_2d
    move-exception v1

    goto :goto_45

    .line 223
    :cond_2f
    iget-object v2, p0, Lads_mobile_sdk/gl1;->a:Lads_mobile_sdk/tw1;

    invoke-interface {v2}, Lads_mobile_sdk/tw1;->getParserForType()Lads_mobile_sdk/aj2;

    move-result-object v2

    iget-object v3, p0, Lads_mobile_sdk/gl1;->b:Lads_mobile_sdk/er0;

    invoke-interface {v2, v1, v3}, Lads_mobile_sdk/aj2;->b(Lads_mobile_sdk/my;Lads_mobile_sdk/er0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/tw1;

    :goto_3d
    iput-object v2, p0, Lads_mobile_sdk/gl1;->d:Lads_mobile_sdk/tw1;

    const/4 v2, 0x0

    .line 224
    invoke-virtual {v1, v2}, Lads_mobile_sdk/my;->a(I)V
    :try_end_43
    .catch Lads_mobile_sdk/np1; {:try_start_b .. :try_end_43} :catch_2d
    .catchall {:try_start_b .. :try_end_43} :catchall_2b

    .line 229
    :try_start_43
    monitor-exit p0

    return-void

    .line 230
    :goto_45
    iput-boolean v0, p0, Lads_mobile_sdk/gl1;->e:Z

    .line 231
    throw v1

    .line 232
    :cond_48
    new-instance v0, Lads_mobile_sdk/np1;

    const-string v1, "Repeat access to corrupted lazy field"

    invoke-direct {v0, v1}, Lads_mobile_sdk/np1;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :goto_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_43 .. :try_end_51} :catchall_2b

    throw v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 274
    invoke-virtual {p0}, Lads_mobile_sdk/gl1;->c()I

    move-result v0

    invoke-static {v0}, Lads_mobile_sdk/oy;->d(I)I

    move-result v0

    return v0
.end method

.method public c()I
    .registers 2

    .line 257
    iget-object v0, p0, Lads_mobile_sdk/gl1;->c:Lads_mobile_sdk/du;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lads_mobile_sdk/gl1;->c:Lads_mobile_sdk/du;

    invoke-virtual {v0}, Lads_mobile_sdk/du;->size()I

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lads_mobile_sdk/gl1;->d:Lads_mobile_sdk/tw1;

    invoke-interface {v0}, Lads_mobile_sdk/tw1;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method public d()Lads_mobile_sdk/tw1;
    .registers 3

    .line 241
    :try_start_0
    invoke-direct {p0}, Lads_mobile_sdk/gl1;->b()V

    .line 242
    iget-object v0, p0, Lads_mobile_sdk/gl1;->d:Lads_mobile_sdk/tw1;
    :try_end_5
    .catch Lads_mobile_sdk/np1; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    .line 244
    iget-object v1, p0, Lads_mobile_sdk/gl1;->b:Lads_mobile_sdk/er0;

    invoke-virtual {v1}, Lads_mobile_sdk/er0;->c()Z

    move-result v1

    if-nez v1, :cond_12

    .line 249
    iget-object v0, p0, Lads_mobile_sdk/gl1;->a:Lads_mobile_sdk/tw1;

    return-object v0

    .line 250
    :cond_12
    new-instance v1, Lads_mobile_sdk/mp1;

    invoke-direct {v1, v0}, Lads_mobile_sdk/mp1;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    const/4 v0, 0x1

    if-ne p0, p1, :cond_8

    return v0

    .line 312
    :cond_8
    instance-of v1, p1, Lads_mobile_sdk/gl1;

    if-eqz v1, :cond_34

    .line 313
    check-cast p1, Lads_mobile_sdk/gl1;

    .line 314
    iget-object v1, p0, Lads_mobile_sdk/gl1;->c:Lads_mobile_sdk/du;

    if-eqz v1, :cond_27

    iget-object v1, p1, Lads_mobile_sdk/gl1;->c:Lads_mobile_sdk/du;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lads_mobile_sdk/gl1;->b:Lads_mobile_sdk/er0;

    iget-object v2, p1, Lads_mobile_sdk/gl1;->b:Lads_mobile_sdk/er0;

    if-ne v1, v2, :cond_27

    iget-object v1, p0, Lads_mobile_sdk/gl1;->c:Lads_mobile_sdk/du;

    iget-object v2, p1, Lads_mobile_sdk/gl1;->c:Lads_mobile_sdk/du;

    .line 317
    invoke-virtual {v1, v2}, Lads_mobile_sdk/du;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    return v0

    .line 320
    :cond_27
    invoke-virtual {p0}, Lads_mobile_sdk/gl1;->d()Lads_mobile_sdk/tw1;

    move-result-object v0

    invoke-virtual {p1}, Lads_mobile_sdk/gl1;->d()Lads_mobile_sdk/tw1;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 322
    :cond_34
    invoke-virtual {p0}, Lads_mobile_sdk/gl1;->d()Lads_mobile_sdk/tw1;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 297
    invoke-virtual {p0}, Lads_mobile_sdk/gl1;->d()Lads_mobile_sdk/tw1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 328
    invoke-virtual {p0}, Lads_mobile_sdk/gl1;->d()Lads_mobile_sdk/tw1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class ads_mobile_sdk.gl1.a (ads_mobile_sdk.gl1$a)
.class Lads_mobile_sdk/gl1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/gl1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lads_mobile_sdk/gl1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map$Entry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lads_mobile_sdk/gl1;",
            ">;)V"
        }
    .end annotation

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p1, p0, Lads_mobile_sdk/gl1$a;->a:Ljava/util/Map$Entry;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map$Entry;Lads_mobile_sdk/gl1-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lads_mobile_sdk/gl1$a;-><init>(Ljava/util/Map$Entry;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lads_mobile_sdk/gl1$a;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 350
    iget-object v0, p0, Lads_mobile_sdk/gl1$a;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/gl1;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 354
    :cond_c
    invoke-virtual {v0}, Lads_mobile_sdk/gl1;->d()Lads_mobile_sdk/tw1;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 363
    instance-of v0, p1, Lads_mobile_sdk/tw1;

    if-eqz v0, :cond_1b

    .line 369
    iget-object v0, p0, Lads_mobile_sdk/gl1$a;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/gl1;

    iget-object v0, v0, Lads_mobile_sdk/gl1;->d:Lads_mobile_sdk/tw1;

    .line 370
    iget-object v1, p0, Lads_mobile_sdk/gl1$a;->a:Ljava/util/Map$Entry;

    new-instance v2, Lads_mobile_sdk/gl1;

    check-cast p1, Lads_mobile_sdk/tw1;

    invoke-direct {v2, p1}, Lads_mobile_sdk/gl1;-><init>(Lads_mobile_sdk/tw1;)V

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 371
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Lazy field only supports MessageLite values."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class ads_mobile_sdk.gl1.b (ads_mobile_sdk.gl1$b)
.class Lads_mobile_sdk/gl1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/gl1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-object p1, p0, Lads_mobile_sdk/gl1$b;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lads_mobile_sdk/gl1$b;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 391
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lads_mobile_sdk/gl1;

    if-eqz v1, :cond_17

    .line 392
    new-instance v1, Lads_mobile_sdk/gl1$a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lads_mobile_sdk/gl1$a;-><init>(Ljava/util/Map$Entry;Lads_mobile_sdk/gl1-IA;)V

    return-object v1

    :cond_17
    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .line 384
    iget-object v0, p0, Lads_mobile_sdk/gl1$b;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 375
    invoke-virtual {p0}, Lads_mobile_sdk/gl1$b;->b()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 399
    iget-object v0, p0, Lads_mobile_sdk/gl1$b;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
