###### Class io.blueflower.stapel2d.util.Tuple (io.blueflower.stapel2d.util.Tuple)
.class public final Lio/blueflower/stapel2d/util/Tuple;
.super Ljava/lang/Object;
.source "Tuple.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/util/Tuple;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Tuple<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 18
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lio/blueflower/stapel2d/util/Tuple;->first:Ljava/lang/Object;

    .line 14
    iput-object p2, p0, Lio/blueflower/stapel2d/util/Tuple;->second:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clone()Lio/blueflower/stapel2d/util/Tuple;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/blueflower/stapel2d/util/Tuple<",
            "TA;TB;>;"
        }
    .end annotation

    .line 30
    new-instance v0, Lio/blueflower/stapel2d/util/Tuple;

    invoke-direct {v0, p0}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Lio/blueflower/stapel2d/util/Tuple;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Tuple;->clone()Lio/blueflower/stapel2d/util/Tuple;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lio/blueflower/stapel2d/util/Tuple;->first:Ljava/lang/Object;

    return-object v0
.end method

.method public getSecond()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lio/blueflower/stapel2d/util/Tuple;->second:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
