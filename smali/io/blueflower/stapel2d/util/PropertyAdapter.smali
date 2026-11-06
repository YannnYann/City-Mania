###### Class io.blueflower.stapel2d.util.PropertyAdapter (io.blueflower.stapel2d.util.PropertyAdapter)
.class public abstract Lio/blueflower/stapel2d/util/PropertyAdapter;
.super Ljava/lang/Object;
.source "PropertyAdapter.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public adaptee:Lio/blueflower/stapel2d/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Property<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/util/Property;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Property<",
            "TK;>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lio/blueflower/stapel2d/util/PropertyAdapter;->adaptee:Lio/blueflower/stapel2d/util/Property;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lio/blueflower/stapel2d/util/PropertyAdapter;->adaptee:Lio/blueflower/stapel2d/util/Property;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/PropertyAdapter;->toOuter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lio/blueflower/stapel2d/util/PropertyAdapter;->adaptee:Lio/blueflower/stapel2d/util/Property;

    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/PropertyAdapter;->toInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract toInner(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TK;"
        }
    .end annotation
.end method

.method public abstract toOuter(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method
