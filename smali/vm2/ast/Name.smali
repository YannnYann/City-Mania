###### Class vm2.ast.Name (vm2.ast.Name)
.class public Lvm2/ast/Name;
.super Ljava/lang/Object;
.source "Name.java"


# instance fields
.field public final name:Ljava/lang/String;

.field public variable:Lvm2/ast/Variable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lvm2/ast/Name;->name:Ljava/lang/String;

    return-void
.end method
