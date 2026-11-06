###### Class com.explorestack.protobuf.RepeatedFieldBuilderV3 (com.explorestack.protobuf.RepeatedFieldBuilderV3)
.class public Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
.super Ljava/lang/Object;
.source "RepeatedFieldBuilderV3.java"

# interfaces
.implements Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;,
        Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$BuilderExternalList;,
        Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageExternalList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/explorestack/protobuf/AbstractMessage;",
        "BType:",
        "Lcom/explorestack/protobuf/AbstractMessage$Builder;",
        "IType::",
        "Lcom/explorestack/protobuf/MessageOrBuilder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;"
    }
.end annotation


# instance fields
.field public builders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "TMType;TBType;TIType;>;>;"
        }
    .end annotation
.end field

.field public externalBuilderList:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$BuilderExternalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$BuilderExternalList<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field

.field public externalMessageList:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageExternalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageExternalList<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field

.field public externalMessageOrBuilderList:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field

.field public isClean:Z

.field public isMessagesListMutable:Z

.field public messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TMType;>;"
        }
    .end annotation
.end field

.field public parent:Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;


# direct methods
.method public constructor <init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TMType;>;Z",
            "Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;",
            "Z)V"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    .line 132
    iput-boolean p2, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isMessagesListMutable:Z

    .line 133
    iput-object p3, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->parent:Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;

    .line 134
    iput-boolean p4, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isClean:Z

    return-void
.end method


# virtual methods
.method public addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TMType;>;)",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 342
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/AbstractMessage;

    .line 343
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 348
    :cond_14
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_27

    .line 349
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 350
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    return-object p0

    .line 353
    :cond_22
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_28

    :cond_27
    const/4 v0, -0x1

    .line 355
    :goto_28
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->ensureMutableMessageList()V

    if-ltz v0, :cond_3e

    .line 357
    iget-object v1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_3e

    .line 358
    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 361
    :cond_3e
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/AbstractMessage;

    .line 362
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_42

    .line 365
    :cond_52
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->onChanged()V

    .line 366
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->incrementModCounts()V

    return-object p0
.end method

.method public addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITMType;)TBType;"
        }
    .end annotation

    .line 397
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->ensureMutableMessageList()V

    .line 398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->ensureBuilders()V

    .line 399
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-boolean v1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isClean:Z

    invoke-direct {v0, p2, p0, v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 401
    iget-object p2, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 402
    iget-object p2, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->builders:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 403
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->onChanged()V

    .line 404
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->incrementModCounts()V

    .line 405
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)TBType;"
        }
    .end annotation

    .line 377
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->ensureMutableMessageList()V

    .line 378
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->ensureBuilders()V

    .line 379
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-boolean v1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isClean:Z

    invoke-direct {v0, p1, p0, v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 381
    iget-object p1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object p1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->builders:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->onChanged()V

    .line 384
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->incrementModCounts()V

    .line 385
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITMType;)",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 322
    invoke-static {p2}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->ensureMutableMessageList()V

    .line 324
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 325
    iget-object p2, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->builders:Ljava/util/List;

    if-eqz p2, :cond_13

    const/4 v0, 0x0

    .line 326
    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 328
    :cond_13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->onChanged()V

    .line 329
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->incrementModCounts()V

    return-object p0
.end method

.method public addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 301
    invoke-static {p1}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->ensureMutableMessageList()V

    .line 303
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object p1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->builders:Ljava/util/List;

    if-eqz p1, :cond_13

    const/4 v0, 0x0

    .line 305
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->onChanged()V

    .line 308
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->incrementModCounts()V

    return-object p0
.end method

.method public build()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TMType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 451
    iput-boolean v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isClean:Z

    .line 453
    iget-boolean v1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isMessagesListMutable:Z

    if-nez v1, :cond_e

    iget-object v2, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->builders:Ljava/util/List;

    if-nez v2, :cond_e

    .line 455
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    return-object v0

    :cond_e
    const/4 v2, 0x0

    if-nez v1, :cond_39

    move v1, v2

    .line 462
    :goto_12
    iget-object v3, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_36

    .line 463
    iget-object v3, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/Message;

    .line 464
    iget-object v4, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->builders:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v4, :cond_33

    .line 466
    invoke-virtual {v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v4

    if-eq v4, v3, :cond_33

    goto :goto_39

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 474
    :cond_36
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    return-object v0

    .line 479
    :cond_39
    :goto_39
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->ensureMutableMessageList()V

    move v1, v2

    .line 480
    :goto_3d
    iget-object v3, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_51

    .line 481
    iget-object v3, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(IZ)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 486
    :cond_51
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    .line 487
    iput-boolean v2, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isMessagesListMutable:Z

    return-object v0
.end method

.method public clear()V
    .registers 3

    .line 429
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    const/4 v0, 0x0

    .line 430
    iput-boolean v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isMessagesListMutable:Z

    .line 431
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->builders:Ljava/util/List;

    if-eqz v0, :cond_24

    .line 432
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v1, :cond_f

    .line 434
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->dispose()V

    goto :goto_f

    :cond_21
    const/4 v0, 0x0

    .line 437
    iput-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->builders:Ljava/util/List;

    .line 439
    :cond_24
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->onChanged()V

    .line 440
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->incrementModCounts()V

    return-void
.end method

.method public dispose()V
    .registers 2

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->parent:Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;

    return-void
.end method

.method public final ensureBuilders()V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->builders:Ljava/util/List;

    if-nez v0, :cond_23

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->builders:Ljava/util/List;

    const/4 v0, 0x0

    .line 160
    :goto_12
    iget-object v1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 161
    iget-object v1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->builders:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_23
    return-void
.end method

.method public final ensureMutableMessageList()V
    .registers 3

    .line 147
    iget-boolean v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isMessagesListMutable:Z

    if-nez v0, :cond_10

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isMessagesListMutable:Z

    :cond_10
    return-void
.end method

.method public getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBType;"
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->ensureBuilders()V

    .line 235
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->builders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_22

    .line 237
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/AbstractMessage;

    .line 238
    new-instance v1, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-boolean v2, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isClean:Z

    invoke-direct {v1, v0, p0, v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 239
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->builders:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 241
    :cond_22
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public getBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TBType;>;"
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->externalBuilderList:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$BuilderExternalList;

    if-nez v0, :cond_b

    .line 512
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$BuilderExternalList;

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$BuilderExternalList;-><init>(Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->externalBuilderList:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$BuilderExternalList;

    .line 514
    :cond_b
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->externalBuilderList:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$BuilderExternalList;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TMType;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(IZ)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    return-object p1
.end method

.method public final getMessage(IZ)Lcom/explorestack/protobuf/AbstractMessage;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TMType;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->builders:Ljava/util/List;

    if-nez v0, :cond_d

    .line 211
    iget-object p2, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AbstractMessage;

    return-object p1

    .line 214
    :cond_d
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1e

    .line 219
    iget-object p2, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AbstractMessage;

    return-object p1

    :cond_1e
    if-eqz p2, :cond_25

    .line 222
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    return-object p1

    :cond_25
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    return-object p1
.end method

.method public getMessageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TMType;>;"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->externalMessageList:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageExternalList;

    if-nez v0, :cond_b

    .line 499
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageExternalList;

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageExternalList;-><init>(Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->externalMessageList:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageExternalList;

    .line 501
    :cond_b
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->externalMessageList:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageExternalList;

    return-object v0
.end method

.method public getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TIType;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->builders:Ljava/util/List;

    if-nez v0, :cond_d

    .line 257
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/MessageOrBuilder;

    return-object p1

    .line 260
    :cond_d
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1e

    .line 265
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/MessageOrBuilder;

    return-object p1

    .line 268
    :cond_1e
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public getMessageOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TIType;>;"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->externalMessageOrBuilderList:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;

    if-nez v0, :cond_b

    .line 525
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;-><init>(Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->externalMessageOrBuilderList:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;

    .line 527
    :cond_b
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->externalMessageOrBuilderList:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;

    return-object v0
.end method

.method public final incrementModCounts()V
    .registers 2

    .line 553
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->externalMessageList:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageExternalList;

    if-eqz v0, :cond_7

    .line 554
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageExternalList;->incrementModCount()V

    .line 556
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->externalBuilderList:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$BuilderExternalList;

    if-eqz v0, :cond_e

    .line 557
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$BuilderExternalList;->incrementModCount()V

    .line 559
    :cond_e
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->externalMessageOrBuilderList:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;

    if-eqz v0, :cond_15

    .line 560
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;->incrementModCount()V

    :cond_15
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public markDirty()V
    .registers 1

    .line 545
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->onChanged()V

    return-void
.end method

.method public final onChanged()V
    .registers 2

    .line 535
    iget-boolean v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isClean:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->parent:Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;

    if-eqz v0, :cond_e

    .line 536
    invoke-interface {v0}, Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;->markDirty()V

    const/4 v0, 0x0

    .line 539
    iput-boolean v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isClean:Z

    :cond_e
    return-void
.end method

.method public remove(I)V
    .registers 3

    .line 415
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->ensureMutableMessageList()V

    .line 416
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 417
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->builders:Ljava/util/List;

    if-eqz v0, :cond_17

    .line 418
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz p1, :cond_17

    .line 420
    invoke-virtual {p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->dispose()V

    .line 423
    :cond_17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->onChanged()V

    .line 424
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->incrementModCounts()V

    return-void
.end method

.method public setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITMType;)",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 280
    invoke-static {p2}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->ensureMutableMessageList()V

    .line 282
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->messages:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object p2, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->builders:Ljava/util/List;

    if-eqz p2, :cond_1b

    const/4 v0, 0x0

    .line 284
    invoke-interface {p2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz p1, :cond_1b

    .line 286
    invoke-virtual {p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->dispose()V

    .line 289
    :cond_1b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->onChanged()V

    .line 290
    invoke-virtual {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->incrementModCounts()V

    return-object p0
.end method

###### Class com.explorestack.protobuf.RepeatedFieldBuilderV3.BuilderExternalList (com.explorestack.protobuf.RepeatedFieldBuilderV3$BuilderExternalList)
.class public Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$BuilderExternalList;
.super Ljava/util/AbstractList;
.source "RepeatedFieldBuilderV3.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderExternalList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/explorestack/protobuf/AbstractMessage;",
        "BType:",
        "Lcom/explorestack/protobuf/AbstractMessage$Builder;",
        "IType::",
        "Lcom/explorestack/protobuf/MessageOrBuilder;",
        ">",
        "Ljava/util/AbstractList<",
        "TBType;>;",
        "Ljava/util/List<",
        "TBType;>;"
    }
.end annotation


# instance fields
.field public builder:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "TMType;TBType;TIType;>;)V"
        }
    .end annotation

    .line 613
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 614
    iput-object p1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$BuilderExternalList;->builder:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-void
.end method


# virtual methods
.method public get(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBType;"
        }
    .end annotation

    .line 624
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$BuilderExternalList;->builder:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 605
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$BuilderExternalList;->get(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public incrementModCount()V
    .registers 2

    .line 628
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public size()I
    .registers 2

    .line 619
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$BuilderExternalList;->builder:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

###### Class com.explorestack.protobuf.RepeatedFieldBuilderV3.MessageExternalList (com.explorestack.protobuf.RepeatedFieldBuilderV3$MessageExternalList)
.class public Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageExternalList;
.super Ljava/util/AbstractList;
.source "RepeatedFieldBuilderV3.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageExternalList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/explorestack/protobuf/AbstractMessage;",
        "BType:",
        "Lcom/explorestack/protobuf/AbstractMessage$Builder;",
        "IType::",
        "Lcom/explorestack/protobuf/MessageOrBuilder;",
        ">",
        "Ljava/util/AbstractList<",
        "TMType;>;",
        "Ljava/util/List<",
        "TMType;>;"
    }
.end annotation


# instance fields
.field public builder:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "TMType;TBType;TIType;>;)V"
        }
    .end annotation

    .line 579
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 580
    iput-object p1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageExternalList;->builder:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-void
.end method


# virtual methods
.method public get(I)Lcom/explorestack/protobuf/AbstractMessage;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TMType;"
        }
    .end annotation

    .line 590
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageExternalList;->builder:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 571
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageExternalList;->get(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    return-object p1
.end method

.method public incrementModCount()V
    .registers 2

    .line 594
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public size()I
    .registers 2

    .line 585
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageExternalList;->builder:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

###### Class com.explorestack.protobuf.RepeatedFieldBuilderV3.MessageOrBuilderExternalList (com.explorestack.protobuf.RepeatedFieldBuilderV3$MessageOrBuilderExternalList)
.class public Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;
.super Ljava/util/AbstractList;
.source "RepeatedFieldBuilderV3.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageOrBuilderExternalList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/explorestack/protobuf/AbstractMessage;",
        "BType:",
        "Lcom/explorestack/protobuf/AbstractMessage$Builder;",
        "IType::",
        "Lcom/explorestack/protobuf/MessageOrBuilder;",
        ">",
        "Ljava/util/AbstractList<",
        "TIType;>;",
        "Ljava/util/List<",
        "TIType;>;"
    }
.end annotation


# instance fields
.field public builder:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "TMType;TBType;TIType;>;)V"
        }
    .end annotation

    .line 647
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 648
    iput-object p1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;->builder:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-void
.end method


# virtual methods
.method public get(I)Lcom/explorestack/protobuf/MessageOrBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TIType;"
        }
    .end annotation

    .line 658
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;->builder:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 639
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;->get(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public incrementModCount()V
    .registers 2

    .line 662
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public size()I
    .registers 2

    .line 653
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;->builder:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method
