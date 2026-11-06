###### Class vm2.ast.FuncName (vm2.ast.FuncName)
.class public Lvm2/ast/FuncName;
.super Lvm2/ast/SyntaxElement;
.source "FuncName.java"


# instance fields
.field public dots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public method:Ljava/lang/String;

.field public final name:Lvm2/ast/Name;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Lvm2/ast/SyntaxElement;-><init>()V

    .line 40
    new-instance v0, Lvm2/ast/Name;

    invoke-direct {v0, p1}, Lvm2/ast/Name;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lvm2/ast/FuncName;->name:Lvm2/ast/Name;

    return-void
.end method


# virtual methods
.method public adddot(Ljava/lang/String;)V
    .registers 3

    .line 44
    iget-object v0, p0, Lvm2/ast/FuncName;->dots:Ljava/util/List;

    if-nez v0, :cond_b

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvm2/ast/FuncName;->dots:Ljava/util/List;

    .line 46
    :cond_b
    iget-object v0, p0, Lvm2/ast/FuncName;->dots:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
