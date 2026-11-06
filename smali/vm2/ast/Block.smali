###### Class vm2.ast.Block (vm2.ast.Block)
.class public Lvm2/ast/Block;
.super Lvm2/ast/Stat;
.source "Block.java"


# instance fields
.field public scope:Lvm2/ast/NameScope;

.field public stats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvm2/ast/Stat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Lvm2/ast/Stat;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvm2/ast/Block;->stats:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 39
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Block;)V

    return-void
.end method

.method public add(Lvm2/ast/Stat;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 35
    :cond_3
    iget-object v0, p0, Lvm2/ast/Block;->stats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
