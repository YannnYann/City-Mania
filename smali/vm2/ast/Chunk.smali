###### Class vm2.ast.Chunk (vm2.ast.Chunk)
.class public Lvm2/ast/Chunk;
.super Lvm2/ast/SyntaxElement;
.source "Chunk.java"


# instance fields
.field public final block:Lvm2/ast/Block;


# direct methods
.method public constructor <init>(Lvm2/ast/Block;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Lvm2/ast/SyntaxElement;-><init>()V

    .line 28
    iput-object p1, p0, Lvm2/ast/Chunk;->block:Lvm2/ast/Block;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 32
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Chunk;)V

    return-void
.end method
