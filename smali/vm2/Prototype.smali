###### Class vm2.Prototype (vm2.Prototype)
.class public Lvm2/Prototype;
.super Ljava/lang/Object;
.source "Prototype.java"


# static fields
.field private static final NOSUBPROTOS:[Lvm2/Prototype;

.field private static final NOUPVALUES:[Lvm2/Upvaldesc;


# instance fields
.field public code:[I

.field public is_vararg:I

.field public k:[Lvm2/LuaValue;

.field public lastlinedefined:I

.field public linedefined:I

.field public lineinfo:[I

.field public locvars:[Lvm2/LocVars;

.field public maxstacksize:I

.field public numparams:I

.field public p:[Lvm2/Prototype;

.field public source:Lvm2/LuaString;

.field public upvalues:[Lvm2/Upvaldesc;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    .line 105
    new-array v1, v0, [Lvm2/Upvaldesc;

    sput-object v1, Lvm2/Prototype;->NOUPVALUES:[Lvm2/Upvaldesc;

    .line 106
    new-array v0, v0, [Lvm2/Prototype;

    sput-object v0, Lvm2/Prototype;->NOSUBPROTOS:[Lvm2/Prototype;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-object v0, Lvm2/Prototype;->NOSUBPROTOS:[Lvm2/Prototype;

    iput-object v0, p0, Lvm2/Prototype;->p:[Lvm2/Prototype;

    .line 110
    sget-object v0, Lvm2/Prototype;->NOUPVALUES:[Lvm2/Upvaldesc;

    iput-object v0, p0, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    sget-object v0, Lvm2/Prototype;->NOSUBPROTOS:[Lvm2/Prototype;

    iput-object v0, p0, Lvm2/Prototype;->p:[Lvm2/Prototype;

    .line 115
    new-array p1, p1, [Lvm2/Upvaldesc;

    iput-object p1, p0, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    return-void
.end method


# virtual methods
.method public getlocalname(II)Lvm2/LuaString;
    .registers 6

    const/4 v0, 0x0

    .line 130
    :goto_1
    iget-object v1, p0, Lvm2/Prototype;->locvars:[Lvm2/LocVars;

    array-length v2, v1

    if-ge v0, v2, :cond_1a

    aget-object v1, v1, v0

    iget v2, v1, Lvm2/LocVars;->startpc:I

    if-gt v2, p2, :cond_1a

    .line 131
    iget v2, v1, Lvm2/LocVars;->endpc:I

    if-ge p2, v2, :cond_17

    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_17

    .line 134
    iget-object p1, v1, Lvm2/LocVars;->varname:Lvm2/LuaString;

    return-object p1

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method public shortsource()Ljava/lang/String;
    .registers 3

    .line 141
    iget-object v0, p0, Lvm2/Prototype;->source:Lvm2/LuaString;

    invoke-virtual {v0}, Lvm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_22

    .line 144
    :cond_17
    const-string v1, "\u001b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 145
    const-string v0, "binary string"

    :cond_21
    return-object v0

    :cond_22
    :goto_22
    const/4 v1, 0x1

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lvm2/Prototype;->source:Lvm2/LuaString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvm2/Prototype;->linedefined:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvm2/Prototype;->lastlinedefined:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
