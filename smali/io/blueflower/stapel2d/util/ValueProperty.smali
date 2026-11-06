###### Class io.blueflower.stapel2d.util.ValueProperty (io.blueflower.stapel2d.util.ValueProperty)
.class public Lio/blueflower/stapel2d/util/ValueProperty;
.super Ljava/lang/Object;
.source "ValueProperty.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lio/blueflower/stapel2d/util/ValueProperty;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lio/blueflower/stapel2d/util/ValueProperty;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lio/blueflower/stapel2d/util/ValueProperty;->value:Ljava/lang/Object;

    return-void
.end method
