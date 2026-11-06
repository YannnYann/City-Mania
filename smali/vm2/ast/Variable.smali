###### Class vm2.ast.Variable (vm2.ast.Variable)
.class public Lvm2/ast/Variable;
.super Ljava/lang/Object;
.source "Variable.java"


# instance fields
.field public final definingScope:Lvm2/ast/NameScope;

.field public hasassignments:Z

.field public initialValue:Lvm2/LuaValue;

.field public isupvalue:Z

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lvm2/ast/Variable;->name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lvm2/ast/Variable;->definingScope:Lvm2/ast/NameScope;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvm2/ast/NameScope;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lvm2/ast/Variable;->name:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lvm2/ast/Variable;->definingScope:Lvm2/ast/NameScope;

    return-void
.end method


# virtual methods
.method public isConstant()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Lvm2/ast/Variable;->hasassignments:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lvm2/ast/Variable;->initialValue:Lvm2/LuaValue;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public isLocal()Z
    .registers 2

    .line 57
    iget-object v0, p0, Lvm2/ast/Variable;->definingScope:Lvm2/ast/NameScope;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
