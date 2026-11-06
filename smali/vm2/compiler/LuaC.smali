###### Class vm2.compiler.LuaC (vm2.compiler.LuaC)
.class public Lvm2/compiler/LuaC;
.super Lvm2/compiler/Constants;
.source "LuaC.java"

# interfaces
.implements Lvm2/Globals$Compiler;
.implements Lvm2/Globals$Loader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/compiler/LuaC$CompileState;
    }
.end annotation


# static fields
.field public static final instance:Lvm2/compiler/LuaC;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Lvm2/compiler/LuaC;

    invoke-direct {v0}, Lvm2/compiler/LuaC;-><init>()V

    sput-object v0, Lvm2/compiler/LuaC;->instance:Lvm2/compiler/LuaC;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Lvm2/compiler/Constants;-><init>()V

    return-void
.end method

.method public static install(Lvm2/Globals;)V
    .registers 2

    .line 87
    sget-object v0, Lvm2/compiler/LuaC;->instance:Lvm2/compiler/LuaC;

    iput-object v0, p0, Lvm2/Globals;->compiler:Lvm2/Globals$Compiler;

    .line 88
    iput-object v0, p0, Lvm2/Globals;->loader:Lvm2/Globals$Loader;

    return-void
.end method


# virtual methods
.method public compile(Ljava/io/InputStream;Ljava/lang/String;)Lvm2/Prototype;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    new-instance v0, Lvm2/compiler/LuaC$CompileState;

    invoke-direct {v0}, Lvm2/compiler/LuaC$CompileState;-><init>()V

    invoke-virtual {v0, p1, p2}, Lvm2/compiler/LuaC$CompileState;->luaY_parser(Ljava/io/InputStream;Ljava/lang/String;)Lvm2/Prototype;

    move-result-object p1

    return-object p1
.end method

.method public load(Lvm2/Prototype;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/LuaFunction;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    new-instance p2, Lvm2/LuaClosure;

    invoke-direct {p2, p1, p3}, Lvm2/LuaClosure;-><init>(Lvm2/Prototype;Lvm2/LuaValue;)V

    return-object p2
.end method

.method public load(Ljava/io/InputStream;Ljava/lang/String;Lvm2/Globals;)Lvm2/LuaValue;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    new-instance v0, Lvm2/LuaClosure;

    invoke-virtual {p0, p1, p2}, Lvm2/compiler/LuaC;->compile(Ljava/io/InputStream;Ljava/lang/String;)Lvm2/Prototype;

    move-result-object p1

    invoke-direct {v0, p1, p3}, Lvm2/LuaClosure;-><init>(Lvm2/Prototype;Lvm2/LuaValue;)V

    return-object v0
.end method

###### Class vm2.compiler.LuaC.CompileState (vm2.compiler.LuaC$CompileState)
.class Lvm2/compiler/LuaC$CompileState;
.super Ljava/lang/Object;
.source "LuaC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/compiler/LuaC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompileState"
.end annotation


# instance fields
.field nCcalls:I

.field private strings:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lvm2/compiler/LuaC$CompileState;->nCcalls:I

    .line 117
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lvm2/compiler/LuaC$CompileState;->strings:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public cachedLuaString(Lvm2/LuaString;)Lvm2/LuaString;
    .registers 3

    .line 149
    iget-object v0, p0, Lvm2/compiler/LuaC$CompileState;->strings:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvm2/LuaString;

    if-eqz v0, :cond_b

    return-object v0

    .line 152
    :cond_b
    iget-object v0, p0, Lvm2/compiler/LuaC$CompileState;->strings:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public luaY_parser(Ljava/io/InputStream;Ljava/lang/String;)Lvm2/Prototype;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    new-instance v0, Lvm2/compiler/LexState;

    invoke-direct {v0, p0, p1}, Lvm2/compiler/LexState;-><init>(Lvm2/compiler/LuaC$CompileState;Ljava/io/InputStream;)V

    .line 123
    new-instance v1, Lvm2/compiler/FuncState;

    invoke-direct {v1}, Lvm2/compiler/FuncState;-><init>()V

    .line 125
    iput-object v1, v0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    .line 126
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v3

    invoke-virtual {v0, p0, v2, p1, v3}, Lvm2/compiler/LexState;->setinput(Lvm2/compiler/LuaC$CompileState;ILjava/io/InputStream;Lvm2/LuaString;)V

    .line 128
    new-instance p1, Lvm2/Prototype;

    invoke-direct {p1}, Lvm2/Prototype;-><init>()V

    iput-object p1, v1, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    .line 129
    invoke-static {p2}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p2

    iput-object p2, p1, Lvm2/Prototype;->source:Lvm2/LuaString;

    .line 130
    invoke-virtual {v0, v1}, Lvm2/compiler/LexState;->mainfunc(Lvm2/compiler/FuncState;)V

    .line 131
    iget-object p1, v1, Lvm2/compiler/FuncState;->prev:Lvm2/compiler/FuncState;

    const/4 p2, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2f

    move p1, v2

    goto :goto_30

    :cond_2f
    move p1, p2

    :goto_30
    invoke-static {p1}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 133
    iget-object p1, v0, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    if-eqz p1, :cond_43

    iget v0, p1, Lvm2/compiler/LexState$Dyndata;->n_actvar:I

    if-nez v0, :cond_44

    iget v0, p1, Lvm2/compiler/LexState$Dyndata;->n_gt:I

    if-nez v0, :cond_44

    iget p1, p1, Lvm2/compiler/LexState$Dyndata;->n_label:I

    if-nez p1, :cond_44

    :cond_43
    move p2, v2

    :cond_44
    invoke-static {p2}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 135
    iget-object p1, v1, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    return-object p1
.end method

.method public newTString(Ljava/lang/String;)Lvm2/LuaString;
    .registers 2

    .line 140
    invoke-static {p1}, Lvm2/LuaString;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/compiler/LuaC$CompileState;->cachedLuaString(Lvm2/LuaString;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public newTString(Lvm2/LuaString;)Lvm2/LuaString;
    .registers 2

    .line 145
    invoke-virtual {p0, p1}, Lvm2/compiler/LuaC$CompileState;->cachedLuaString(Lvm2/LuaString;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public pushfstring(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    return-object p1
.end method
