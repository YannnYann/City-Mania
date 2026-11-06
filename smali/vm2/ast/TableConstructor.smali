###### Class vm2.ast.TableConstructor (vm2.ast.TableConstructor)
.class public Lvm2/ast/TableConstructor;
.super Lvm2/ast/Exp;
.source "TableConstructor.java"


# instance fields
.field public fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvm2/ast/TableField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lvm2/ast/Exp;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lvm2/ast/Visitor;)V
    .registers 2

    .line 30
    invoke-virtual {p1, p0}, Lvm2/ast/Visitor;->visit(Lvm2/ast/TableConstructor;)V

    return-void
.end method
