###### Class info.flowersoft.theotown.util.ListSampler (info.flowersoft.theotown.util.ListSampler)
.class public Linfo/flowersoft/theotown/util/ListSampler;
.super Ljava/lang/Object;
.source "ListSampler.java"


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
.field public sampledList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Linfo/flowersoft/theotown/util/ListSampler;->sampledList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public sample(Ljava/util/Random;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Random;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 19
    :try_start_1
    iget-object v1, p0, Linfo/flowersoft/theotown/util/ListSampler;->sampledList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_14

    .line 21
    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    .line 22
    iget-object v1, p0, Linfo/flowersoft/theotown/util/ListSampler;->sampledList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_13} :catch_14

    return-object p1

    :catch_14
    :cond_14
    return-object v0
.end method
