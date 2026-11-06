###### Class vm2.LocVars (vm2.LocVars)
.class public Lvm2/LocVars;
.super Ljava/lang/Object;
.source "LocVars.java"


# instance fields
.field public endpc:I

.field public startpc:I

.field public varname:Lvm2/LuaString;


# direct methods
.method public constructor <init>(Lvm2/LuaString;II)V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lvm2/LocVars;->varname:Lvm2/LuaString;

    .line 45
    iput p2, p0, Lvm2/LocVars;->startpc:I

    .line 46
    iput p3, p0, Lvm2/LocVars;->endpc:I

    return-void
.end method


# virtual methods
.method public tojstring()Ljava/lang/String;
    .registers 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lvm2/LocVars;->varname:Lvm2/LuaString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvm2/LocVars;->startpc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvm2/LocVars;->endpc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
