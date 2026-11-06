###### Class info.flowersoft.theotown.util.UnionJoin (info.flowersoft.theotown.util.UnionJoin)
.class public Linfo/flowersoft/theotown/util/UnionJoin;
.super Ljava/lang/Object;
.source "UnionJoin.java"


# instance fields
.field public parent:Linfo/flowersoft/theotown/util/UnionJoin;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p0, p0, Linfo/flowersoft/theotown/util/UnionJoin;->parent:Linfo/flowersoft/theotown/util/UnionJoin;

    return-void
.end method


# virtual methods
.method public getRoot()Linfo/flowersoft/theotown/util/UnionJoin;
    .registers 4

    .line 12
    iget-object v0, p0, Linfo/flowersoft/theotown/util/UnionJoin;->parent:Linfo/flowersoft/theotown/util/UnionJoin;

    .line 13
    :goto_2
    iget-object v1, v0, Linfo/flowersoft/theotown/util/UnionJoin;->parent:Linfo/flowersoft/theotown/util/UnionJoin;

    if-eq v0, v1, :cond_8

    move-object v0, v1

    goto :goto_2

    :cond_8
    move-object v1, p0

    :goto_9
    if-eq v1, v0, :cond_11

    .line 17
    iget-object v2, v1, Linfo/flowersoft/theotown/util/UnionJoin;->parent:Linfo/flowersoft/theotown/util/UnionJoin;

    .line 18
    iput-object v0, v1, Linfo/flowersoft/theotown/util/UnionJoin;->parent:Linfo/flowersoft/theotown/util/UnionJoin;

    move-object v1, v2

    goto :goto_9

    :cond_11
    return-object v0
.end method

.method public join(Linfo/flowersoft/theotown/util/UnionJoin;)Linfo/flowersoft/theotown/util/UnionJoin;
    .registers 4

    .line 26
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/UnionJoin;->getRoot()Linfo/flowersoft/theotown/util/UnionJoin;

    move-result-object v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/UnionJoin;->getRoot()Linfo/flowersoft/theotown/util/UnionJoin;

    move-result-object v1

    if-eq v0, v1, :cond_14

    .line 27
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/UnionJoin;->getRoot()Linfo/flowersoft/theotown/util/UnionJoin;

    move-result-object p1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/UnionJoin;->getRoot()Linfo/flowersoft/theotown/util/UnionJoin;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/util/UnionJoin;->parent:Linfo/flowersoft/theotown/util/UnionJoin;

    .line 29
    :cond_14
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/UnionJoin;->getRoot()Linfo/flowersoft/theotown/util/UnionJoin;

    move-result-object p1

    return-object p1
.end method
