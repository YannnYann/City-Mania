###### Class vm2.ast.TableField (vm2.ast.TableField)
.class public Lvm2/ast/TableField;
.super Lvm2/ast/SyntaxElement;
.source "TableField.java"


# instance fields
.field public final index:Lvm2/ast/Exp;

.field public final name:Ljava/lang/String;

.field public final rhs:Lvm2/ast/Exp;


# direct methods
.method public constructor <init>(Lvm2/ast/Exp;Ljava/lang/String;Lvm2/ast/Exp;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Lvm2/ast/SyntaxElement;-><init>()V

    .line 31
    iput-object p1, p0, Lvm2/ast/TableField;->index:Lvm2/ast/Exp;

    .line 32
    iput-object p2, p0, Lvm2/ast/TableField;->name:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lvm2/ast/TableField;->rhs:Lvm2/ast/Exp;

    return-void
.end method

.method public static keyedField(Lvm2/ast/Exp;Lvm2/ast/Exp;)Lvm2/ast/TableField;
    .registers 4

    .line 37
    new-instance v0, Lvm2/ast/TableField;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lvm2/ast/TableField;-><init>(Lvm2/ast/Exp;Ljava/lang/String;Lvm2/ast/Exp;)V

    return-object v0
.end method

.method public static listField(Lvm2/ast/Exp;)Lvm2/ast/TableField;
    .registers 3

    .line 45
    new-instance v0, Lvm2/ast/TableField;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0}, Lvm2/ast/TableField;-><init>(Lvm2/ast/Exp;Ljava/lang/String;Lvm2/ast/Exp;)V

    return-object v0
.end method

.method public static namedField(Ljava/lang/String;Lvm2/ast/Exp;)Lvm2/ast/TableField;
    .registers 4

    .line 41
    new-instance v0, Lvm2/ast/TableField;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lvm2/ast/TableField;-><init>(Lvm2/ast/Exp;Ljava/lang/String;Lvm2/ast/Exp;)V

    return-object v0
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 49
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/TableField;)V

    return-void
.end method
