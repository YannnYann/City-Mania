###### Class io.blueflower.stapel2d.util.Builder (io.blueflower.stapel2d.util.Builder)
.class public abstract Lio/blueflower/stapel2d/util/Builder;
.super Ljava/lang/Object;
.source "Builder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final context:Ljava/lang/Object;
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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lio/blueflower/stapel2d/util/Builder;->context:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract build()V
.end method

.method public getBuilderContext()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lio/blueflower/stapel2d/util/Builder;->context:Ljava/lang/Object;

    return-object v0
.end method

.method public release()V
    .registers 1

    .line 0
    return-void
.end method
