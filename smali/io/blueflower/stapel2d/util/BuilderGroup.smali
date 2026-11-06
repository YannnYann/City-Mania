###### Class io.blueflower.stapel2d.util.BuilderGroup (io.blueflower.stapel2d.util.BuilderGroup)
.class public final Lio/blueflower/stapel2d/util/BuilderGroup;
.super Lio/blueflower/stapel2d/util/Builder;
.source "BuilderGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/blueflower/stapel2d/util/Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public builders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/util/Builder<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/util/Builder;-><init>(Ljava/lang/Object;)V

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/blueflower/stapel2d/util/BuilderGroup;->builders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addBuilder(Lio/blueflower/stapel2d/util/Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Builder<",
            "TT;>;)V"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lio/blueflower/stapel2d/util/BuilderGroup;->builders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public build()V
    .registers 3

    .line 24
    iget-object v0, p0, Lio/blueflower/stapel2d/util/BuilderGroup;->builders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/util/Builder;

    .line 25
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/Builder;->build()V

    goto :goto_6

    .line 28
    :cond_16
    iget-object v0, p0, Lio/blueflower/stapel2d/util/BuilderGroup;->builders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/util/Builder;

    .line 29
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/Builder;->release()V

    goto :goto_1c

    :cond_2c
    return-void
.end method
