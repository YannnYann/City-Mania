###### Class vm2.ast.Visitor (vm2.ast.Visitor)
.class public abstract Lvm2/ast/Visitor;
.super Ljava/lang/Object;
.source "Visitor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public visit(Lvm2/ast/Block;)V
    .registers 5

    .line 31
    iget-object v0, p1, Lvm2/ast/Block;->scope:Lvm2/ast/NameScope;

    invoke-virtual {p0, v0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/NameScope;)V

    .line 32
    iget-object v0, p1, Lvm2/ast/Block;->stats:Ljava/util/List;

    if-eqz v0, :cond_1e

    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1e

    .line 34
    iget-object v2, p1, Lvm2/ast/Block;->stats:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvm2/ast/Stat;

    invoke-virtual {v2, p0}, Lvm2/ast/Stat;->accept(Lvm2/ast/Visitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1e
    return-void
.end method

.method public visit(Lvm2/ast/Chunk;)V
    .registers 2

    .line 28
    iget-object p1, p1, Lvm2/ast/Chunk;->block:Lvm2/ast/Block;

    invoke-virtual {p1, p0}, Lvm2/ast/Block;->accept(Lvm2/ast/Visitor;)V

    return-void
.end method

.method public visit(Lvm2/ast/Exp$AnonFuncDef;)V
    .registers 2

    .line 109
    iget-object p1, p1, Lvm2/ast/Exp$AnonFuncDef;->body:Lvm2/ast/FuncBody;

    invoke-virtual {p1, p0}, Lvm2/ast/FuncBody;->accept(Lvm2/ast/Visitor;)V

    return-void
.end method

.method public visit(Lvm2/ast/Exp$BinopExp;)V
    .registers 3

    .line 112
    iget-object v0, p1, Lvm2/ast/Exp$BinopExp;->lhs:Lvm2/ast/Exp;

    invoke-virtual {v0, p0}, Lvm2/ast/Exp;->accept(Lvm2/ast/Visitor;)V

    .line 113
    iget-object p1, p1, Lvm2/ast/Exp$BinopExp;->rhs:Lvm2/ast/Exp;

    invoke-virtual {p1, p0}, Lvm2/ast/Exp;->accept(Lvm2/ast/Visitor;)V

    return-void
.end method

.method public visit(Lvm2/ast/Exp$Constant;)V
    .registers 2

    .line 0
    return-void
.end method

.method public visit(Lvm2/ast/Exp$FieldExp;)V
    .registers 3

    .line 118
    iget-object v0, p1, Lvm2/ast/Exp$FieldExp;->lhs:Lvm2/ast/Exp$PrimaryExp;

    invoke-virtual {v0, p0}, Lvm2/ast/Exp;->accept(Lvm2/ast/Visitor;)V

    .line 119
    iget-object p1, p1, Lvm2/ast/Exp$FieldExp;->name:Lvm2/ast/Name;

    invoke-virtual {p0, p1}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Name;)V

    return-void
.end method

.method public visit(Lvm2/ast/Exp$FuncCall;)V
    .registers 3

    .line 122
    iget-object v0, p1, Lvm2/ast/Exp$FuncCall;->lhs:Lvm2/ast/Exp$PrimaryExp;

    invoke-virtual {v0, p0}, Lvm2/ast/Exp;->accept(Lvm2/ast/Visitor;)V

    .line 123
    iget-object p1, p1, Lvm2/ast/Exp$FuncCall;->args:Lvm2/ast/FuncArgs;

    invoke-virtual {p1, p0}, Lvm2/ast/FuncArgs;->accept(Lvm2/ast/Visitor;)V

    return-void
.end method

.method public visit(Lvm2/ast/Exp$IndexExp;)V
    .registers 3

    .line 126
    iget-object v0, p1, Lvm2/ast/Exp$IndexExp;->lhs:Lvm2/ast/Exp$PrimaryExp;

    invoke-virtual {v0, p0}, Lvm2/ast/Exp;->accept(Lvm2/ast/Visitor;)V

    .line 127
    iget-object p1, p1, Lvm2/ast/Exp$IndexExp;->exp:Lvm2/ast/Exp;

    invoke-virtual {p1, p0}, Lvm2/ast/Exp;->accept(Lvm2/ast/Visitor;)V

    return-void
.end method

.method public visit(Lvm2/ast/Exp$MethodCall;)V
    .registers 3

    .line 130
    iget-object v0, p1, Lvm2/ast/Exp$FuncCall;->lhs:Lvm2/ast/Exp$PrimaryExp;

    invoke-virtual {v0, p0}, Lvm2/ast/Exp;->accept(Lvm2/ast/Visitor;)V

    .line 131
    iget-object v0, p1, Lvm2/ast/Exp$MethodCall;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lvm2/ast/Visitor;->visit(Ljava/lang/String;)V

    .line 132
    iget-object p1, p1, Lvm2/ast/Exp$FuncCall;->args:Lvm2/ast/FuncArgs;

    invoke-virtual {p1, p0}, Lvm2/ast/FuncArgs;->accept(Lvm2/ast/Visitor;)V

    return-void
.end method

.method public visit(Lvm2/ast/Exp$NameExp;)V
    .registers 2

    .line 135
    iget-object p1, p1, Lvm2/ast/Exp$NameExp;->name:Lvm2/ast/Name;

    invoke-virtual {p0, p1}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Name;)V

    return-void
.end method

.method public visit(Lvm2/ast/Exp$ParensExp;)V
    .registers 2

    .line 138
    iget-object p1, p1, Lvm2/ast/Exp$ParensExp;->exp:Lvm2/ast/Exp;

    invoke-virtual {p1, p0}, Lvm2/ast/Exp;->accept(Lvm2/ast/Visitor;)V

    return-void
.end method

.method public visit(Lvm2/ast/Exp$UnopExp;)V
    .registers 2

    .line 141
    iget-object p1, p1, Lvm2/ast/Exp$UnopExp;->rhs:Lvm2/ast/Exp;

    invoke-virtual {p1, p0}, Lvm2/ast/Exp;->accept(Lvm2/ast/Visitor;)V

    return-void
.end method

.method public visit(Lvm2/ast/Exp$VarargsExp;)V
    .registers 2

    .line 0
    return-void
.end method

.method public visit(Lvm2/ast/FuncArgs;)V
    .registers 2

    .line 99
    iget-object p1, p1, Lvm2/ast/FuncArgs;->exps:Ljava/util/List;

    invoke-virtual {p0, p1}, Lvm2/ast/Visitor;->visitExps(Ljava/util/List;)V

    return-void
.end method

.method public visit(Lvm2/ast/FuncBody;)V
    .registers 3

    .line 94
    iget-object v0, p1, Lvm2/ast/FuncBody;->scope:Lvm2/ast/NameScope;

    invoke-virtual {p0, v0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/NameScope;)V

    .line 95
    iget-object v0, p1, Lvm2/ast/FuncBody;->parlist:Lvm2/ast/ParList;

    invoke-virtual {v0, p0}, Lvm2/ast/ParList;->accept(Lvm2/ast/Visitor;)V

    .line 96
    iget-object p1, p1, Lvm2/ast/FuncBody;->block:Lvm2/ast/Block;

    invoke-virtual {p1, p0}, Lvm2/ast/Block;->accept(Lvm2/ast/Visitor;)V

    return-void
.end method

.method public visit(Lvm2/ast/Name;)V
    .registers 2

    .line 0
    return-void
.end method

.method public visit(Lvm2/ast/NameScope;)V
    .registers 2

    .line 0
    return-void
.end method

.method public visit(Lvm2/ast/ParList;)V
    .registers 2

    .line 146
    iget-object p1, p1, Lvm2/ast/ParList;->names:Ljava/util/List;

    invoke-virtual {p0, p1}, Lvm2/ast/Visitor;->visitNames(Ljava/util/List;)V

    return-void
.end method

.method public visit(Lvm2/ast/Stat$Assign;)V
    .registers 3

    .line 37
    iget-object v0, p1, Lvm2/ast/Stat$Assign;->vars:Ljava/util/List;

    invoke-virtual {p0, v0}, Lvm2/ast/Visitor;->visitVars(Ljava/util/List;)V

    .line 38
    iget-object p1, p1, Lvm2/ast/Stat$Assign;->exps:Ljava/util/List;

    invoke-virtual {p0, p1}, Lvm2/ast/Visitor;->visitExps(Ljava/util/List;)V

    return-void
.end method

.method public visit(Lvm2/ast/Stat$Break;)V
    .registers 2

    .line 0
    return-void
.end method

.method public visit(Lvm2/ast/Stat$FuncCallStat;)V
    .registers 2

    .line 43
    iget-object p1, p1, Lvm2/ast/Stat$FuncCallStat;->funccall:Lvm2/ast/Exp$FuncCall;

    invoke-virtual {p1, p0}, Lvm2/ast/Exp$FuncCall;->accept(Lvm2/ast/Visitor;)V

    return-void
.end method

.method public visit(Lvm2/ast/Stat$FuncDef;)V
    .registers 2

    .line 46
    iget-object p1, p1, Lvm2/ast/Stat$FuncDef;->body:Lvm2/ast/FuncBody;

    invoke-virtual {p1, p0}, Lvm2/ast/FuncBody;->accept(Lvm2/ast/Visitor;)V

    return-void
.end method

.method public visit(Lvm2/ast/Stat$GenericFor;)V
    .registers 3

    .line 49
    iget-object v0, p1, Lvm2/ast/Stat$GenericFor;->scope:Lvm2/ast/NameScope;

    invoke-virtual {p0, v0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/NameScope;)V

    .line 50
    iget-object v0, p1, Lvm2/ast/Stat$GenericFor;->names:Ljava/util/List;

    invoke-virtual {p0, v0}, Lvm2/ast/Visitor;->visitNames(Ljava/util/List;)V

    .line 51
    iget-object v0, p1, Lvm2/ast/Stat$GenericFor;->exps:Ljava/util/List;

    invoke-virtual {p0, v0}, Lvm2/ast/Visitor;->visitExps(Ljava/util/List;)V

    .line 52
    iget-object p1, p1, Lvm2/ast/Stat$GenericFor;->block:Lvm2/ast/Block;

    invoke-virtual {p1, p0}, Lvm2/ast/Block;->accept(Lvm2/ast/Visitor;)V

    return-void
.end method

.method public visit(Lvm2/ast/Stat$Goto;)V
    .registers 2

    .line 0
    return-void
.end method

.method public visit(Lvm2/ast/Stat$IfThenElse;)V
    .registers 5

    .line 55
    iget-object v0, p1, Lvm2/ast/Stat$IfThenElse;->ifexp:Lvm2/ast/Exp;

    invoke-virtual {v0, p0}, Lvm2/ast/Exp;->accept(Lvm2/ast/Visitor;)V

    .line 56
    iget-object v0, p1, Lvm2/ast/Stat$IfThenElse;->ifblock:Lvm2/ast/Block;

    invoke-virtual {v0, p0}, Lvm2/ast/Block;->accept(Lvm2/ast/Visitor;)V

    .line 57
    iget-object v0, p1, Lvm2/ast/Stat$IfThenElse;->elseifblocks:Ljava/util/List;

    if-eqz v0, :cond_2e

    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_2e

    .line 59
    iget-object v2, p1, Lvm2/ast/Stat$IfThenElse;->elseifexps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvm2/ast/Exp;

    invoke-virtual {v2, p0}, Lvm2/ast/Exp;->accept(Lvm2/ast/Visitor;)V

    .line 60
    iget-object v2, p1, Lvm2/ast/Stat$IfThenElse;->elseifblocks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvm2/ast/Block;

    invoke-virtual {v2, p0}, Lvm2/ast/Block;->accept(Lvm2/ast/Visitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 62
    :cond_2e
    iget-object p1, p1, Lvm2/ast/Stat$IfThenElse;->elseblock:Lvm2/ast/Block;

    if-eqz p1, :cond_35

    .line 63
    invoke-virtual {p0, p1}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Block;)V

    :cond_35
    return-void
.end method

.method public visit(Lvm2/ast/Stat$Label;)V
    .registers 2

    .line 0
    return-void
.end method

.method public visit(Lvm2/ast/Stat$LocalAssign;)V
    .registers 3

    .line 66
    iget-object v0, p1, Lvm2/ast/Stat$LocalAssign;->names:Ljava/util/List;

    invoke-virtual {p0, v0}, Lvm2/ast/Visitor;->visitNames(Ljava/util/List;)V

    .line 67
    iget-object p1, p1, Lvm2/ast/Stat$LocalAssign;->values:Ljava/util/List;

    invoke-virtual {p0, p1}, Lvm2/ast/Visitor;->visitExps(Ljava/util/List;)V

    return-void
.end method

.method public visit(Lvm2/ast/Stat$LocalFuncDef;)V
    .registers 3

    .line 70
    iget-object v0, p1, Lvm2/ast/Stat$LocalFuncDef;->name:Lvm2/ast/Name;

    invoke-virtual {p0, v0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Name;)V

    .line 71
    iget-object p1, p1, Lvm2/ast/Stat$LocalFuncDef;->body:Lvm2/ast/FuncBody;

    invoke-virtual {p1, p0}, Lvm2/ast/FuncBody;->accept(Lvm2/ast/Visitor;)V

    return-void
.end method

.method public visit(Lvm2/ast/Stat$NumericFor;)V
    .registers 3

    .line 74
    iget-object v0, p1, Lvm2/ast/Stat$NumericFor;->scope:Lvm2/ast/NameScope;

    invoke-virtual {p0, v0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/NameScope;)V

    .line 75
    iget-object v0, p1, Lvm2/ast/Stat$NumericFor;->name:Lvm2/ast/Name;

    invoke-virtual {p0, v0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Name;)V

    .line 76
    iget-object v0, p1, Lvm2/ast/Stat$NumericFor;->initial:Lvm2/ast/Exp;

    invoke-virtual {v0, p0}, Lvm2/ast/Exp;->accept(Lvm2/ast/Visitor;)V

    .line 77
    iget-object v0, p1, Lvm2/ast/Stat$NumericFor;->limit:Lvm2/ast/Exp;

    invoke-virtual {v0, p0}, Lvm2/ast/Exp;->accept(Lvm2/ast/Visitor;)V

    .line 78
    iget-object v0, p1, Lvm2/ast/Stat$NumericFor;->step:Lvm2/ast/Exp;

    if-eqz v0, :cond_1b

    .line 79
    invoke-virtual {v0, p0}, Lvm2/ast/Exp;->accept(Lvm2/ast/Visitor;)V

    .line 80
    :cond_1b
    iget-object p1, p1, Lvm2/ast/Stat$NumericFor;->block:Lvm2/ast/Block;

    invoke-virtual {p1, p0}, Lvm2/ast/Block;->accept(Lvm2/ast/Visitor;)V

    return-void
.end method

.method public visit(Lvm2/ast/Stat$RepeatUntil;)V
    .registers 3

    .line 83
    iget-object v0, p1, Lvm2/ast/Stat$RepeatUntil;->block:Lvm2/ast/Block;

    invoke-virtual {v0, p0}, Lvm2/ast/Block;->accept(Lvm2/ast/Visitor;)V

    .line 84
    iget-object p1, p1, Lvm2/ast/Stat$RepeatUntil;->exp:Lvm2/ast/Exp;

    invoke-virtual {p1, p0}, Lvm2/ast/Exp;->accept(Lvm2/ast/Visitor;)V

    return-void
.end method

.method public visit(Lvm2/ast/Stat$Return;)V
    .registers 2

    .line 87
    iget-object p1, p1, Lvm2/ast/Stat$Return;->values:Ljava/util/List;

    invoke-virtual {p0, p1}, Lvm2/ast/Visitor;->visitExps(Ljava/util/List;)V

    return-void
.end method

.method public visit(Lvm2/ast/Stat$WhileDo;)V
    .registers 3

    .line 90
    iget-object v0, p1, Lvm2/ast/Stat$WhileDo;->exp:Lvm2/ast/Exp;

    invoke-virtual {v0, p0}, Lvm2/ast/Exp;->accept(Lvm2/ast/Visitor;)V

    .line 91
    iget-object p1, p1, Lvm2/ast/Stat$WhileDo;->block:Lvm2/ast/Block;

    invoke-virtual {p1, p0}, Lvm2/ast/Block;->accept(Lvm2/ast/Visitor;)V

    return-void
.end method

.method public visit(Lvm2/ast/TableConstructor;)V
    .registers 5

    .line 149
    iget-object v0, p1, Lvm2/ast/TableConstructor;->fields:Ljava/util/List;

    if-eqz v0, :cond_19

    .line 150
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    .line 151
    iget-object v2, p1, Lvm2/ast/TableConstructor;->fields:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvm2/ast/TableField;

    invoke-virtual {v2, p0}, Lvm2/ast/TableField;->accept(Lvm2/ast/Visitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method public visit(Lvm2/ast/TableField;)V
    .registers 3

    .line 102
    iget-object v0, p1, Lvm2/ast/TableField;->name:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 103
    invoke-virtual {p0, v0}, Lvm2/ast/Visitor;->visit(Ljava/lang/String;)V

    .line 104
    :cond_7
    iget-object v0, p1, Lvm2/ast/TableField;->index:Lvm2/ast/Exp;

    if-eqz v0, :cond_e

    .line 105
    invoke-virtual {v0, p0}, Lvm2/ast/Exp;->accept(Lvm2/ast/Visitor;)V

    .line 106
    :cond_e
    iget-object p1, p1, Lvm2/ast/TableField;->rhs:Lvm2/ast/Exp;

    invoke-virtual {p1, p0}, Lvm2/ast/Exp;->accept(Lvm2/ast/Visitor;)V

    return-void
.end method

.method public visitExps(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvm2/ast/Exp;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_15

    .line 160
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    .line 161
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvm2/ast/Exp;

    invoke-virtual {v2, p0}, Lvm2/ast/Exp;->accept(Lvm2/ast/Visitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method

.method public visitNames(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvm2/ast/Name;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_15

    .line 165
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    .line 166
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvm2/ast/Name;

    invoke-virtual {p0, v2}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Name;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method

.method public visitVars(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvm2/ast/Exp$VarExp;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_15

    .line 155
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    .line 156
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvm2/ast/Exp$VarExp;

    invoke-virtual {v2, p0}, Lvm2/ast/Exp;->accept(Lvm2/ast/Visitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method
