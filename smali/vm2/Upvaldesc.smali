###### Class vm2.Upvaldesc (vm2.Upvaldesc)
.class public Lvm2/Upvaldesc;
.super Ljava/lang/Object;
.source "Upvaldesc.java"


# instance fields
.field public final idx:S

.field public final instack:Z

.field public name:Lvm2/LuaString;


# direct methods
.method public constructor <init>(Lvm2/LuaString;ZI)V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lvm2/Upvaldesc;->name:Lvm2/LuaString;

    .line 37
    iput-boolean p2, p0, Lvm2/Upvaldesc;->instack:Z

    int-to-short p1, p3

    .line 38
    iput-short p1, p0, Lvm2/Upvaldesc;->idx:S

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-short v1, p0, Lvm2/Upvaldesc;->idx:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lvm2/Upvaldesc;->instack:Z

    if-eqz v1, :cond_11

    const-string v1, " instack "

    goto :goto_13

    :cond_11
    const-string v1, " closed "

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvm2/Upvaldesc;->name:Lvm2/LuaString;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
