###### Class vm2.LuaError (vm2.LuaError)
.class public Lvm2/LuaError;
.super Ljava/lang/RuntimeException;
.source "LuaError.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected cause:Ljava/lang/Throwable;

.field protected fileline:Ljava/lang/String;

.field protected level:I

.field private object:Lvm2/LuaValue;

.field protected traceback:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 96
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 97
    iput p1, p0, Lvm2/LuaError;->level:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 106
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 107
    iput p2, p0, Lvm2/LuaError;->level:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 4

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vm error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lvm2/LuaError;->cause:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 87
    iput p1, p0, Lvm2/LuaError;->level:I

    return-void
.end method

.method public constructor <init>(Lvm2/LuaValue;)V
    .registers 3

    .line 116
    invoke-virtual {p1}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 117
    iput-object p1, p0, Lvm2/LuaError;->object:Lvm2/LuaValue;

    const/4 p1, 0x1

    .line 118
    iput p1, p0, Lvm2/LuaError;->level:I

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .line 126
    iget-object v0, p0, Lvm2/LuaError;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 4

    .line 58
    iget-object v0, p0, Lvm2/LuaError;->traceback:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 60
    :cond_5
    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_d
    iget-object v1, p0, Lvm2/LuaError;->fileline:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lvm2/LuaError;->fileline:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_27
    return-object v0
.end method

.method public getMessageObject()Lvm2/LuaValue;
    .registers 2

    .line 74
    iget-object v0, p0, Lvm2/LuaError;->object:Lvm2/LuaValue;

    if-eqz v0, :cond_5

    return-object v0

    .line 75
    :cond_5
    invoke-virtual {p0}, Lvm2/LuaError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 76
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method
