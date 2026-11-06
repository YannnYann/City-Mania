###### Class vm2.ast.NameResolver (vm2.ast.NameResolver)
.class public Lvm2/ast/NameResolver;
.super Lvm2/ast/Visitor;
.source "NameResolver.java"


# instance fields
.field private scope:Lvm2/ast/NameScope;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Lvm2/ast/Visitor;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lvm2/ast/NameResolver;->scope:Lvm2/ast/NameScope;

    return-void
.end method

.method private popScope()V
    .registers 2

    .line 29
    iget-object v0, p0, Lvm2/ast/NameResolver;->scope:Lvm2/ast/NameScope;

    iget-object v0, v0, Lvm2/ast/NameScope;->outerScope:Lvm2/ast/NameScope;

    iput-object v0, p0, Lvm2/ast/NameResolver;->scope:Lvm2/ast/NameScope;

    return-void
.end method

.method private pushScope()V
    .registers 3

    .line 26
    new-instance v0, Lvm2/ast/NameScope;

    iget-object v1, p0, Lvm2/ast/NameResolver;->scope:Lvm2/ast/NameScope;

    invoke-direct {v0, v1}, Lvm2/ast/NameScope;-><init>(Lvm2/ast/NameScope;)V

    iput-object v0, p0, Lvm2/ast/NameResolver;->scope:Lvm2/ast/NameScope;

    return-void
.end method


# virtual methods
.method public defineLocalVar(Lvm2/ast/Name;)V
    .registers 4

    .line 118
    iget-object v0, p0, Lvm2/ast/NameResolver;->scope:Lvm2/ast/NameScope;

    iget-object v1, p1, Lvm2/ast/Name;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvm2/ast/NameScope;->define(Ljava/lang/String;)Lvm2/ast/Variable;

    move-result-object v0

    iput-object v0, p1, Lvm2/ast/Name;->variable:Lvm2/ast/Variable;

    return-void
.end method

.method public defineLocalVars(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvm2/ast/Name;",
            ">;)V"
        }
    .end annotation

    .line 113
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    .line 114
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvm2/ast/Name;

    invoke-virtual {p0, v2}, Lvm2/ast/NameResolver;->defineLocalVar(Lvm2/ast/Name;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    return-void
.end method

.method public resolveNameReference(Lvm2/ast/Name;)Lvm2/ast/Variable;
    .registers 4

    .line 122
    iget-object v0, p0, Lvm2/ast/NameResolver;->scope:Lvm2/ast/NameScope;

    iget-object p1, p1, Lvm2/ast/Name;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lvm2/ast/NameScope;->find(Ljava/lang/String;)Lvm2/ast/Variable;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lvm2/ast/Variable;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lvm2/ast/NameResolver;->scope:Lvm2/ast/NameScope;

    iget v0, v0, Lvm2/ast/NameScope;->functionNestingCount:I

    iget-object v1, p1, Lvm2/ast/Variable;->definingScope:Lvm2/ast/NameScope;

    iget v1, v1, Lvm2/ast/NameScope;->functionNestingCount:I

    if-eq v0, v1, :cond_1b

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p1, Lvm2/ast/Variable;->isupvalue:Z

    :cond_1b
    return-object p1
.end method

.method public visit(Lvm2/ast/Block;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Lvm2/ast/NameResolver;->pushScope()V

    .line 37
    iget-object v0, p0, Lvm2/ast/NameResolver;->scope:Lvm2/ast/NameScope;

    iput-object v0, p1, Lvm2/ast/Block;->scope:Lvm2/ast/NameScope;

    .line 38
    invoke-super {p0, p1}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Block;)V

    .line 39
    invoke-direct {p0}, Lvm2/ast/NameResolver;->popScope()V

    return-void
.end method

.method public visit(Lvm2/ast/Exp$NameExp;)V
    .registers 4

    .line 72
    iget-object v0, p1, Lvm2/ast/Exp$NameExp;->name:Lvm2/ast/Name;

    invoke-virtual {p0, v0}, Lvm2/ast/NameResolver;->resolveNameReference(Lvm2/ast/Name;)Lvm2/ast/Variable;

    move-result-object v1

    iput-object v1, v0, Lvm2/ast/Name;->variable:Lvm2/ast/Variable;

    .line 73
    invoke-super {p0, p1}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Exp$NameExp;)V

    return-void
.end method

.method public visit(Lvm2/ast/FuncBody;)V
    .registers 4

    .line 43
    invoke-direct {p0}, Lvm2/ast/NameResolver;->pushScope()V

    .line 44
    iget-object v0, p0, Lvm2/ast/NameResolver;->scope:Lvm2/ast/NameScope;

    iget v1, v0, Lvm2/ast/NameScope;->functionNestingCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lvm2/ast/NameScope;->functionNestingCount:I

    .line 45
    iput-object v0, p1, Lvm2/ast/FuncBody;->scope:Lvm2/ast/NameScope;

    .line 46
    invoke-super {p0, p1}, Lvm2/ast/Visitor;->visit(Lvm2/ast/FuncBody;)V

    .line 47
    invoke-direct {p0}, Lvm2/ast/NameResolver;->popScope()V

    return-void
.end method

.method public visit(Lvm2/ast/NameScope;)V
    .registers 2

    .line 0
    return-void
.end method

.method public visit(Lvm2/ast/ParList;)V
    .registers 4

    .line 105
    iget-object v0, p1, Lvm2/ast/ParList;->names:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 106
    invoke-virtual {p0, v0}, Lvm2/ast/NameResolver;->defineLocalVars(Ljava/util/List;)V

    .line 107
    :cond_7
    iget-boolean v0, p1, Lvm2/ast/ParList;->isvararg:Z

    if-eqz v0, :cond_12

    .line 108
    iget-object v0, p0, Lvm2/ast/NameResolver;->scope:Lvm2/ast/NameScope;

    const-string v1, "arg"

    invoke-virtual {v0, v1}, Lvm2/ast/NameScope;->define(Ljava/lang/String;)Lvm2/ast/Variable;

    .line 109
    :cond_12
    invoke-super {p0, p1}, Lvm2/ast/Visitor;->visit(Lvm2/ast/ParList;)V

    return-void
.end method

.method public visit(Lvm2/ast/Stat$Assign;)V
    .registers 5

    .line 83
    invoke-super {p0, p1}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Stat$Assign;)V

    .line 84
    iget-object v0, p1, Lvm2/ast/Stat$Assign;->vars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    .line 85
    iget-object v2, p1, Lvm2/ast/Stat$Assign;->vars:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvm2/ast/Exp$VarExp;

    .line 86
    invoke-virtual {v2}, Lvm2/ast/Exp$VarExp;->markHasAssignment()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public visit(Lvm2/ast/Stat$FuncDef;)V
    .registers 4

    .line 77
    iget-object v0, p1, Lvm2/ast/Stat$FuncDef;->name:Lvm2/ast/FuncName;

    iget-object v0, v0, Lvm2/ast/FuncName;->name:Lvm2/ast/Name;

    invoke-virtual {p0, v0}, Lvm2/ast/NameResolver;->resolveNameReference(Lvm2/ast/Name;)Lvm2/ast/Variable;

    move-result-object v1

    iput-object v1, v0, Lvm2/ast/Name;->variable:Lvm2/ast/Variable;

    .line 78
    iget-object v0, p1, Lvm2/ast/Stat$FuncDef;->name:Lvm2/ast/FuncName;

    iget-object v0, v0, Lvm2/ast/FuncName;->name:Lvm2/ast/Name;

    iget-object v0, v0, Lvm2/ast/Name;->variable:Lvm2/ast/Variable;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lvm2/ast/Variable;->hasassignments:Z

    .line 79
    invoke-super {p0, p1}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Stat$FuncDef;)V

    return-void
.end method

.method public visit(Lvm2/ast/Stat$GenericFor;)V
    .registers 3

    .line 64
    invoke-direct {p0}, Lvm2/ast/NameResolver;->pushScope()V

    .line 65
    iget-object v0, p0, Lvm2/ast/NameResolver;->scope:Lvm2/ast/NameScope;

    iput-object v0, p1, Lvm2/ast/Stat$GenericFor;->scope:Lvm2/ast/NameScope;

    .line 66
    iget-object v0, p1, Lvm2/ast/Stat$GenericFor;->names:Ljava/util/List;

    invoke-virtual {p0, v0}, Lvm2/ast/NameResolver;->defineLocalVars(Ljava/util/List;)V

    .line 67
    invoke-super {p0, p1}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Stat$GenericFor;)V

    .line 68
    invoke-direct {p0}, Lvm2/ast/NameResolver;->popScope()V

    return-void
.end method

.method public visit(Lvm2/ast/Stat$LocalAssign;)V
    .registers 8

    .line 91
    iget-object v0, p1, Lvm2/ast/Stat$LocalAssign;->values:Ljava/util/List;

    invoke-virtual {p0, v0}, Lvm2/ast/Visitor;->visitExps(Ljava/util/List;)V

    .line 92
    iget-object v0, p1, Lvm2/ast/Stat$LocalAssign;->names:Ljava/util/List;

    invoke-virtual {p0, v0}, Lvm2/ast/NameResolver;->defineLocalVars(Ljava/util/List;)V

    .line 93
    iget-object v0, p1, Lvm2/ast/Stat$LocalAssign;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 94
    iget-object v1, p1, Lvm2/ast/Stat$LocalAssign;->values:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    if-lez v1, :cond_31

    if-ge v1, v0, :cond_31

    .line 95
    iget-object v3, p1, Lvm2/ast/Stat$LocalAssign;->values:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvm2/ast/Exp;

    invoke-virtual {v3}, Lvm2/ast/Exp;->isvarargexp()Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v3, 0x1

    goto :goto_32

    :cond_31
    move v3, v2

    :goto_32
    if-ge v2, v0, :cond_5f

    if-eqz v3, :cond_39

    add-int/lit8 v4, v1, -0x1

    goto :goto_3a

    :cond_39
    move v4, v1

    :goto_3a
    if-ge v2, v4, :cond_5f

    .line 97
    iget-object v4, p1, Lvm2/ast/Stat$LocalAssign;->values:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lvm2/ast/Exp$Constant;

    if-eqz v4, :cond_5c

    .line 98
    iget-object v4, p1, Lvm2/ast/Stat$LocalAssign;->names:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvm2/ast/Name;

    iget-object v4, v4, Lvm2/ast/Name;->variable:Lvm2/ast/Variable;

    iget-object v5, p1, Lvm2/ast/Stat$LocalAssign;->values:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvm2/ast/Exp$Constant;

    iget-object v5, v5, Lvm2/ast/Exp$Constant;->value:Lvm2/LuaValue;

    iput-object v5, v4, Lvm2/ast/Variable;->initialValue:Lvm2/LuaValue;

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_5f
    if-nez v3, :cond_74

    :goto_61
    if-ge v1, v0, :cond_74

    .line 101
    iget-object v2, p1, Lvm2/ast/Stat$LocalAssign;->names:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvm2/ast/Name;

    iget-object v2, v2, Lvm2/ast/Name;->variable:Lvm2/ast/Variable;

    sget-object v3, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    iput-object v3, v2, Lvm2/ast/Variable;->initialValue:Lvm2/LuaValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    :cond_74
    return-void
.end method

.method public visit(Lvm2/ast/Stat$LocalFuncDef;)V
    .registers 3

    .line 51
    iget-object v0, p1, Lvm2/ast/Stat$LocalFuncDef;->name:Lvm2/ast/Name;

    invoke-virtual {p0, v0}, Lvm2/ast/NameResolver;->defineLocalVar(Lvm2/ast/Name;)V

    .line 52
    invoke-super {p0, p1}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Stat$LocalFuncDef;)V

    return-void
.end method

.method public visit(Lvm2/ast/Stat$NumericFor;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Lvm2/ast/NameResolver;->pushScope()V

    .line 57
    iget-object v0, p0, Lvm2/ast/NameResolver;->scope:Lvm2/ast/NameScope;

    iput-object v0, p1, Lvm2/ast/Stat$NumericFor;->scope:Lvm2/ast/NameScope;

    .line 58
    iget-object v0, p1, Lvm2/ast/Stat$NumericFor;->name:Lvm2/ast/Name;

    invoke-virtual {p0, v0}, Lvm2/ast/NameResolver;->defineLocalVar(Lvm2/ast/Name;)V

    .line 59
    invoke-super {p0, p1}, Lvm2/ast/Visitor;->visit(Lvm2/ast/Stat$NumericFor;)V

    .line 60
    invoke-direct {p0}, Lvm2/ast/NameResolver;->popScope()V

    return-void
.end method
