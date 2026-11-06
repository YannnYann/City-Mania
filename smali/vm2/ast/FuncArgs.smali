###### Class vm2.ast.FuncArgs (vm2.ast.FuncArgs)
.class public Lvm2/ast/FuncArgs;
.super Lvm2/ast/SyntaxElement;
.source "FuncArgs.java"


# instance fields
.field public final exps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvm2/ast/Exp;",
            ">;"
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
            "Lvm2/ast/Exp;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lvm2/ast/SyntaxElement;-><init>()V

    .line 49
    iput-object p1, p0, Lvm2/ast/FuncArgs;->exps:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lvm2/LuaString;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Lvm2/ast/SyntaxElement;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvm2/ast/FuncArgs;->exps:Ljava/util/List;

    .line 54
    invoke-static {p1}, Lvm2/ast/Exp;->constant(Lvm2/LuaValue;)Lvm2/ast/Exp;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lvm2/ast/TableConstructor;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Lvm2/ast/SyntaxElement;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvm2/ast/FuncArgs;->exps:Ljava/util/List;

    .line 59
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static explist(Ljava/util/List;)Lvm2/ast/FuncArgs;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvm2/ast/Exp;",
            ">;)",
            "Lvm2/ast/FuncArgs;"
        }
    .end annotation

    .line 35
    new-instance v0, Lvm2/ast/FuncArgs;

    invoke-direct {v0, p0}, Lvm2/ast/FuncArgs;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static string(Lvm2/LuaString;)Lvm2/ast/FuncArgs;
    .registers 2

    .line 45
    new-instance v0, Lvm2/ast/FuncArgs;

    invoke-direct {v0, p0}, Lvm2/ast/FuncArgs;-><init>(Lvm2/LuaString;)V

    return-object v0
.end method

.method public static tableconstructor(Lvm2/ast/TableConstructor;)Lvm2/ast/FuncArgs;
    .registers 2

    .line 40
    new-instance v0, Lvm2/ast/FuncArgs;

    invoke-direct {v0, p0}, Lvm2/ast/FuncArgs;-><init>(Lvm2/ast/TableConstructor;)V

    return-object v0
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 63
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/FuncArgs;)V

    return-void
.end method
