###### Class io.blueflower.stapel2d.util.LazyGetter (io.blueflower.stapel2d.util.LazyGetter)
.class public Lio/blueflower/stapel2d/util/LazyGetter;
.super Ljava/lang/Object;
.source "LazyGetter.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public getter:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/util/Getter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Getter<",
            "+TT;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 17
    iput-object p1, p0, Lio/blueflower/stapel2d/util/LazyGetter;->getter:Lio/blueflower/stapel2d/util/Getter;

    return-void

    .line 16
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Getter might not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lio/blueflower/stapel2d/util/LazyGetter;->getter:Lio/blueflower/stapel2d/util/Getter;

    if-eqz v0, :cond_d

    .line 23
    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/blueflower/stapel2d/util/LazyGetter;->value:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lio/blueflower/stapel2d/util/LazyGetter;->getter:Lio/blueflower/stapel2d/util/Getter;

    .line 26
    :cond_d
    iget-object v0, p0, Lio/blueflower/stapel2d/util/LazyGetter;->value:Ljava/lang/Object;

    return-object v0
.end method
