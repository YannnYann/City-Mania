###### Class vm2.ast.FuncBody (vm2.ast.FuncBody)
.class public Lvm2/ast/FuncBody;
.super Lvm2/ast/SyntaxElement;
.source "FuncBody.java"


# instance fields
.field public block:Lvm2/ast/Block;

.field public parlist:Lvm2/ast/ParList;

.field public scope:Lvm2/ast/NameScope;


# direct methods
.method public constructor <init>(Lvm2/ast/ParList;Lvm2/ast/Block;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Lvm2/ast/SyntaxElement;-><init>()V

    if-eqz p1, :cond_6

    goto :goto_8

    .line 30
    :cond_6
    sget-object p1, Lvm2/ast/ParList;->EMPTY_PARLIST:Lvm2/ast/ParList;

    :goto_8
    iput-object p1, p0, Lvm2/ast/FuncBody;->parlist:Lvm2/ast/ParList;

    .line 31
    iput-object p2, p0, Lvm2/ast/FuncBody;->block:Lvm2/ast/Block;

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 34
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/FuncBody;)V

    return-void
.end method
