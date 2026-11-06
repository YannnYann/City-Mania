###### Class vm2.TailcallVarargs (vm2.TailcallVarargs)
.class public Lvm2/TailcallVarargs;
.super Lvm2/Varargs;
.source "TailcallVarargs.java"


# instance fields
.field private args:Lvm2/Varargs;

.field private func:Lvm2/LuaValue;

.field private result:Lvm2/Varargs;


# direct methods
.method public constructor <init>(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)V
    .registers 4

    .line 54
    invoke-direct {p0}, Lvm2/Varargs;-><init>()V

    .line 55
    invoke-virtual {p1, p2}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p2

    iput-object p2, p0, Lvm2/TailcallVarargs;->func:Lvm2/LuaValue;

    .line 56
    invoke-static {p1, p3}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    iput-object p1, p0, Lvm2/TailcallVarargs;->args:Lvm2/Varargs;

    return-void
.end method

.method public constructor <init>(Lvm2/LuaValue;Lvm2/Varargs;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Lvm2/Varargs;-><init>()V

    .line 50
    iput-object p1, p0, Lvm2/TailcallVarargs;->func:Lvm2/LuaValue;

    .line 51
    iput-object p2, p0, Lvm2/TailcallVarargs;->args:Lvm2/Varargs;

    return-void
.end method


# virtual methods
.method public arg(I)Lvm2/LuaValue;
    .registers 3

    .line 81
    iget-object v0, p0, Lvm2/TailcallVarargs;->result:Lvm2/Varargs;

    if-nez v0, :cond_7

    .line 82
    invoke-virtual {p0}, Lvm2/TailcallVarargs;->eval()Lvm2/Varargs;

    .line 83
    :cond_7
    iget-object v0, p0, Lvm2/TailcallVarargs;->result:Lvm2/Varargs;

    invoke-virtual {v0, p1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public arg1()Lvm2/LuaValue;
    .registers 2

    .line 87
    iget-object v0, p0, Lvm2/TailcallVarargs;->result:Lvm2/Varargs;

    if-nez v0, :cond_7

    .line 88
    invoke-virtual {p0}, Lvm2/TailcallVarargs;->eval()Lvm2/Varargs;

    .line 89
    :cond_7
    iget-object v0, p0, Lvm2/TailcallVarargs;->result:Lvm2/Varargs;

    invoke-virtual {v0}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public eval()Lvm2/Varargs;
    .registers 3

    .line 64
    :goto_0
    iget-object v0, p0, Lvm2/TailcallVarargs;->result:Lvm2/Varargs;

    if-nez v0, :cond_25

    .line 65
    iget-object v0, p0, Lvm2/TailcallVarargs;->func:Lvm2/LuaValue;

    iget-object v1, p0, Lvm2/TailcallVarargs;->args:Lvm2/Varargs;

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->onInvoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lvm2/Varargs;->isTailcall()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 67
    check-cast v0, Lvm2/TailcallVarargs;

    .line 68
    iget-object v1, v0, Lvm2/TailcallVarargs;->func:Lvm2/LuaValue;

    iput-object v1, p0, Lvm2/TailcallVarargs;->func:Lvm2/LuaValue;

    .line 69
    iget-object v0, v0, Lvm2/TailcallVarargs;->args:Lvm2/Varargs;

    iput-object v0, p0, Lvm2/TailcallVarargs;->args:Lvm2/Varargs;

    goto :goto_0

    .line 72
    :cond_1d
    iput-object v0, p0, Lvm2/TailcallVarargs;->result:Lvm2/Varargs;

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lvm2/TailcallVarargs;->func:Lvm2/LuaValue;

    .line 74
    iput-object v0, p0, Lvm2/TailcallVarargs;->args:Lvm2/Varargs;

    goto :goto_0

    :cond_25
    return-object v0
.end method

.method public isTailcall()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public narg()I
    .registers 2

    .line 93
    iget-object v0, p0, Lvm2/TailcallVarargs;->result:Lvm2/Varargs;

    if-nez v0, :cond_7

    .line 94
    invoke-virtual {p0}, Lvm2/TailcallVarargs;->eval()Lvm2/Varargs;

    .line 95
    :cond_7
    iget-object v0, p0, Lvm2/TailcallVarargs;->result:Lvm2/Varargs;

    invoke-virtual {v0}, Lvm2/Varargs;->narg()I

    move-result v0

    return v0
.end method

.method public subargs(I)Lvm2/Varargs;
    .registers 3

    .line 99
    iget-object v0, p0, Lvm2/TailcallVarargs;->result:Lvm2/Varargs;

    if-nez v0, :cond_7

    .line 100
    invoke-virtual {p0}, Lvm2/TailcallVarargs;->eval()Lvm2/Varargs;

    .line 101
    :cond_7
    iget-object v0, p0, Lvm2/TailcallVarargs;->result:Lvm2/Varargs;

    invoke-virtual {v0, p1}, Lvm2/Varargs;->subargs(I)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method
