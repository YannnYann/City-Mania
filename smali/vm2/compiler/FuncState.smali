###### Class vm2.compiler.FuncState (vm2.compiler.FuncState)
.class public Lvm2/compiler/FuncState;
.super Lvm2/compiler/Constants;
.source "FuncState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/compiler/FuncState$BlockCnt;
    }
.end annotation


# instance fields
.field bl:Lvm2/compiler/FuncState$BlockCnt;

.field f:Lvm2/Prototype;

.field firstlocal:I

.field freereg:S

.field h:Ljava/util/Hashtable;

.field jpc:Lvm2/compiler/IntPtr;

.field lasttarget:I

.field ls:Lvm2/compiler/LexState;

.field nactvar:S

.field nk:I

.field nlocvars:S

.field np:I

.field nups:S

.field pc:I

.field prev:Lvm2/compiler/FuncState;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Lvm2/compiler/Constants;-><init>()V

    return-void
.end method

.method public static singlevaraux(Lvm2/compiler/FuncState;Lvm2/LuaString;Lvm2/compiler/LexState$expdesc;I)I
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 167
    :cond_4
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->searchvar(Lvm2/LuaString;)I

    move-result v1

    if-ltz v1, :cond_14

    const/4 p1, 0x7

    .line 169
    invoke-virtual {p2, p1, v1}, Lvm2/compiler/LexState$expdesc;->init(II)V

    if-nez p3, :cond_13

    .line 171
    invoke-virtual {p0, v1}, Lvm2/compiler/FuncState;->markupval(I)V

    :cond_13
    return p1

    .line 174
    :cond_14
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->searchupvalue(Lvm2/LuaString;)I

    move-result p3

    if-gez p3, :cond_27

    .line 176
    iget-object p3, p0, Lvm2/compiler/FuncState;->prev:Lvm2/compiler/FuncState;

    invoke-static {p3, p1, p2, v0}, Lvm2/compiler/FuncState;->singlevaraux(Lvm2/compiler/FuncState;Lvm2/LuaString;Lvm2/compiler/LexState$expdesc;I)I

    move-result p3

    if-nez p3, :cond_23

    return v0

    .line 179
    :cond_23
    invoke-virtual {p0, p1, p2}, Lvm2/compiler/FuncState;->newupvalue(Lvm2/LuaString;Lvm2/compiler/LexState$expdesc;)I

    move-result p3

    :cond_27
    const/16 p0, 0x8

    .line 181
    invoke-virtual {p2, p0, p3}, Lvm2/compiler/LexState$expdesc;->init(II)V

    return p0
.end method

.method public static vkisinreg(I)Z
    .registers 2

    .line 0
    const/4 v0, 0x6

    if-eq p0, v0, :cond_9

    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_9
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addk(Lvm2/LuaValue;)I
    .registers 7

    .line 474
    iget-object v0, p0, Lvm2/compiler/FuncState;->h:Ljava/util/Hashtable;

    if-nez v0, :cond_c

    .line 475
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lvm2/compiler/FuncState;->h:Ljava/util/Hashtable;

    goto :goto_1f

    .line 476
    :cond_c
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 477
    iget-object v0, p0, Lvm2/compiler/FuncState;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 479
    :cond_1f
    :goto_1f
    iget v0, p0, Lvm2/compiler/FuncState;->nk:I

    .line 480
    iget-object v1, p0, Lvm2/compiler/FuncState;->h:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget-object v1, p0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    .line 482
    iget-object v2, v1, Lvm2/Prototype;->k:[Lvm2/LuaValue;

    if-eqz v2, :cond_37

    iget v3, p0, Lvm2/compiler/FuncState;->nk:I

    add-int/lit8 v3, v3, 0x1

    array-length v4, v2

    if-lt v3, v4, :cond_43

    .line 483
    :cond_37
    iget v3, p0, Lvm2/compiler/FuncState;->nk:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lvm2/compiler/Constants;->realloc([Lvm2/LuaValue;I)[Lvm2/LuaValue;

    move-result-object v2

    iput-object v2, v1, Lvm2/Prototype;->k:[Lvm2/LuaValue;

    .line 484
    :cond_43
    iget-object v1, v1, Lvm2/Prototype;->k:[Lvm2/LuaValue;

    iget v2, p0, Lvm2/compiler/FuncState;->nk:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lvm2/compiler/FuncState;->nk:I

    aput-object p1, v1, v2

    return v0
.end method

.method public boolK(Z)I
    .registers 2

    if-eqz p1, :cond_5

    .line 503
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    goto :goto_7

    :cond_5
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    :goto_7
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->addk(Lvm2/LuaValue;)I

    move-result p1

    return p1
.end method

.method public checklimit(IILjava/lang/String;)V
    .registers 4

    if-le p1, p2, :cond_5

    .line 107
    invoke-virtual {p0, p2, p3}, Lvm2/compiler/FuncState;->errorlimit(ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public checkrepeated([Lvm2/compiler/LexState$Labeldesc;ILvm2/LuaString;)V
    .registers 8

    .line 95
    iget-object v0, p0, Lvm2/compiler/FuncState;->bl:Lvm2/compiler/FuncState$BlockCnt;

    iget-short v0, v0, Lvm2/compiler/FuncState$BlockCnt;->firstlabel:S

    :goto_4
    if-ge v0, p2, :cond_3d

    .line 96
    aget-object v1, p1, v0

    iget-object v1, v1, Lvm2/compiler/LexState$Labeldesc;->name:Lvm2/LuaString;

    invoke-virtual {p3, v1}, Lvm2/LuaString;->eq_b(Lvm2/LuaValue;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 97
    iget-object v1, p0, Lvm2/compiler/FuncState;->ls:Lvm2/compiler/LexState;

    iget-object v1, v1, Lvm2/compiler/LexState;->L:Lvm2/compiler/LuaC$CompileState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "label \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already defined on line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v0

    iget v3, v3, Lvm2/compiler/LexState$Labeldesc;->line:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lvm2/compiler/LuaC$CompileState;->pushfstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lvm2/compiler/FuncState;->ls:Lvm2/compiler/LexState;

    invoke-virtual {v2, v1}, Lvm2/compiler/LexState;->semerror(Ljava/lang/String;)V

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3d
    return-void
.end method

.method public checkstack(I)V
    .registers 4

    .line 449
    iget-short v0, p0, Lvm2/compiler/FuncState;->freereg:S

    add-int/2addr v0, p1

    .line 450
    iget-object p1, p0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iget p1, p1, Lvm2/Prototype;->maxstacksize:I

    if-le v0, p1, :cond_18

    const/16 p1, 0xfa

    if-lt v0, p1, :cond_14

    .line 452
    iget-object p1, p0, Lvm2/compiler/FuncState;->ls:Lvm2/compiler/LexState;

    const-string v1, "function or expression too complex"

    invoke-virtual {p1, v1}, Lvm2/compiler/LexState;->syntaxerror(Ljava/lang/String;)V

    .line 453
    :cond_14
    iget-object p1, p0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iput v0, p1, Lvm2/Prototype;->maxstacksize:I

    :cond_18
    return-void
.end method

.method public closelistfield(Lvm2/compiler/LexState$ConsControl;)V
    .registers 6

    .line 242
    iget-object v0, p1, Lvm2/compiler/LexState$ConsControl;->v:Lvm2/compiler/LexState$expdesc;

    iget v1, v0, Lvm2/compiler/LexState$expdesc;->k:I

    if-nez v1, :cond_7

    goto :goto_22

    .line 244
    :cond_7
    invoke-virtual {p0, v0}, Lvm2/compiler/FuncState;->exp2nextreg(Lvm2/compiler/LexState$expdesc;)V

    .line 245
    iget-object v0, p1, Lvm2/compiler/LexState$ConsControl;->v:Lvm2/compiler/LexState$expdesc;

    const/4 v1, 0x0

    iput v1, v0, Lvm2/compiler/LexState$expdesc;->k:I

    .line 246
    iget v0, p1, Lvm2/compiler/LexState$ConsControl;->tostore:I

    const/16 v2, 0x32

    if-ne v0, v2, :cond_22

    .line 247
    iget-object v2, p1, Lvm2/compiler/LexState$ConsControl;->t:Lvm2/compiler/LexState$expdesc;

    iget-object v2, v2, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget v2, v2, Lvm2/compiler/LexState$expdesc$U;->info:I

    iget v3, p1, Lvm2/compiler/LexState$ConsControl;->na:I

    invoke-virtual {p0, v2, v3, v0}, Lvm2/compiler/FuncState;->setlist(III)V

    .line 248
    iput v1, p1, Lvm2/compiler/LexState$ConsControl;->tostore:I

    :cond_22
    :goto_22
    return-void
.end method

.method public code(II)I
    .registers 7

    .line 1087
    iget-object v0, p0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    .line 1088
    invoke-virtual {p0}, Lvm2/compiler/FuncState;->dischargejpc()V

    .line 1090
    iget-object v1, v0, Lvm2/Prototype;->code:[I

    if-eqz v1, :cond_10

    iget v2, p0, Lvm2/compiler/FuncState;->pc:I

    add-int/lit8 v2, v2, 0x1

    array-length v3, v1

    if-le v2, v3, :cond_1c

    .line 1091
    :cond_10
    iget v2, p0, Lvm2/compiler/FuncState;->pc:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lvm2/compiler/Constants;->realloc([II)[I

    move-result-object v1

    iput-object v1, v0, Lvm2/Prototype;->code:[I

    .line 1092
    :cond_1c
    iget-object v1, v0, Lvm2/Prototype;->code:[I

    iget v2, p0, Lvm2/compiler/FuncState;->pc:I

    aput p1, v1, v2

    .line 1094
    iget-object p1, v0, Lvm2/Prototype;->lineinfo:[I

    if-eqz p1, :cond_2b

    add-int/lit8 v1, v2, 0x1

    array-length v3, p1

    if-le v1, v3, :cond_35

    :cond_2b
    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 1095
    invoke-static {p1, v2}, Lvm2/compiler/Constants;->realloc([II)[I

    move-result-object p1

    iput-object p1, v0, Lvm2/Prototype;->lineinfo:[I

    .line 1097
    :cond_35
    iget-object p1, v0, Lvm2/Prototype;->lineinfo:[I

    iget v0, p0, Lvm2/compiler/FuncState;->pc:I

    aput p2, p1, v0

    add-int/lit8 p1, v0, 0x1

    .line 1098
    iput p1, p0, Lvm2/compiler/FuncState;->pc:I

    return v0
.end method

.method public codeABC(IIII)I
    .registers 8

    .line 1103
    invoke-static {p1}, Lvm2/Lua;->getOpMode(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    invoke-static {v0}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 1104
    invoke-static {p1}, Lvm2/Lua;->getBMode(I)I

    move-result v0

    if-nez v0, :cond_19

    if-nez p3, :cond_17

    goto :goto_19

    :cond_17
    move v0, v1

    goto :goto_1a

    :cond_19
    :goto_19
    move v0, v2

    :goto_1a
    invoke-static {v0}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 1105
    invoke-static {p1}, Lvm2/Lua;->getCMode(I)I

    move-result v0

    if-nez v0, :cond_25

    if-nez p4, :cond_26

    :cond_25
    move v1, v2

    :cond_26
    invoke-static {v1}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 1106
    invoke-static {p1, p2, p3, p4}, Lvm2/compiler/Constants;->CREATE_ABC(IIII)I

    move-result p1

    iget-object p2, p0, Lvm2/compiler/FuncState;->ls:Lvm2/compiler/LexState;

    iget p2, p2, Lvm2/compiler/LexState;->lastline:I

    invoke-virtual {p0, p1, p2}, Lvm2/compiler/FuncState;->code(II)I

    move-result p1

    return p1
.end method

.method public codeABx(III)I
    .registers 8

    .line 1111
    invoke-static {p1}, Lvm2/Lua;->getOpMode(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_12

    invoke-static {p1}, Lvm2/Lua;->getOpMode(I)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_10

    goto :goto_12

    :cond_10
    move v0, v1

    goto :goto_13

    :cond_12
    :goto_12
    move v0, v2

    :goto_13
    invoke-static {v0}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 1112
    invoke-static {p1}, Lvm2/Lua;->getCMode(I)I

    move-result v0

    if-nez v0, :cond_1e

    move v0, v2

    goto :goto_1f

    :cond_1e
    move v0, v1

    :goto_1f
    invoke-static {v0}, Lvm2/compiler/Constants;->_assert(Z)V

    if-ltz p3, :cond_2a

    const v0, 0x3ffff

    if-gt p3, v0, :cond_2a

    move v1, v2

    .line 1113
    :cond_2a
    invoke-static {v1}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 1114
    invoke-static {p1, p2, p3}, Lvm2/compiler/Constants;->CREATE_ABx(III)I

    move-result p1

    iget-object p2, p0, Lvm2/compiler/FuncState;->ls:Lvm2/compiler/LexState;

    iget p2, p2, Lvm2/compiler/LexState;->lastline:I

    invoke-virtual {p0, p1, p2}, Lvm2/compiler/FuncState;->code(II)I

    move-result p1

    return p1
.end method

.method public codeAsBx(III)I
    .registers 5

    const v0, 0x1ffff

    add-int/2addr p3, v0

    .line 80
    invoke-virtual {p0, p1, p2, p3}, Lvm2/compiler/FuncState;->codeABx(III)I

    move-result p1

    return p1
.end method

.method public codeK(II)I
    .registers 5

    const v0, 0x3ffff

    const/4 v1, 0x0

    if-gt p2, v0, :cond_b

    .line 1124
    invoke-virtual {p0, v1, p1, p2}, Lvm2/compiler/FuncState;->codeABx(III)I

    move-result p1

    return p1

    :cond_b
    const/4 v0, 0x3

    .line 1126
    invoke-virtual {p0, v0, p1, v1}, Lvm2/compiler/FuncState;->codeABx(III)I

    move-result p1

    .line 1127
    invoke-virtual {p0, p2}, Lvm2/compiler/FuncState;->codeextraarg(I)I

    return p1
.end method

.method public code_label(III)I
    .registers 5

    .line 563
    invoke-virtual {p0}, Lvm2/compiler/FuncState;->getlabel()I

    const/4 v0, 0x2

    .line 564
    invoke-virtual {p0, v0, p1, p2, p3}, Lvm2/compiler/FuncState;->codeABC(IIII)I

    move-result p1

    return p1
.end method

.method public codearith(ILvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;I)V
    .registers 8

    .line 913
    invoke-virtual {p0, p1, p2, p3}, Lvm2/compiler/FuncState;->constfolding(ILvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/16 v0, 0x14

    const/4 v1, 0x0

    if-eq p1, v0, :cond_15

    const/16 v0, 0xd

    if-eq p1, v0, :cond_15

    .line 916
    invoke-virtual {p0, p3}, Lvm2/compiler/FuncState;->exp2RK(Lvm2/compiler/LexState$expdesc;)I

    move-result v0

    goto :goto_16

    :cond_15
    move v0, v1

    .line 918
    :goto_16
    invoke-virtual {p0, p2}, Lvm2/compiler/FuncState;->exp2RK(Lvm2/compiler/LexState$expdesc;)I

    move-result v2

    if-le v2, v0, :cond_23

    .line 920
    invoke-virtual {p0, p2}, Lvm2/compiler/FuncState;->freeexp(Lvm2/compiler/LexState$expdesc;)V

    .line 921
    invoke-virtual {p0, p3}, Lvm2/compiler/FuncState;->freeexp(Lvm2/compiler/LexState$expdesc;)V

    goto :goto_29

    .line 923
    :cond_23
    invoke-virtual {p0, p3}, Lvm2/compiler/FuncState;->freeexp(Lvm2/compiler/LexState$expdesc;)V

    .line 924
    invoke-virtual {p0, p2}, Lvm2/compiler/FuncState;->freeexp(Lvm2/compiler/LexState$expdesc;)V

    .line 926
    :goto_29
    iget-object p3, p2, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    invoke-virtual {p0, p1, v1, v2, v0}, Lvm2/compiler/FuncState;->codeABC(IIII)I

    move-result p1

    iput p1, p3, Lvm2/compiler/LexState$expdesc$U;->info:I

    const/16 p1, 0xb

    .line 927
    iput p1, p2, Lvm2/compiler/LexState$expdesc;->k:I

    .line 928
    invoke-virtual {p0, p4}, Lvm2/compiler/FuncState;->fixline(I)V

    return-void
.end method

.method public codecomp(IILvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;)V
    .registers 8

    .line 933
    invoke-virtual {p0, p3}, Lvm2/compiler/FuncState;->exp2RK(Lvm2/compiler/LexState$expdesc;)I

    move-result v0

    .line 934
    invoke-virtual {p0, p4}, Lvm2/compiler/FuncState;->exp2RK(Lvm2/compiler/LexState$expdesc;)I

    move-result v1

    .line 935
    invoke-virtual {p0, p4}, Lvm2/compiler/FuncState;->freeexp(Lvm2/compiler/LexState$expdesc;)V

    .line 936
    invoke-virtual {p0, p3}, Lvm2/compiler/FuncState;->freeexp(Lvm2/compiler/LexState$expdesc;)V

    if-nez p2, :cond_18

    const/16 p4, 0x19

    if-eq p1, p4, :cond_18

    const/4 p2, 0x1

    move v2, v1

    move v1, v0

    move v0, v2

    .line 944
    :cond_18
    iget-object p4, p3, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    invoke-virtual {p0, p1, p2, v0, v1}, Lvm2/compiler/FuncState;->condjump(IIII)I

    move-result p1

    iput p1, p4, Lvm2/compiler/LexState$expdesc$U;->info:I

    const/16 p1, 0xa

    .line 945
    iput p1, p3, Lvm2/compiler/LexState$expdesc;->k:I

    return-void
.end method

.method public codeextraarg(I)I
    .registers 3

    const v0, 0x3ffffff

    if-gt p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 1118
    :goto_8
    invoke-static {v0}, Lvm2/compiler/Constants;->_assert(Z)V

    const/16 v0, 0x27

    .line 1119
    invoke-static {v0, p1}, Lvm2/compiler/Constants;->CREATE_Ax(II)I

    move-result p1

    iget-object v0, p0, Lvm2/compiler/FuncState;->ls:Lvm2/compiler/LexState;

    iget v0, v0, Lvm2/compiler/LexState;->lastline:I

    invoke-virtual {p0, p1, v0}, Lvm2/compiler/FuncState;->code(II)I

    move-result p1

    return p1
.end method

.method public codenot(Lvm2/compiler/LexState$expdesc;)V
    .registers 7

    .line 815
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->dischargevars(Lvm2/compiler/LexState$expdesc;)V

    .line 816
    iget v0, p1, Lvm2/compiler/LexState$expdesc;->k:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_32

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1d

    packed-switch v0, :pswitch_data_4e

    .line 841
    invoke-static {v2}, Lvm2/compiler/Constants;->_assert(Z)V

    goto :goto_35

    :pswitch_15
    const/4 v0, 0x3

    .line 825
    iput v0, p1, Lvm2/compiler/LexState$expdesc;->k:I

    goto :goto_35

    :pswitch_19
    const/4 v0, 0x2

    .line 819
    iput v0, p1, Lvm2/compiler/LexState$expdesc;->k:I

    goto :goto_35

    .line 834
    :cond_1d
    :pswitch_1d
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->discharge2anyreg(Lvm2/compiler/LexState$expdesc;)V

    .line 835
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->freeexp(Lvm2/compiler/LexState$expdesc;)V

    .line 836
    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    const/16 v3, 0x15

    iget v4, v0, Lvm2/compiler/LexState$expdesc$U;->info:I

    invoke-virtual {p0, v3, v2, v4, v2}, Lvm2/compiler/FuncState;->codeABC(IIII)I

    move-result v2

    iput v2, v0, Lvm2/compiler/LexState$expdesc$U;->info:I

    .line 837
    iput v1, p1, Lvm2/compiler/LexState$expdesc;->k:I

    goto :goto_35

    .line 829
    :cond_32
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->invertjump(Lvm2/compiler/LexState$expdesc;)V

    .line 847
    :goto_35
    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->f:Lvm2/compiler/IntPtr;

    iget v1, v0, Lvm2/compiler/IntPtr;->i:I

    .line 848
    iget-object v2, p1, Lvm2/compiler/LexState$expdesc;->t:Lvm2/compiler/IntPtr;

    iget v3, v2, Lvm2/compiler/IntPtr;->i:I

    iput v3, v0, Lvm2/compiler/IntPtr;->i:I

    .line 849
    iput v1, v2, Lvm2/compiler/IntPtr;->i:I

    .line 851
    iget v0, v0, Lvm2/compiler/IntPtr;->i:I

    invoke-virtual {p0, v0}, Lvm2/compiler/FuncState;->removevalues(I)V

    .line 852
    iget-object p1, p1, Lvm2/compiler/LexState$expdesc;->t:Lvm2/compiler/IntPtr;

    iget p1, p1, Lvm2/compiler/IntPtr;->i:I

    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->removevalues(I)V

    return-void

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_15
        :pswitch_19
        :pswitch_15
        :pswitch_15
        :pswitch_1d
    .end packed-switch
.end method

.method public concat(Lvm2/compiler/IntPtr;I)V
    .registers 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    return-void

    .line 436
    :cond_4
    iget v1, p1, Lvm2/compiler/IntPtr;->i:I

    if-ne v1, v0, :cond_b

    .line 437
    iput p2, p1, Lvm2/compiler/IntPtr;->i:I

    return-void

    .line 441
    :cond_b
    :goto_b
    invoke-virtual {p0, v1}, Lvm2/compiler/FuncState;->getjump(I)I

    move-result p1

    if-eq p1, v0, :cond_13

    move v1, p1

    goto :goto_b

    .line 444
    :cond_13
    invoke-virtual {p0, v1, p2}, Lvm2/compiler/FuncState;->fixjump(II)V

    return-void
.end method

.method public condjump(IIII)I
    .registers 5

    .line 313
    invoke-virtual {p0, p1, p2, p3, p4}, Lvm2/compiler/FuncState;->codeABC(IIII)I

    .line 314
    invoke-virtual {p0}, Lvm2/compiler/FuncState;->jump()I

    move-result p1

    return p1
.end method

.method public constfolding(ILvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;)Z
    .registers 8

    .line 869
    invoke-virtual {p2}, Lvm2/compiler/LexState$expdesc;->isnumeral()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6d

    invoke-virtual {p3}, Lvm2/compiler/LexState$expdesc;->isnumeral()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_6d

    :cond_e
    const/16 v0, 0x11

    if-eq p1, v0, :cond_16

    const/16 v0, 0x12

    if-ne p1, v0, :cond_25

    .line 871
    :cond_16
    iget-object v0, p3, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    invoke-virtual {v0}, Lvm2/compiler/LexState$expdesc$U;->nval()Lvm2/LuaValue;

    move-result-object v0

    sget-object v2, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    invoke-virtual {v0, v2}, Lvm2/LuaValue;->eq_b(Lvm2/LuaValue;)Z

    move-result v0

    if-eqz v0, :cond_25

    return v1

    .line 873
    :cond_25
    iget-object v0, p2, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    invoke-virtual {v0}, Lvm2/compiler/LexState$expdesc$U;->nval()Lvm2/LuaValue;

    move-result-object v0

    .line 874
    iget-object p3, p3, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    invoke-virtual {p3}, Lvm2/compiler/LexState$expdesc$U;->nval()Lvm2/LuaValue;

    move-result-object p3

    packed-switch p1, :pswitch_data_6e

    .line 902
    invoke-static {v1}, Lvm2/compiler/Constants;->_assert(Z)V

    const/4 p1, 0x0

    goto :goto_5b

    .line 895
    :pswitch_39
    invoke-virtual {v0}, Lvm2/LuaValue;->neg()Lvm2/LuaValue;

    move-result-object p1

    goto :goto_5b

    .line 892
    :pswitch_3e
    invoke-virtual {v0, p3}, Lvm2/LuaValue;->pow(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    goto :goto_5b

    .line 889
    :pswitch_43
    invoke-virtual {v0, p3}, Lvm2/LuaValue;->mod(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    goto :goto_5b

    .line 886
    :pswitch_48
    invoke-virtual {v0, p3}, Lvm2/LuaValue;->div(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    goto :goto_5b

    .line 883
    :pswitch_4d
    invoke-virtual {v0, p3}, Lvm2/LuaValue;->mul(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    goto :goto_5b

    .line 880
    :pswitch_52
    invoke-virtual {v0, p3}, Lvm2/LuaValue;->sub(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    goto :goto_5b

    .line 877
    :pswitch_57
    invoke-virtual {v0, p3}, Lvm2/LuaValue;->add(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    .line 906
    :goto_5b
    invoke-virtual {p1}, Lvm2/LuaValue;->todouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p3

    if-eqz p3, :cond_66

    return v1

    .line 908
    :cond_66
    iget-object p2, p2, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    invoke-virtual {p2, p1}, Lvm2/compiler/LexState$expdesc$U;->setNval(Lvm2/LuaValue;)V

    const/4 p1, 0x1

    return p1

    :cond_6d
    :goto_6d
    :pswitch_6d
    return v1

    :pswitch_data_6e
    .packed-switch 0xd
        :pswitch_6d
        :pswitch_57
        :pswitch_52
        :pswitch_4d
        :pswitch_48
        :pswitch_43
        :pswitch_3e
        :pswitch_39
    .end packed-switch
.end method

.method public discharge2anyreg(Lvm2/compiler/LexState$expdesc;)V
    .registers 4

    .line 608
    iget v0, p1, Lvm2/compiler/LexState$expdesc;->k:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_f

    const/4 v0, 0x1

    .line 609
    invoke-virtual {p0, v0}, Lvm2/compiler/FuncState;->reserveregs(I)V

    .line 610
    iget-short v1, p0, Lvm2/compiler/FuncState;->freereg:S

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Lvm2/compiler/FuncState;->discharge2reg(Lvm2/compiler/LexState$expdesc;I)V

    :cond_f
    return-void
.end method

.method public discharge2reg(Lvm2/compiler/LexState$expdesc;I)V
    .registers 7

    .line 568
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->dischargevars(Lvm2/compiler/LexState$expdesc;)V

    .line 569
    iget v0, p1, Lvm2/compiler/LexState$expdesc;->k:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_46

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_56

    if-eqz v0, :cond_14

    const/16 p1, 0xa

    if-ne v0, p1, :cond_15

    :cond_14
    move v1, v2

    .line 599
    :cond_15
    invoke-static {v1}, Lvm2/compiler/Constants;->_assert(Z)V

    return-void

    .line 594
    :pswitch_19
    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget v0, v0, Lvm2/compiler/LexState$expdesc$U;->info:I

    if-eq p2, v0, :cond_4d

    .line 595
    invoke-virtual {p0, v2, p2, v0, v1}, Lvm2/compiler/FuncState;->codeABC(IIII)I

    goto :goto_4d

    .line 585
    :pswitch_23
    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    invoke-virtual {v0}, Lvm2/compiler/LexState$expdesc$U;->nval()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvm2/compiler/FuncState;->numberK(Lvm2/LuaValue;)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lvm2/compiler/FuncState;->codeK(II)I

    goto :goto_4d

    .line 581
    :pswitch_31
    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget v0, v0, Lvm2/compiler/LexState$expdesc$U;->info:I

    invoke-virtual {p0, p2, v0}, Lvm2/compiler/FuncState;->codeK(II)I

    goto :goto_4d

    :pswitch_39
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3d

    goto :goto_3e

    :cond_3d
    move v2, v1

    .line 576
    :goto_3e
    invoke-virtual {p0, v3, p2, v2, v1}, Lvm2/compiler/FuncState;->codeABC(IIII)I

    goto :goto_4d

    .line 571
    :pswitch_42
    invoke-virtual {p0, p2, v2}, Lvm2/compiler/FuncState;->nil(II)V

    goto :goto_4d

    .line 589
    :cond_46
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->getcodePtr(Lvm2/compiler/LexState$expdesc;)Lvm2/compiler/InstructionPtr;

    move-result-object v0

    .line 590
    invoke-static {v0, p2}, Lvm2/compiler/Constants;->SETARG_A(Lvm2/compiler/InstructionPtr;I)V

    .line 603
    :cond_4d
    :goto_4d
    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iput p2, v0, Lvm2/compiler/LexState$expdesc$U;->info:I

    const/4 p2, 0x6

    .line 604
    iput p2, p1, Lvm2/compiler/LexState$expdesc;->k:I

    return-void

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_42
        :pswitch_39
        :pswitch_39
        :pswitch_31
        :pswitch_23
        :pswitch_19
    .end packed-switch
.end method

.method public dischargejpc()V
    .registers 4

    .line 404
    iget-object v0, p0, Lvm2/compiler/FuncState;->jpc:Lvm2/compiler/IntPtr;

    iget v0, v0, Lvm2/compiler/IntPtr;->i:I

    iget v1, p0, Lvm2/compiler/FuncState;->pc:I

    const/16 v2, 0xff

    invoke-virtual {p0, v0, v1, v2, v1}, Lvm2/compiler/FuncState;->patchlistaux(IIII)V

    .line 405
    iget-object v0, p0, Lvm2/compiler/FuncState;->jpc:Lvm2/compiler/IntPtr;

    const/4 v1, -0x1

    iput v1, v0, Lvm2/compiler/IntPtr;->i:I

    return-void
.end method

.method public dischargevars(Lvm2/compiler/LexState$expdesc;)V
    .registers 8

    .line 531
    iget v0, p1, Lvm2/compiler/LexState$expdesc;->k:I

    const/4 v1, 0x6

    const/4 v2, 0x7

    if-eq v0, v2, :cond_4e

    const/16 v3, 0x8

    const/16 v4, 0xb

    const/4 v5, 0x0

    if-eq v0, v3, :cond_40

    const/16 v3, 0x9

    if-eq v0, v3, :cond_1e

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1a

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1a

    return-void

    .line 554
    :cond_1a
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->setoneret(Lvm2/compiler/LexState$expdesc;)V

    return-void

    .line 543
    :cond_1e
    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget-short v0, v0, Lvm2/compiler/LexState$expdesc$U;->ind_idx:S

    invoke-virtual {p0, v0}, Lvm2/compiler/FuncState;->freereg(I)V

    .line 544
    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget-short v3, v0, Lvm2/compiler/LexState$expdesc$U;->ind_vt:S

    if-ne v3, v2, :cond_31

    .line 545
    iget-short v0, v0, Lvm2/compiler/LexState$expdesc$U;->ind_t:S

    invoke-virtual {p0, v0}, Lvm2/compiler/FuncState;->freereg(I)V

    move v1, v2

    .line 548
    :cond_31
    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget-short v2, v0, Lvm2/compiler/LexState$expdesc$U;->ind_t:S

    iget-short v3, v0, Lvm2/compiler/LexState$expdesc$U;->ind_idx:S

    invoke-virtual {p0, v1, v5, v2, v3}, Lvm2/compiler/FuncState;->codeABC(IIII)I

    move-result v1

    iput v1, v0, Lvm2/compiler/LexState$expdesc$U;->info:I

    .line 549
    iput v4, p1, Lvm2/compiler/LexState$expdesc;->k:I

    return-void

    .line 537
    :cond_40
    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    const/4 v1, 0x5

    iget v2, v0, Lvm2/compiler/LexState$expdesc$U;->info:I

    invoke-virtual {p0, v1, v5, v2, v5}, Lvm2/compiler/FuncState;->codeABC(IIII)I

    move-result v1

    iput v1, v0, Lvm2/compiler/LexState$expdesc$U;->info:I

    .line 538
    iput v4, p1, Lvm2/compiler/LexState$expdesc;->k:I

    return-void

    .line 533
    :cond_4e
    iput v1, p1, Lvm2/compiler/LexState$expdesc;->k:I

    return-void
.end method

.method public enterblock(Lvm2/compiler/FuncState$BlockCnt;Z)V
    .registers 5

    .line 210
    iput-boolean p2, p1, Lvm2/compiler/FuncState$BlockCnt;->isloop:Z

    .line 211
    iget-short p2, p0, Lvm2/compiler/FuncState;->nactvar:S

    iput-short p2, p1, Lvm2/compiler/FuncState$BlockCnt;->nactvar:S

    .line 212
    iget-object v0, p0, Lvm2/compiler/FuncState;->ls:Lvm2/compiler/LexState;

    iget-object v0, v0, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget v1, v0, Lvm2/compiler/LexState$Dyndata;->n_label:I

    int-to-short v1, v1

    iput-short v1, p1, Lvm2/compiler/FuncState$BlockCnt;->firstlabel:S

    .line 213
    iget v0, v0, Lvm2/compiler/LexState$Dyndata;->n_gt:I

    int-to-short v0, v0

    iput-short v0, p1, Lvm2/compiler/FuncState$BlockCnt;->firstgoto:S

    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p1, Lvm2/compiler/FuncState$BlockCnt;->upval:Z

    .line 215
    iget-object v1, p0, Lvm2/compiler/FuncState;->bl:Lvm2/compiler/FuncState$BlockCnt;

    iput-object v1, p1, Lvm2/compiler/FuncState$BlockCnt;->previous:Lvm2/compiler/FuncState$BlockCnt;

    .line 216
    iput-object p1, p0, Lvm2/compiler/FuncState;->bl:Lvm2/compiler/FuncState$BlockCnt;

    .line 217
    iget-short p1, p0, Lvm2/compiler/FuncState;->freereg:S

    if-ne p1, p2, :cond_22

    const/4 v0, 0x1

    :cond_22
    invoke-static {v0}, Lvm2/compiler/Constants;->_assert(Z)V

    return-void
.end method

.method public errorlimit(ILjava/lang/String;)V
    .registers 7

    .line 112
    iget-object v0, p0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iget v0, v0, Lvm2/Prototype;->linedefined:I

    const-string v1, " "

    if-nez v0, :cond_28

    .line 113
    iget-object v0, p0, Lvm2/compiler/FuncState;->ls:Lvm2/compiler/LexState;

    iget-object v0, v0, Lvm2/compiler/LexState;->L:Lvm2/compiler/LuaC$CompileState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "main function has more than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvm2/compiler/LuaC$CompileState;->pushfstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_53

    .line 114
    :cond_28
    iget-object v0, p0, Lvm2/compiler/FuncState;->ls:Lvm2/compiler/LexState;

    iget-object v0, v0, Lvm2/compiler/LexState;->L:Lvm2/compiler/LuaC$CompileState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "function at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iget v3, v3, Lvm2/Prototype;->linedefined:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has more than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvm2/compiler/LuaC$CompileState;->pushfstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    :goto_53
    iget-object p2, p0, Lvm2/compiler/FuncState;->ls:Lvm2/compiler/LexState;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lvm2/compiler/LexState;->lexerror(Ljava/lang/String;I)V

    return-void
.end method

.method public exp2RK(Lvm2/compiler/LexState$expdesc;)I
    .registers 8

    .line 672
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->exp2val(Lvm2/compiler/LexState$expdesc;)V

    .line 673
    iget v0, p1, Lvm2/compiler/LexState$expdesc;->k:I

    const/16 v1, 0xff

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_30

    if-eq v0, v2, :cond_30

    const/4 v5, 0x3

    if-eq v0, v5, :cond_30

    if-eq v0, v3, :cond_25

    const/4 v2, 0x5

    if-eq v0, v2, :cond_17

    goto :goto_52

    .line 686
    :cond_17
    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    invoke-virtual {v0}, Lvm2/compiler/LexState$expdesc$U;->nval()Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {p0, v2}, Lvm2/compiler/FuncState;->numberK(Lvm2/LuaValue;)I

    move-result v2

    iput v2, v0, Lvm2/compiler/LexState$expdesc$U;->info:I

    .line 687
    iput v3, p1, Lvm2/compiler/LexState$expdesc;->k:I

    .line 691
    :cond_25
    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget v0, v0, Lvm2/compiler/LexState$expdesc$U;->info:I

    if-gt v0, v1, :cond_52

    .line 692
    invoke-static {v0}, Lvm2/Lua;->RKASK(I)I

    move-result p1

    return p1

    .line 677
    :cond_30
    iget v5, p0, Lvm2/compiler/FuncState;->nk:I

    if-gt v5, v1, :cond_52

    .line 678
    iget-object v1, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    if-ne v0, v4, :cond_3d

    invoke-virtual {p0}, Lvm2/compiler/FuncState;->nilK()I

    move-result v0

    goto :goto_45

    :cond_3d
    if-ne v0, v2, :cond_40

    goto :goto_41

    :cond_40
    const/4 v4, 0x0

    .line 679
    :goto_41
    invoke-virtual {p0, v4}, Lvm2/compiler/FuncState;->boolK(Z)I

    move-result v0

    :goto_45
    iput v0, v1, Lvm2/compiler/LexState$expdesc$U;->info:I

    .line 680
    iput v3, p1, Lvm2/compiler/LexState$expdesc;->k:I

    .line 681
    iget-object p1, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget p1, p1, Lvm2/compiler/LexState$expdesc$U;->info:I

    invoke-static {p1}, Lvm2/Lua;->RKASK(I)I

    move-result p1

    return p1

    .line 700
    :cond_52
    :goto_52
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->exp2anyreg(Lvm2/compiler/LexState$expdesc;)I

    move-result p1

    return p1
.end method

.method public exp2anyreg(Lvm2/compiler/LexState$expdesc;)I
    .registers 4

    .line 646
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->dischargevars(Lvm2/compiler/LexState$expdesc;)V

    .line 647
    iget v0, p1, Lvm2/compiler/LexState$expdesc;->k:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_23

    .line 648
    invoke-virtual {p1}, Lvm2/compiler/LexState$expdesc;->hasjumps()Z

    move-result v0

    if-nez v0, :cond_13

    .line 649
    iget-object p1, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget p1, p1, Lvm2/compiler/LexState$expdesc$U;->info:I

    return p1

    .line 650
    :cond_13
    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget v0, v0, Lvm2/compiler/LexState$expdesc$U;->info:I

    iget-short v1, p0, Lvm2/compiler/FuncState;->nactvar:S

    if-lt v0, v1, :cond_23

    .line 651
    invoke-virtual {p0, p1, v0}, Lvm2/compiler/FuncState;->exp2reg(Lvm2/compiler/LexState$expdesc;I)V

    .line 652
    iget-object p1, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget p1, p1, Lvm2/compiler/LexState$expdesc$U;->info:I

    return p1

    .line 655
    :cond_23
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->exp2nextreg(Lvm2/compiler/LexState$expdesc;)V

    .line 656
    iget-object p1, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget p1, p1, Lvm2/compiler/LexState$expdesc$U;->info:I

    return p1
.end method

.method public exp2anyregup(Lvm2/compiler/LexState$expdesc;)V
    .registers 4

    .line 660
    iget v0, p1, Lvm2/compiler/LexState$expdesc;->k:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    invoke-virtual {p1}, Lvm2/compiler/LexState$expdesc;->hasjumps()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 661
    :cond_e
    :goto_e
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->exp2anyreg(Lvm2/compiler/LexState$expdesc;)I

    return-void
.end method

.method public exp2nextreg(Lvm2/compiler/LexState$expdesc;)V
    .registers 4

    .line 639
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->dischargevars(Lvm2/compiler/LexState$expdesc;)V

    .line 640
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->freeexp(Lvm2/compiler/LexState$expdesc;)V

    const/4 v0, 0x1

    .line 641
    invoke-virtual {p0, v0}, Lvm2/compiler/FuncState;->reserveregs(I)V

    .line 642
    iget-short v1, p0, Lvm2/compiler/FuncState;->freereg:S

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Lvm2/compiler/FuncState;->exp2reg(Lvm2/compiler/LexState$expdesc;I)V

    return-void
.end method

.method public exp2reg(Lvm2/compiler/LexState$expdesc;I)V
    .registers 8

    .line 615
    invoke-virtual {p0, p1, p2}, Lvm2/compiler/FuncState;->discharge2reg(Lvm2/compiler/LexState$expdesc;I)V

    .line 616
    iget v0, p1, Lvm2/compiler/LexState$expdesc;->k:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_12

    .line 617
    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->t:Lvm2/compiler/IntPtr;

    iget-object v2, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget v2, v2, Lvm2/compiler/LexState$expdesc$U;->info:I

    invoke-virtual {p0, v0, v2}, Lvm2/compiler/FuncState;->concat(Lvm2/compiler/IntPtr;I)V

    .line 618
    :cond_12
    invoke-virtual {p1}, Lvm2/compiler/LexState$expdesc;->hasjumps()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_5a

    .line 622
    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->t:Lvm2/compiler/IntPtr;

    iget v0, v0, Lvm2/compiler/IntPtr;->i:I

    invoke-virtual {p0, v0}, Lvm2/compiler/FuncState;->need_value(I)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->f:Lvm2/compiler/IntPtr;

    iget v0, v0, Lvm2/compiler/IntPtr;->i:I

    invoke-virtual {p0, v0}, Lvm2/compiler/FuncState;->need_value(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_31

    :cond_2e
    move v1, v2

    move v4, v1

    goto :goto_48

    .line 623
    :cond_31
    :goto_31
    iget v0, p1, Lvm2/compiler/LexState$expdesc;->k:I

    if-ne v0, v1, :cond_37

    move v0, v2

    goto :goto_3b

    .line 624
    :cond_37
    invoke-virtual {p0}, Lvm2/compiler/FuncState;->jump()I

    move-result v0

    :goto_3b
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 625
    invoke-virtual {p0, p2, v1, v3}, Lvm2/compiler/FuncState;->code_label(III)I

    move-result v4

    .line 626
    invoke-virtual {p0, p2, v3, v1}, Lvm2/compiler/FuncState;->code_label(III)I

    move-result v1

    .line 627
    invoke-virtual {p0, v0}, Lvm2/compiler/FuncState;->patchtohere(I)V

    .line 629
    :goto_48
    invoke-virtual {p0}, Lvm2/compiler/FuncState;->getlabel()I

    move-result v0

    .line 630
    iget-object v3, p1, Lvm2/compiler/LexState$expdesc;->f:Lvm2/compiler/IntPtr;

    iget v3, v3, Lvm2/compiler/IntPtr;->i:I

    invoke-virtual {p0, v3, v0, p2, v4}, Lvm2/compiler/FuncState;->patchlistaux(IIII)V

    .line 631
    iget-object v3, p1, Lvm2/compiler/LexState$expdesc;->t:Lvm2/compiler/IntPtr;

    iget v3, v3, Lvm2/compiler/IntPtr;->i:I

    invoke-virtual {p0, v3, v0, p2, v1}, Lvm2/compiler/FuncState;->patchlistaux(IIII)V

    .line 633
    :cond_5a
    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->f:Lvm2/compiler/IntPtr;

    iget-object v1, p1, Lvm2/compiler/LexState$expdesc;->t:Lvm2/compiler/IntPtr;

    iput v2, v1, Lvm2/compiler/IntPtr;->i:I

    iput v2, v0, Lvm2/compiler/IntPtr;->i:I

    .line 634
    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iput p2, v0, Lvm2/compiler/LexState$expdesc$U;->info:I

    const/4 p2, 0x6

    .line 635
    iput p2, p1, Lvm2/compiler/LexState$expdesc;->k:I

    return-void
.end method

.method public exp2val(Lvm2/compiler/LexState$expdesc;)V
    .registers 3

    .line 665
    invoke-virtual {p1}, Lvm2/compiler/LexState$expdesc;->hasjumps()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 666
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->exp2anyreg(Lvm2/compiler/LexState$expdesc;)I

    return-void

    .line 668
    :cond_a
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->dischargevars(Lvm2/compiler/LexState$expdesc;)V

    return-void
.end method

.method public fixjump(II)V
    .registers 6

    .line 318
    new-instance v0, Lvm2/compiler/InstructionPtr;

    iget-object v1, p0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iget-object v1, v1, Lvm2/Prototype;->code:[I

    invoke-direct {v0, v1, p1}, Lvm2/compiler/InstructionPtr;-><init>([II)V

    const/4 v1, 0x1

    add-int/2addr p1, v1

    sub-int p1, p2, p1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 320
    :goto_12
    invoke-static {v1}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 321
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const v1, 0x1ffff

    if-le p2, v1, :cond_25

    .line 322
    iget-object p2, p0, Lvm2/compiler/FuncState;->ls:Lvm2/compiler/LexState;

    const-string v1, "control structure too long"

    invoke-virtual {p2, v1}, Lvm2/compiler/LexState;->syntaxerror(Ljava/lang/String;)V

    .line 323
    :cond_25
    invoke-static {v0, p1}, Lvm2/compiler/Constants;->SETARG_sBx(Lvm2/compiler/InstructionPtr;I)V

    return-void
.end method

.method public fixline(I)V
    .registers 4

    .line 1082
    iget-object v0, p0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iget-object v0, v0, Lvm2/Prototype;->lineinfo:[I

    iget v1, p0, Lvm2/compiler/FuncState;->pc:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    return-void
.end method

.method public freeexp(Lvm2/compiler/LexState$expdesc;)V
    .registers 4

    .line 470
    iget v0, p1, Lvm2/compiler/LexState$expdesc;->k:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    .line 471
    iget-object p1, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget p1, p1, Lvm2/compiler/LexState$expdesc$U;->info:I

    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->freereg(I)V

    :cond_c
    return-void
.end method

.method public freereg(I)V
    .registers 4

    .line 463
    invoke-static {p1}, Lvm2/Lua;->ISK(I)Z

    move-result v0

    if-nez v0, :cond_18

    iget-short v0, p0, Lvm2/compiler/FuncState;->nactvar:S

    if-lt p1, v0, :cond_18

    .line 464
    iget-short v0, p0, Lvm2/compiler/FuncState;->freereg:S

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lvm2/compiler/FuncState;->freereg:S

    if-ne p1, v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 465
    :goto_15
    invoke-static {v1}, Lvm2/compiler/Constants;->_assert(Z)V

    :cond_18
    return-void
.end method

.method public getcode(Lvm2/compiler/LexState$expdesc;)I
    .registers 3

    .line 76
    iget-object v0, p0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iget-object v0, v0, Lvm2/Prototype;->code:[I

    iget-object p1, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget p1, p1, Lvm2/compiler/LexState$expdesc$U;->info:I

    aget p1, v0, p1

    return p1
.end method

.method public getcodePtr(Lvm2/compiler/LexState$expdesc;)Lvm2/compiler/InstructionPtr;
    .registers 4

    .line 72
    new-instance v0, Lvm2/compiler/InstructionPtr;

    iget-object v1, p0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iget-object v1, v1, Lvm2/Prototype;->code:[I

    iget-object p1, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget p1, p1, Lvm2/compiler/LexState$expdesc$U;->info:I

    invoke-direct {v0, v1, p1}, Lvm2/compiler/InstructionPtr;-><init>([II)V

    return-object v0
.end method

.method public getjump(I)I
    .registers 4

    .line 338
    iget-object v0, p0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iget-object v0, v0, Lvm2/Prototype;->code:[I

    aget v0, v0, p1

    invoke-static {v0}, Lvm2/Lua;->GETARG_sBx(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    return v1

    :cond_e
    add-int/lit8 p1, p1, 0x1

    add-int/2addr p1, v0

    return p1
.end method

.method public getjumpcontrol(I)Lvm2/compiler/InstructionPtr;
    .registers 5

    .line 350
    new-instance v0, Lvm2/compiler/InstructionPtr;

    iget-object v1, p0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iget-object v1, v1, Lvm2/Prototype;->code:[I

    invoke-direct {v0, v1, p1}, Lvm2/compiler/InstructionPtr;-><init>([II)V

    const/4 v1, 0x1

    if-lt p1, v1, :cond_28

    .line 351
    iget-object p1, v0, Lvm2/compiler/InstructionPtr;->code:[I

    iget v2, v0, Lvm2/compiler/InstructionPtr;->idx:I

    sub-int/2addr v2, v1

    aget p1, p1, v2

    invoke-static {p1}, Lvm2/Lua;->GET_OPCODE(I)I

    move-result p1

    invoke-static {p1}, Lvm2/Lua;->testTMode(I)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 352
    new-instance p1, Lvm2/compiler/InstructionPtr;

    iget-object v2, v0, Lvm2/compiler/InstructionPtr;->code:[I

    iget v0, v0, Lvm2/compiler/InstructionPtr;->idx:I

    sub-int/2addr v0, v1

    invoke-direct {p1, v2, v0}, Lvm2/compiler/InstructionPtr;-><init>([II)V

    return-object p1

    :cond_28
    return-object v0
.end method

.method public getlabel()I
    .registers 2

    .line 332
    iget v0, p0, Lvm2/compiler/FuncState;->pc:I

    iput v0, p0, Lvm2/compiler/FuncState;->lasttarget:I

    return v0
.end method

.method public getlocvar(I)Lvm2/LocVars;
    .registers 4

    .line 119
    iget-object v0, p0, Lvm2/compiler/FuncState;->ls:Lvm2/compiler/LexState;

    iget-object v0, v0, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget-object v0, v0, Lvm2/compiler/LexState$Dyndata;->actvar:[Lvm2/compiler/LexState$Vardesc;

    iget v1, p0, Lvm2/compiler/FuncState;->firstlocal:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    iget-short p1, p1, Lvm2/compiler/LexState$Vardesc;->idx:S

    .line 120
    iget-short v0, p0, Lvm2/compiler/FuncState;->nlocvars:S

    if-ge p1, v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    invoke-static {v0}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 121
    iget-object v0, p0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iget-object v0, v0, Lvm2/Prototype;->locvars:[Lvm2/LocVars;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public goiffalse(Lvm2/compiler/LexState$expdesc;)V
    .registers 6

    .line 793
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->dischargevars(Lvm2/compiler/LexState$expdesc;)V

    .line 794
    iget v0, p1, Lvm2/compiler/LexState$expdesc;->k:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1a

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1a

    const/16 v3, 0xa

    if-eq v0, v3, :cond_15

    .line 805
    invoke-virtual {p0, p1, v2}, Lvm2/compiler/FuncState;->jumponcond(Lvm2/compiler/LexState$expdesc;I)I

    move-result v0

    goto :goto_1b

    .line 796
    :cond_15
    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget v0, v0, Lvm2/compiler/LexState$expdesc$U;->info:I

    goto :goto_1b

    :cond_1a
    move v0, v1

    .line 809
    :goto_1b
    iget-object v2, p1, Lvm2/compiler/LexState$expdesc;->t:Lvm2/compiler/IntPtr;

    invoke-virtual {p0, v2, v0}, Lvm2/compiler/FuncState;->concat(Lvm2/compiler/IntPtr;I)V

    .line 810
    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->f:Lvm2/compiler/IntPtr;

    iget v0, v0, Lvm2/compiler/IntPtr;->i:I

    invoke-virtual {p0, v0}, Lvm2/compiler/FuncState;->patchtohere(I)V

    .line 811
    iget-object p1, p1, Lvm2/compiler/LexState$expdesc;->f:Lvm2/compiler/IntPtr;

    iput v1, p1, Lvm2/compiler/IntPtr;->i:I

    return-void
.end method

.method public goiftrue(Lvm2/compiler/LexState$expdesc;)V
    .registers 5

    .line 768
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->dischargevars(Lvm2/compiler/LexState$expdesc;)V

    .line 769
    iget v0, p1, Lvm2/compiler/LexState$expdesc;->k:I

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v0, v1, :cond_21

    const/16 v1, 0xa

    if-eq v0, v1, :cond_19

    const/4 v1, 0x4

    if-eq v0, v1, :cond_21

    const/4 v1, 0x5

    if-eq v0, v1, :cond_21

    const/4 v0, 0x0

    .line 782
    invoke-virtual {p0, p1, v0}, Lvm2/compiler/FuncState;->jumponcond(Lvm2/compiler/LexState$expdesc;I)I

    move-result v0

    goto :goto_22

    .line 771
    :cond_19
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->invertjump(Lvm2/compiler/LexState$expdesc;)V

    .line 772
    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget v0, v0, Lvm2/compiler/LexState$expdesc$U;->info:I

    goto :goto_22

    :cond_21
    move v0, v2

    .line 786
    :goto_22
    iget-object v1, p1, Lvm2/compiler/LexState$expdesc;->f:Lvm2/compiler/IntPtr;

    invoke-virtual {p0, v1, v0}, Lvm2/compiler/FuncState;->concat(Lvm2/compiler/IntPtr;I)V

    .line 787
    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->t:Lvm2/compiler/IntPtr;

    iget v0, v0, Lvm2/compiler/IntPtr;->i:I

    invoke-virtual {p0, v0}, Lvm2/compiler/FuncState;->patchtohere(I)V

    .line 788
    iget-object p1, p1, Lvm2/compiler/LexState$expdesc;->t:Lvm2/compiler/IntPtr;

    iput v2, p1, Lvm2/compiler/IntPtr;->i:I

    return-void
.end method

.method public hasmultret(I)Z
    .registers 3

    .line 0
    const/16 v0, 0xc

    if-eq p1, v0, :cond_b

    const/16 v0, 0xd

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    return p1

    :cond_b
    :goto_b
    const/4 p1, 0x1

    return p1
.end method

.method public indexed(Lvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;)V
    .registers 5

    .line 860
    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget v1, v0, Lvm2/compiler/LexState$expdesc$U;->info:I

    int-to-short v1, v1

    iput-short v1, v0, Lvm2/compiler/LexState$expdesc$U;->ind_t:S

    .line 861
    invoke-virtual {p0, p2}, Lvm2/compiler/FuncState;->exp2RK(Lvm2/compiler/LexState$expdesc;)I

    move-result p2

    int-to-short p2, p2

    iput-short p2, v0, Lvm2/compiler/LexState$expdesc$U;->ind_idx:S

    .line 862
    iget p2, p1, Lvm2/compiler/LexState$expdesc;->k:I

    const/16 v0, 0x8

    if-eq p2, v0, :cond_1d

    invoke-static {p2}, Lvm2/compiler/FuncState;->vkisinreg(I)Z

    move-result p2

    if-eqz p2, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p2, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p2, 0x1

    :goto_1e
    invoke-static {p2}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 863
    iget-object p2, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget v1, p1, Lvm2/compiler/LexState$expdesc;->k:I

    if-ne v1, v0, :cond_28

    goto :goto_29

    :cond_28
    const/4 v0, 0x7

    :goto_29
    int-to-short v0, v0

    iput-short v0, p2, Lvm2/compiler/LexState$expdesc$U;->ind_vt:S

    const/16 p2, 0x9

    .line 864
    iput p2, p1, Lvm2/compiler/LexState$expdesc;->k:I

    return-void
.end method

.method public infix(ILvm2/compiler/LexState$expdesc;)V
    .registers 4

    const/16 v0, 0xd

    if-eq p1, v0, :cond_21

    const/16 v0, 0xe

    if-eq p1, v0, :cond_1d

    packed-switch p1, :pswitch_data_26

    .line 999
    invoke-virtual {p0, p2}, Lvm2/compiler/FuncState;->exp2RK(Lvm2/compiler/LexState$expdesc;)I

    return-void

    .line 985
    :pswitch_f
    invoke-virtual {p0, p2}, Lvm2/compiler/FuncState;->exp2nextreg(Lvm2/compiler/LexState$expdesc;)V

    return-void

    .line 994
    :pswitch_13
    invoke-virtual {p2}, Lvm2/compiler/LexState$expdesc;->isnumeral()Z

    move-result p1

    if-nez p1, :cond_1c

    .line 995
    invoke-virtual {p0, p2}, Lvm2/compiler/FuncState;->exp2RK(Lvm2/compiler/LexState$expdesc;)I

    :cond_1c
    return-void

    .line 981
    :cond_1d
    invoke-virtual {p0, p2}, Lvm2/compiler/FuncState;->goiffalse(Lvm2/compiler/LexState$expdesc;)V

    return-void

    .line 977
    :cond_21
    invoke-virtual {p0, p2}, Lvm2/compiler/FuncState;->goiftrue(Lvm2/compiler/LexState$expdesc;)V

    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_f
    .end packed-switch
.end method

.method public invertjump(Lvm2/compiler/LexState$expdesc;)V
    .registers 6

    .line 742
    iget-object p1, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget p1, p1, Lvm2/compiler/LexState$expdesc$U;->info:I

    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->getjumpcontrol(I)Lvm2/compiler/InstructionPtr;

    move-result-object p1

    .line 743
    invoke-virtual {p1}, Lvm2/compiler/InstructionPtr;->get()I

    move-result v0

    invoke-static {v0}, Lvm2/Lua;->GET_OPCODE(I)I

    move-result v0

    invoke-static {v0}, Lvm2/Lua;->testTMode(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_32

    .line 744
    invoke-virtual {p1}, Lvm2/compiler/InstructionPtr;->get()I

    move-result v0

    invoke-static {v0}, Lvm2/Lua;->GET_OPCODE(I)I

    move-result v0

    const/16 v3, 0x1c

    if-eq v0, v3, :cond_32

    .line 745
    invoke-virtual {p1}, Lvm2/compiler/InstructionPtr;->get()I

    move-result v0

    invoke-static {v0}, Lvm2/Lua;->GET_OPCODE(I)I

    move-result v0

    const/16 v3, 0x1b

    if-eq v0, v3, :cond_32

    move v0, v2

    goto :goto_33

    :cond_32
    move v0, v1

    .line 743
    :goto_33
    invoke-static {v0}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 747
    invoke-virtual {p1}, Lvm2/compiler/InstructionPtr;->get()I

    move-result v0

    invoke-static {v0}, Lvm2/Lua;->GETARG_A(I)I

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_42

    :cond_41
    move v1, v2

    .line 749
    :goto_42
    invoke-static {p1, v1}, Lvm2/compiler/Constants;->SETARG_A(Lvm2/compiler/InstructionPtr;I)V

    return-void
.end method

.method public jump()I
    .registers 6

    .line 301
    iget-object v0, p0, Lvm2/compiler/FuncState;->jpc:Lvm2/compiler/IntPtr;

    iget v1, v0, Lvm2/compiler/IntPtr;->i:I

    const/4 v2, -0x1

    .line 302
    iput v2, v0, Lvm2/compiler/IntPtr;->i:I

    .line 303
    new-instance v0, Lvm2/compiler/IntPtr;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Lvm2/compiler/FuncState;->codeAsBx(III)I

    move-result v2

    invoke-direct {v0, v2}, Lvm2/compiler/IntPtr;-><init>(I)V

    .line 304
    invoke-virtual {p0, v0, v1}, Lvm2/compiler/FuncState;->concat(Lvm2/compiler/IntPtr;I)V

    .line 305
    iget v0, v0, Lvm2/compiler/IntPtr;->i:I

    return v0
.end method

.method public jumponcond(Lvm2/compiler/LexState$expdesc;I)I
    .registers 6

    .line 753
    iget v0, p1, Lvm2/compiler/LexState$expdesc;->k:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_27

    .line 754
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->getcode(Lvm2/compiler/LexState$expdesc;)I

    move-result v0

    .line 755
    invoke-static {v0}, Lvm2/Lua;->GET_OPCODE(I)I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_27

    .line 756
    iget p1, p0, Lvm2/compiler/FuncState;->pc:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    iput p1, p0, Lvm2/compiler/FuncState;->pc:I

    .line 757
    invoke-static {v0}, Lvm2/Lua;->GETARG_B(I)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p2, :cond_20

    move v1, v0

    :cond_20
    const/16 p2, 0x1b

    invoke-virtual {p0, p2, p1, v0, v1}, Lvm2/compiler/FuncState;->condjump(IIII)I

    move-result p1

    return p1

    .line 761
    :cond_27
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->discharge2anyreg(Lvm2/compiler/LexState$expdesc;)V

    .line 762
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->freeexp(Lvm2/compiler/LexState$expdesc;)V

    .line 763
    iget-object p1, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget p1, p1, Lvm2/compiler/LexState$expdesc$U;->info:I

    const/16 v0, 0x1c

    const/16 v1, 0xff

    invoke-virtual {p0, v0, v1, p1, p2}, Lvm2/compiler/FuncState;->condjump(IIII)I

    move-result p1

    return p1
.end method

.method public lastlistfield(Lvm2/compiler/LexState$ConsControl;)V
    .registers 5

    .line 257
    iget v0, p1, Lvm2/compiler/LexState$ConsControl;->tostore:I

    if-nez v0, :cond_5

    return-void

    .line 258
    :cond_5
    iget-object v0, p1, Lvm2/compiler/LexState$ConsControl;->v:Lvm2/compiler/LexState$expdesc;

    iget v0, v0, Lvm2/compiler/LexState$expdesc;->k:I

    invoke-virtual {p0, v0}, Lvm2/compiler/FuncState;->hasmultret(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 259
    iget-object v0, p1, Lvm2/compiler/LexState$ConsControl;->v:Lvm2/compiler/LexState$expdesc;

    invoke-virtual {p0, v0}, Lvm2/compiler/FuncState;->setmultret(Lvm2/compiler/LexState$expdesc;)V

    .line 260
    iget-object v0, p1, Lvm2/compiler/LexState$ConsControl;->t:Lvm2/compiler/LexState$expdesc;

    iget-object v0, v0, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget v0, v0, Lvm2/compiler/LexState$expdesc$U;->info:I

    iget v1, p1, Lvm2/compiler/LexState$ConsControl;->na:I

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lvm2/compiler/FuncState;->setlist(III)V

    .line 261
    iget v0, p1, Lvm2/compiler/LexState$ConsControl;->na:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lvm2/compiler/LexState$ConsControl;->na:I

    return-void

    .line 264
    :cond_27
    iget-object v0, p1, Lvm2/compiler/LexState$ConsControl;->v:Lvm2/compiler/LexState$expdesc;

    iget v1, v0, Lvm2/compiler/LexState$expdesc;->k:I

    if-eqz v1, :cond_30

    .line 265
    invoke-virtual {p0, v0}, Lvm2/compiler/FuncState;->exp2nextreg(Lvm2/compiler/LexState$expdesc;)V

    .line 266
    :cond_30
    iget-object v0, p1, Lvm2/compiler/LexState$ConsControl;->t:Lvm2/compiler/LexState$expdesc;

    iget-object v0, v0, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget v0, v0, Lvm2/compiler/LexState$expdesc$U;->info:I

    iget v1, p1, Lvm2/compiler/LexState$ConsControl;->na:I

    iget p1, p1, Lvm2/compiler/LexState$ConsControl;->tostore:I

    invoke-virtual {p0, v0, v1, p1}, Lvm2/compiler/FuncState;->setlist(III)V

    return-void
.end method

.method public leaveblock()V
    .registers 5

    .line 221
    iget-object v0, p0, Lvm2/compiler/FuncState;->bl:Lvm2/compiler/FuncState$BlockCnt;

    .line 222
    iget-object v1, v0, Lvm2/compiler/FuncState$BlockCnt;->previous:Lvm2/compiler/FuncState$BlockCnt;

    if-eqz v1, :cond_16

    iget-boolean v1, v0, Lvm2/compiler/FuncState$BlockCnt;->upval:Z

    if-eqz v1, :cond_16

    .line 224
    invoke-virtual {p0}, Lvm2/compiler/FuncState;->jump()I

    move-result v1

    .line 225
    iget-short v2, v0, Lvm2/compiler/FuncState$BlockCnt;->nactvar:S

    invoke-virtual {p0, v1, v2}, Lvm2/compiler/FuncState;->patchclose(II)V

    .line 226
    invoke-virtual {p0, v1}, Lvm2/compiler/FuncState;->patchtohere(I)V

    .line 228
    :cond_16
    iget-boolean v1, v0, Lvm2/compiler/FuncState$BlockCnt;->isloop:Z

    if-eqz v1, :cond_1f

    .line 229
    iget-object v1, p0, Lvm2/compiler/FuncState;->ls:Lvm2/compiler/LexState;

    invoke-virtual {v1}, Lvm2/compiler/LexState;->breaklabel()V

    .line 230
    :cond_1f
    iget-object v1, v0, Lvm2/compiler/FuncState$BlockCnt;->previous:Lvm2/compiler/FuncState$BlockCnt;

    iput-object v1, p0, Lvm2/compiler/FuncState;->bl:Lvm2/compiler/FuncState$BlockCnt;

    .line 231
    iget-short v1, v0, Lvm2/compiler/FuncState$BlockCnt;->nactvar:S

    invoke-virtual {p0, v1}, Lvm2/compiler/FuncState;->removevars(I)V

    .line 232
    iget-short v1, v0, Lvm2/compiler/FuncState$BlockCnt;->nactvar:S

    iget-short v2, p0, Lvm2/compiler/FuncState;->nactvar:S

    if-ne v1, v2, :cond_30

    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    invoke-static {v1}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 233
    iget-short v1, p0, Lvm2/compiler/FuncState;->nactvar:S

    iput-short v1, p0, Lvm2/compiler/FuncState;->freereg:S

    .line 234
    iget-object v1, p0, Lvm2/compiler/FuncState;->ls:Lvm2/compiler/LexState;

    iget-object v2, v1, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget-short v3, v0, Lvm2/compiler/FuncState$BlockCnt;->firstlabel:S

    iput v3, v2, Lvm2/compiler/LexState$Dyndata;->n_label:I

    .line 235
    iget-object v3, v0, Lvm2/compiler/FuncState$BlockCnt;->previous:Lvm2/compiler/FuncState$BlockCnt;

    if-eqz v3, :cond_48

    .line 236
    invoke-virtual {p0, v0}, Lvm2/compiler/FuncState;->movegotosout(Lvm2/compiler/FuncState$BlockCnt;)V

    return-void

    .line 237
    :cond_48
    iget-short v0, v0, Lvm2/compiler/FuncState$BlockCnt;->firstgoto:S

    iget v3, v2, Lvm2/compiler/LexState$Dyndata;->n_gt:I

    if-ge v0, v3, :cond_55

    .line 238
    iget-object v2, v2, Lvm2/compiler/LexState$Dyndata;->gt:[Lvm2/compiler/LexState$Labeldesc;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lvm2/compiler/LexState;->undefgoto(Lvm2/compiler/LexState$Labeldesc;)V

    :cond_55
    return-void
.end method

.method public markupval(I)V
    .registers 4

    .line 158
    iget-object v0, p0, Lvm2/compiler/FuncState;->bl:Lvm2/compiler/FuncState$BlockCnt;

    .line 159
    :goto_2
    iget-short v1, v0, Lvm2/compiler/FuncState$BlockCnt;->nactvar:S

    if-le v1, p1, :cond_9

    .line 160
    iget-object v0, v0, Lvm2/compiler/FuncState$BlockCnt;->previous:Lvm2/compiler/FuncState$BlockCnt;

    goto :goto_2

    :cond_9
    const/4 p1, 0x1

    .line 161
    iput-boolean p1, v0, Lvm2/compiler/FuncState$BlockCnt;->upval:Z

    return-void
.end method

.method public movegotosout(Lvm2/compiler/FuncState$BlockCnt;)V
    .registers 7

    .line 193
    iget-short v0, p1, Lvm2/compiler/FuncState$BlockCnt;->firstgoto:S

    .line 194
    iget-object v1, p0, Lvm2/compiler/FuncState;->ls:Lvm2/compiler/LexState;

    iget-object v1, v1, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget-object v1, v1, Lvm2/compiler/LexState$Dyndata;->gt:[Lvm2/compiler/LexState$Labeldesc;

    .line 197
    :cond_8
    :goto_8
    iget-object v2, p0, Lvm2/compiler/FuncState;->ls:Lvm2/compiler/LexState;

    iget-object v2, v2, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget v2, v2, Lvm2/compiler/LexState$Dyndata;->n_gt:I

    if-ge v0, v2, :cond_30

    .line 198
    aget-object v2, v1, v0

    .line 199
    iget-short v3, v2, Lvm2/compiler/LexState$Labeldesc;->nactvar:S

    iget-short v4, p1, Lvm2/compiler/FuncState$BlockCnt;->nactvar:S

    if-le v3, v4, :cond_25

    .line 200
    iget-boolean v3, p1, Lvm2/compiler/FuncState$BlockCnt;->upval:Z

    if-eqz v3, :cond_21

    .line 201
    iget v3, v2, Lvm2/compiler/LexState$Labeldesc;->pc:I

    invoke-virtual {p0, v3, v4}, Lvm2/compiler/FuncState;->patchclose(II)V

    .line 202
    :cond_21
    iget-short v3, p1, Lvm2/compiler/FuncState$BlockCnt;->nactvar:S

    iput-short v3, v2, Lvm2/compiler/LexState$Labeldesc;->nactvar:S

    .line 204
    :cond_25
    iget-object v2, p0, Lvm2/compiler/FuncState;->ls:Lvm2/compiler/LexState;

    invoke-virtual {v2, v0}, Lvm2/compiler/LexState;->findlabel(I)Z

    move-result v2

    if-nez v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_30
    return-void
.end method

.method public need_value(I)Z
    .registers 4

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1a

    .line 364
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->getjumpcontrol(I)Lvm2/compiler/InstructionPtr;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/compiler/InstructionPtr;->get()I

    move-result v0

    .line 365
    invoke-static {v0}, Lvm2/Lua;->GET_OPCODE(I)I

    move-result v0

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_15

    const/4 p1, 0x1

    return p1

    .line 363
    :cond_15
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->getjump(I)I

    move-result p1

    goto :goto_0

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public newupvalue(Lvm2/LuaString;Lvm2/compiler/LexState$expdesc;)I
    .registers 9

    .line 141
    iget-short v0, p0, Lvm2/compiler/FuncState;->nups:S

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    const-string v3, "upvalues"

    invoke-virtual {p0, v0, v2, v3}, Lvm2/compiler/FuncState;->checklimit(IILjava/lang/String;)V

    .line 142
    iget-object v0, p0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iget-object v2, v0, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    if-eqz v2, :cond_17

    iget-short v3, p0, Lvm2/compiler/FuncState;->nups:S

    add-int/2addr v3, v1

    array-length v4, v2

    if-le v3, v4, :cond_25

    .line 143
    :cond_17
    iget-short v3, p0, Lvm2/compiler/FuncState;->nups:S

    if-lez v3, :cond_1e

    mul-int/lit8 v3, v3, 0x2

    goto :goto_1f

    :cond_1e
    move v3, v1

    :goto_1f
    invoke-static {v2, v3}, Lvm2/compiler/Constants;->realloc([Lvm2/Upvaldesc;I)[Lvm2/Upvaldesc;

    move-result-object v2

    iput-object v2, v0, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    .line 144
    :cond_25
    iget-object v0, p0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iget-object v0, v0, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    iget-short v2, p0, Lvm2/compiler/FuncState;->nups:S

    new-instance v3, Lvm2/Upvaldesc;

    iget v4, p2, Lvm2/compiler/LexState$expdesc;->k:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_33

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    :goto_34
    iget-object p2, p2, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget p2, p2, Lvm2/compiler/LexState$expdesc$U;->info:I

    invoke-direct {v3, p1, v1, p2}, Lvm2/Upvaldesc;-><init>(Lvm2/LuaString;ZI)V

    aput-object v3, v0, v2

    .line 145
    iget-short p1, p0, Lvm2/compiler/FuncState;->nups:S

    add-int/lit8 p2, p1, 0x1

    int-to-short p2, p2

    iput-short p2, p0, Lvm2/compiler/FuncState;->nups:S

    return p1
.end method

.method public nil(II)V
    .registers 9

    add-int v0, p1, p2

    add-int/lit8 v1, v0, -0x1

    .line 278
    iget v2, p0, Lvm2/compiler/FuncState;->pc:I

    iget v3, p0, Lvm2/compiler/FuncState;->lasttarget:I

    const/4 v4, 0x4

    if-le v2, v3, :cond_49

    if-lez v2, :cond_49

    .line 279
    iget-object v3, p0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iget-object v3, v3, Lvm2/Prototype;->code:[I

    add-int/lit8 v2, v2, -0x1

    aget v2, v3, v2

    .line 280
    invoke-static {v2}, Lvm2/Lua;->GET_OPCODE(I)I

    move-result v3

    if-ne v3, v4, :cond_49

    .line 281
    invoke-static {v2}, Lvm2/Lua;->GETARG_A(I)I

    move-result v3

    .line 282
    invoke-static {v2}, Lvm2/Lua;->GETARG_B(I)I

    move-result v2

    add-int/2addr v2, v3

    if-gt v3, p1, :cond_2a

    add-int/lit8 v5, v2, 0x1

    if-le p1, v5, :cond_2e

    :cond_2a
    if-gt p1, v3, :cond_49

    if-gt v3, v0, :cond_49

    :cond_2e
    if-ge v3, p1, :cond_31

    move p1, v3

    :cond_31
    if-le v2, v1, :cond_34

    move v1, v2

    .line 289
    :cond_34
    new-instance p2, Lvm2/compiler/InstructionPtr;

    iget-object v0, p0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iget-object v0, v0, Lvm2/Prototype;->code:[I

    iget v2, p0, Lvm2/compiler/FuncState;->pc:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p2, v0, v2}, Lvm2/compiler/InstructionPtr;-><init>([II)V

    .line 290
    invoke-static {p2, p1}, Lvm2/compiler/Constants;->SETARG_A(Lvm2/compiler/InstructionPtr;I)V

    sub-int/2addr v1, p1

    .line 291
    invoke-static {p2, v1}, Lvm2/compiler/Constants;->SETARG_B(Lvm2/compiler/InstructionPtr;I)V

    return-void

    :cond_49
    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    .line 296
    invoke-virtual {p0, v4, p1, p2, v0}, Lvm2/compiler/FuncState;->codeABC(IIII)I

    return-void
.end method

.method public nilK()I
    .registers 2

    .line 507
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-virtual {p0, v0}, Lvm2/compiler/FuncState;->addk(Lvm2/LuaValue;)I

    move-result v0

    return v0
.end method

.method public numberK(Lvm2/LuaValue;)I
    .registers 7

    .line 493
    instance-of v0, p1, Lvm2/LuaDouble;

    if-eqz v0, :cond_12

    .line 494
    invoke-virtual {p1}, Lvm2/LuaValue;->todouble()D

    move-result-wide v0

    double-to-int v2, v0

    int-to-double v3, v2

    cmpl-double v0, v0, v3

    if-nez v0, :cond_12

    .line 497
    invoke-static {v2}, Lvm2/LuaInteger;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    .line 499
    :cond_12
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->addk(Lvm2/LuaValue;)I

    move-result p1

    return p1
.end method

.method public patchclose(II)V
    .registers 7

    const/4 v0, 0x1

    add-int/2addr p2, v0

    :goto_2
    const/4 v1, -0x1

    if-eq p1, v1, :cond_3e

    .line 420
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->getjump(I)I

    move-result v1

    .line 421
    iget-object v2, p0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iget-object v2, v2, Lvm2/Prototype;->code:[I

    aget v2, v2, p1

    invoke-static {v2}, Lvm2/Lua;->GET_OPCODE(I)I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_31

    iget-object v2, p0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iget-object v2, v2, Lvm2/Prototype;->code:[I

    aget v2, v2, p1

    .line 422
    invoke-static {v2}, Lvm2/Lua;->GETARG_A(I)I

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iget-object v2, v2, Lvm2/Prototype;->code:[I

    aget v2, v2, p1

    invoke-static {v2}, Lvm2/Lua;->GETARG_A(I)I

    move-result v2

    if-lt v2, p2, :cond_31

    :cond_2f
    move v2, v0

    goto :goto_32

    :cond_31
    const/4 v2, 0x0

    .line 421
    :goto_32
    invoke-static {v2}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 423
    iget-object v2, p0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iget-object v2, v2, Lvm2/Prototype;->code:[I

    invoke-static {v2, p1, p2}, Lvm2/compiler/Constants;->SETARG_A([III)V

    move p1, v1

    goto :goto_2

    :cond_3e
    return-void
.end method

.method public patchlist(II)V
    .registers 4

    .line 409
    iget v0, p0, Lvm2/compiler/FuncState;->pc:I

    if-ne p2, v0, :cond_8

    .line 410
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->patchtohere(I)V

    return-void

    :cond_8
    if-ge p2, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 412
    :goto_d
    invoke-static {v0}, Lvm2/compiler/Constants;->_assert(Z)V

    const/16 v0, 0xff

    .line 413
    invoke-virtual {p0, p1, p2, v0, p2}, Lvm2/compiler/FuncState;->patchlistaux(IIII)V

    return-void
.end method

.method public patchlistaux(IIII)V
    .registers 7

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_16

    .line 394
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->getjump(I)I

    move-result v0

    .line 395
    invoke-virtual {p0, p1, p3}, Lvm2/compiler/FuncState;->patchtestreg(II)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 396
    invoke-virtual {p0, p1, p2}, Lvm2/compiler/FuncState;->fixjump(II)V

    goto :goto_14

    .line 398
    :cond_11
    invoke-virtual {p0, p1, p4}, Lvm2/compiler/FuncState;->fixjump(II)V

    :goto_14
    move p1, v0

    goto :goto_0

    :cond_16
    return-void
.end method

.method public patchtestreg(II)Z
    .registers 6

    .line 373
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->getjumpcontrol(I)Lvm2/compiler/InstructionPtr;

    move-result-object p1

    .line 374
    invoke-virtual {p1}, Lvm2/compiler/InstructionPtr;->get()I

    move-result v0

    invoke-static {v0}, Lvm2/Lua;->GET_OPCODE(I)I

    move-result v0

    const/16 v1, 0x1c

    const/4 v2, 0x0

    if-eq v0, v1, :cond_12

    return v2

    :cond_12
    const/16 v0, 0xff

    if-eq p2, v0, :cond_24

    .line 377
    invoke-virtual {p1}, Lvm2/compiler/InstructionPtr;->get()I

    move-result v0

    invoke-static {v0}, Lvm2/Lua;->GETARG_B(I)I

    move-result v0

    if-eq p2, v0, :cond_24

    .line 378
    invoke-static {p1, p2}, Lvm2/compiler/Constants;->SETARG_A(Lvm2/compiler/InstructionPtr;I)V

    goto :goto_3d

    .line 381
    :cond_24
    invoke-virtual {p1}, Lvm2/compiler/InstructionPtr;->get()I

    move-result p2

    invoke-static {p2}, Lvm2/Lua;->GETARG_B(I)I

    move-result p2

    invoke-virtual {p1}, Lvm2/compiler/InstructionPtr;->get()I

    move-result v0

    invoke-static {v0}, Lvm2/Lua;->GETARG_C(I)I

    move-result v0

    const/16 v1, 0x1b

    invoke-static {v1, p2, v2, v0}, Lvm2/compiler/Constants;->CREATE_ABC(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Lvm2/compiler/InstructionPtr;->set(I)V

    :goto_3d
    const/4 p1, 0x1

    return p1
.end method

.method public patchtohere(I)V
    .registers 3

    .line 429
    invoke-virtual {p0}, Lvm2/compiler/FuncState;->getlabel()I

    .line 430
    iget-object v0, p0, Lvm2/compiler/FuncState;->jpc:Lvm2/compiler/IntPtr;

    invoke-virtual {p0, v0, p1}, Lvm2/compiler/FuncState;->concat(Lvm2/compiler/IntPtr;I)V

    return-void
.end method

.method public posfix(ILvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;I)V
    .registers 11

    const/16 v0, 0x19

    const/16 v1, 0x1a

    const/16 v2, 0x17

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_cc

    .line 1076
    invoke-static {v5}, Lvm2/compiler/Constants;->_assert(Z)V

    return-void

    .line 1017
    :pswitch_10
    iget-object p1, p2, Lvm2/compiler/LexState$expdesc;->f:Lvm2/compiler/IntPtr;

    iget p1, p1, Lvm2/compiler/IntPtr;->i:I

    if-ne p1, v3, :cond_17

    goto :goto_18

    :cond_17
    move v4, v5

    :goto_18
    invoke-static {v4}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 1018
    invoke-virtual {p0, p3}, Lvm2/compiler/FuncState;->dischargevars(Lvm2/compiler/LexState$expdesc;)V

    .line 1019
    iget-object p1, p3, Lvm2/compiler/LexState$expdesc;->t:Lvm2/compiler/IntPtr;

    iget-object p4, p2, Lvm2/compiler/LexState$expdesc;->t:Lvm2/compiler/IntPtr;

    iget p4, p4, Lvm2/compiler/IntPtr;->i:I

    invoke-virtual {p0, p1, p4}, Lvm2/compiler/FuncState;->concat(Lvm2/compiler/IntPtr;I)V

    .line 1021
    invoke-virtual {p2, p3}, Lvm2/compiler/LexState$expdesc;->setvalue(Lvm2/compiler/LexState$expdesc;)V

    return-void

    .line 1009
    :pswitch_2b
    iget-object p1, p2, Lvm2/compiler/LexState$expdesc;->t:Lvm2/compiler/IntPtr;

    iget p1, p1, Lvm2/compiler/IntPtr;->i:I

    if-ne p1, v3, :cond_32

    goto :goto_33

    :cond_32
    move v4, v5

    :goto_33
    invoke-static {v4}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 1010
    invoke-virtual {p0, p3}, Lvm2/compiler/FuncState;->dischargevars(Lvm2/compiler/LexState$expdesc;)V

    .line 1011
    iget-object p1, p3, Lvm2/compiler/LexState$expdesc;->f:Lvm2/compiler/IntPtr;

    iget-object p4, p2, Lvm2/compiler/LexState$expdesc;->f:Lvm2/compiler/IntPtr;

    iget p4, p4, Lvm2/compiler/IntPtr;->i:I

    invoke-virtual {p0, p1, p4}, Lvm2/compiler/FuncState;->concat(Lvm2/compiler/IntPtr;I)V

    .line 1013
    invoke-virtual {p2, p3}, Lvm2/compiler/LexState$expdesc;->setvalue(Lvm2/compiler/LexState$expdesc;)V

    return-void

    .line 1073
    :pswitch_46
    invoke-virtual {p0, v2, v5, p2, p3}, Lvm2/compiler/FuncState;->codecomp(IILvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;)V

    return-void

    .line 1070
    :pswitch_4a
    invoke-virtual {p0, v1, v5, p2, p3}, Lvm2/compiler/FuncState;->codecomp(IILvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;)V

    return-void

    .line 1067
    :pswitch_4e
    invoke-virtual {p0, v2, v4, p2, p3}, Lvm2/compiler/FuncState;->codecomp(IILvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;)V

    return-void

    .line 1064
    :pswitch_52
    invoke-virtual {p0, v1, v4, p2, p3}, Lvm2/compiler/FuncState;->codecomp(IILvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;)V

    return-void

    .line 1058
    :pswitch_56
    invoke-virtual {p0, v0, v4, p2, p3}, Lvm2/compiler/FuncState;->codecomp(IILvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;)V

    return-void

    .line 1061
    :pswitch_5a
    invoke-virtual {p0, v0, v5, p2, p3}, Lvm2/compiler/FuncState;->codecomp(IILvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;)V

    return-void

    .line 1025
    :pswitch_5e
    invoke-virtual {p0, p3}, Lvm2/compiler/FuncState;->exp2val(Lvm2/compiler/LexState$expdesc;)V

    .line 1026
    iget p1, p3, Lvm2/compiler/LexState$expdesc;->k:I

    const/16 v0, 0x16

    const/16 v1, 0xb

    if-ne p1, v1, :cond_a0

    .line 1027
    invoke-virtual {p0, p3}, Lvm2/compiler/FuncState;->getcode(Lvm2/compiler/LexState$expdesc;)I

    move-result p1

    invoke-static {p1}, Lvm2/Lua;->GET_OPCODE(I)I

    move-result p1

    if-ne p1, v0, :cond_a0

    .line 1028
    iget-object p1, p2, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget p1, p1, Lvm2/compiler/LexState$expdesc$U;->info:I

    invoke-virtual {p0, p3}, Lvm2/compiler/FuncState;->getcode(Lvm2/compiler/LexState$expdesc;)I

    move-result p4

    invoke-static {p4}, Lvm2/Lua;->GETARG_B(I)I

    move-result p4

    sub-int/2addr p4, v4

    if-ne p1, p4, :cond_83

    goto :goto_84

    :cond_83
    move v4, v5

    :goto_84
    invoke-static {v4}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 1029
    invoke-virtual {p0, p2}, Lvm2/compiler/FuncState;->freeexp(Lvm2/compiler/LexState$expdesc;)V

    .line 1030
    invoke-virtual {p0, p3}, Lvm2/compiler/FuncState;->getcodePtr(Lvm2/compiler/LexState$expdesc;)Lvm2/compiler/InstructionPtr;

    move-result-object p1

    iget-object p4, p2, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget p4, p4, Lvm2/compiler/LexState$expdesc$U;->info:I

    invoke-static {p1, p4}, Lvm2/compiler/Constants;->SETARG_B(Lvm2/compiler/InstructionPtr;I)V

    .line 1031
    iput v1, p2, Lvm2/compiler/LexState$expdesc;->k:I

    .line 1032
    iget-object p1, p2, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget-object p2, p3, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget p2, p2, Lvm2/compiler/LexState$expdesc$U;->info:I

    iput p2, p1, Lvm2/compiler/LexState$expdesc$U;->info:I

    return-void

    .line 1034
    :cond_a0
    invoke-virtual {p0, p3}, Lvm2/compiler/FuncState;->exp2nextreg(Lvm2/compiler/LexState$expdesc;)V

    .line 1035
    invoke-virtual {p0, v0, p2, p3, p4}, Lvm2/compiler/FuncState;->codearith(ILvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;I)V

    return-void

    :pswitch_a7
    const/16 p1, 0x13

    .line 1055
    invoke-virtual {p0, p1, p2, p3, p4}, Lvm2/compiler/FuncState;->codearith(ILvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;I)V

    return-void

    :pswitch_ad
    const/16 p1, 0x12

    .line 1052
    invoke-virtual {p0, p1, p2, p3, p4}, Lvm2/compiler/FuncState;->codearith(ILvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;I)V

    return-void

    :pswitch_b3
    const/16 p1, 0x11

    .line 1049
    invoke-virtual {p0, p1, p2, p3, p4}, Lvm2/compiler/FuncState;->codearith(ILvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;I)V

    return-void

    :pswitch_b9
    const/16 p1, 0x10

    .line 1046
    invoke-virtual {p0, p1, p2, p3, p4}, Lvm2/compiler/FuncState;->codearith(ILvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;I)V

    return-void

    :pswitch_bf
    const/16 p1, 0xf

    .line 1043
    invoke-virtual {p0, p1, p2, p3, p4}, Lvm2/compiler/FuncState;->codearith(ILvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;I)V

    return-void

    :pswitch_c5
    const/16 p1, 0xe

    .line 1040
    invoke-virtual {p0, p1, p2, p3, p4}, Lvm2/compiler/FuncState;->codearith(ILvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;I)V

    return-void

    nop

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_c5
        :pswitch_bf
        :pswitch_b9
        :pswitch_b3
        :pswitch_ad
        :pswitch_a7
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
        :pswitch_2b
        :pswitch_10
    .end packed-switch
.end method

.method public prefix(ILvm2/compiler/LexState$expdesc;I)V
    .registers 7

    .line 949
    new-instance v0, Lvm2/compiler/LexState$expdesc;

    invoke-direct {v0}, Lvm2/compiler/LexState$expdesc;-><init>()V

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 950
    invoke-virtual {v0, v1, v2}, Lvm2/compiler/LexState$expdesc;->init(II)V

    if-eqz p1, :cond_23

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_16

    .line 970
    invoke-static {v2}, Lvm2/compiler/Constants;->_assert(Z)V

    return-void

    .line 965
    :cond_16
    invoke-virtual {p0, p2}, Lvm2/compiler/FuncState;->exp2anyreg(Lvm2/compiler/LexState$expdesc;)I

    const/16 p1, 0xd

    .line 966
    invoke-virtual {p0, p1, p2, v0, p3}, Lvm2/compiler/FuncState;->codearith(ILvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;I)V

    return-void

    .line 962
    :cond_1f
    invoke-virtual {p0, p2}, Lvm2/compiler/FuncState;->codenot(Lvm2/compiler/LexState$expdesc;)V

    return-void

    .line 953
    :cond_23
    invoke-virtual {p2}, Lvm2/compiler/LexState$expdesc;->isnumeral()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 954
    iget-object p1, p2, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    invoke-virtual {p1}, Lvm2/compiler/LexState$expdesc$U;->nval()Lvm2/LuaValue;

    move-result-object p2

    invoke-virtual {p2}, Lvm2/LuaValue;->neg()Lvm2/LuaValue;

    move-result-object p2

    invoke-virtual {p1, p2}, Lvm2/compiler/LexState$expdesc$U;->setNval(Lvm2/LuaValue;)V

    return-void

    .line 956
    :cond_37
    invoke-virtual {p0, p2}, Lvm2/compiler/FuncState;->exp2anyreg(Lvm2/compiler/LexState$expdesc;)I

    const/16 p1, 0x14

    .line 957
    invoke-virtual {p0, p1, p2, v0, p3}, Lvm2/compiler/FuncState;->codearith(ILvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;I)V

    return-void
.end method

.method public removevalues(I)V
    .registers 3

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_d

    const/16 v0, 0xff

    .line 389
    invoke-virtual {p0, p1, v0}, Lvm2/compiler/FuncState;->patchtestreg(II)Z

    .line 388
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->getjump(I)I

    move-result p1

    goto :goto_0

    :cond_d
    return-void
.end method

.method public removevars(I)V
    .registers 5

    .line 125
    iget-object v0, p0, Lvm2/compiler/FuncState;->ls:Lvm2/compiler/LexState;

    iget-object v0, v0, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget v1, v0, Lvm2/compiler/LexState$Dyndata;->n_actvar:I

    iget-short v2, p0, Lvm2/compiler/FuncState;->nactvar:S

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    iput v1, v0, Lvm2/compiler/LexState$Dyndata;->n_actvar:I

    .line 126
    :goto_c
    iget-short v0, p0, Lvm2/compiler/FuncState;->nactvar:S

    if-le v0, p1, :cond_1e

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    .line 127
    iput-short v0, p0, Lvm2/compiler/FuncState;->nactvar:S

    invoke-virtual {p0, v0}, Lvm2/compiler/FuncState;->getlocvar(I)Lvm2/LocVars;

    move-result-object v0

    iget v1, p0, Lvm2/compiler/FuncState;->pc:I

    iput v1, v0, Lvm2/LocVars;->endpc:I

    goto :goto_c

    :cond_1e
    return-void
.end method

.method public reserveregs(I)V
    .registers 3

    .line 458
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->checkstack(I)V

    .line 459
    iget-short v0, p0, Lvm2/compiler/FuncState;->freereg:S

    add-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Lvm2/compiler/FuncState;->freereg:S

    return-void
.end method

.method public ret(II)V
    .registers 5

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x1f

    .line 309
    invoke-virtual {p0, v1, p1, p2, v0}, Lvm2/compiler/FuncState;->codeABC(IIII)I

    return-void
.end method

.method public searchupvalue(Lvm2/LuaString;)I
    .registers 5

    .line 133
    iget-object v0, p0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iget-object v0, v0, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    const/4 v1, 0x0

    .line 134
    :goto_5
    iget-short v2, p0, Lvm2/compiler/FuncState;->nups:S

    if-ge v1, v2, :cond_17

    .line 135
    aget-object v2, v0, v1

    iget-object v2, v2, Lvm2/Upvaldesc;->name:Lvm2/LuaString;

    invoke-virtual {v2, p1}, Lvm2/LuaString;->eq_b(Lvm2/LuaValue;)Z

    move-result v2

    if-eqz v2, :cond_14

    return v1

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_17
    const/4 p1, -0x1

    return p1
.end method

.method public searchvar(Lvm2/LuaString;)I
    .registers 4

    .line 150
    iget-short v0, p0, Lvm2/compiler/FuncState;->nactvar:S

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_16

    .line 151
    invoke-virtual {p0, v0}, Lvm2/compiler/FuncState;->getlocvar(I)Lvm2/LocVars;

    move-result-object v1

    iget-object v1, v1, Lvm2/LocVars;->varname:Lvm2/LuaString;

    invoke-virtual {p1, v1}, Lvm2/LuaString;->eq_b(Lvm2/LuaValue;)Z

    move-result v1

    if-eqz v1, :cond_13

    return v0

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_16
    const/4 p1, -0x1

    return p1
.end method

.method public self(Lvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;)V
    .registers 7

    .line 731
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->exp2anyreg(Lvm2/compiler/LexState$expdesc;)I

    .line 732
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->freeexp(Lvm2/compiler/LexState$expdesc;)V

    .line 733
    iget-short v0, p0, Lvm2/compiler/FuncState;->freereg:S

    const/4 v1, 0x2

    .line 734
    invoke-virtual {p0, v1}, Lvm2/compiler/FuncState;->reserveregs(I)V

    .line 735
    iget-object v1, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget v1, v1, Lvm2/compiler/LexState$expdesc$U;->info:I

    invoke-virtual {p0, p2}, Lvm2/compiler/FuncState;->exp2RK(Lvm2/compiler/LexState$expdesc;)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {p0, v3, v0, v1, v2}, Lvm2/compiler/FuncState;->codeABC(IIII)I

    .line 736
    invoke-virtual {p0, p2}, Lvm2/compiler/FuncState;->freeexp(Lvm2/compiler/LexState$expdesc;)V

    .line 737
    iget-object p2, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iput v0, p2, Lvm2/compiler/LexState$expdesc$U;->info:I

    const/4 p2, 0x6

    .line 738
    iput p2, p1, Lvm2/compiler/LexState$expdesc;->k:I

    return-void
.end method

.method public setlist(III)V
    .registers 8

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    .line 1133
    div-int/lit8 p2, p2, 0x32

    add-int/2addr p2, v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p3, v1, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    move v1, p3

    :goto_c
    if-eqz p3, :cond_10

    move p3, v0

    goto :goto_11

    :cond_10
    move p3, v2

    .line 1135
    :goto_11
    invoke-static {p3}, Lvm2/compiler/Constants;->_assert(Z)V

    const/16 p3, 0x1ff

    const/16 v3, 0x24

    if-gt p2, p3, :cond_1e

    .line 1137
    invoke-virtual {p0, v3, p1, v1, p2}, Lvm2/compiler/FuncState;->codeABC(IIII)I

    goto :goto_28

    .line 1139
    :cond_1e
    invoke-virtual {p0, v3, p1, v1, v2}, Lvm2/compiler/FuncState;->codeABC(IIII)I

    .line 1140
    iget-object p3, p0, Lvm2/compiler/FuncState;->ls:Lvm2/compiler/LexState;

    iget p3, p3, Lvm2/compiler/LexState;->lastline:I

    invoke-virtual {p0, p2, p3}, Lvm2/compiler/FuncState;->code(II)I

    :goto_28
    add-int/2addr p1, v0

    int-to-short p1, p1

    .line 1142
    iput-short p1, p0, Lvm2/compiler/FuncState;->freereg:S

    return-void
.end method

.method public setmultret(Lvm2/compiler/LexState$expdesc;)V
    .registers 3

    const/4 v0, -0x1

    .line 84
    invoke-virtual {p0, p1, v0}, Lvm2/compiler/FuncState;->setreturns(Lvm2/compiler/LexState$expdesc;I)V

    return-void
.end method

.method public setoneret(Lvm2/compiler/LexState$expdesc;)V
    .registers 4

    .line 521
    iget v0, p1, Lvm2/compiler/LexState$expdesc;->k:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_16

    const/4 v0, 0x6

    .line 522
    iput v0, p1, Lvm2/compiler/LexState$expdesc;->k:I

    .line 523
    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->getcode(Lvm2/compiler/LexState$expdesc;)I

    move-result p1

    invoke-static {p1}, Lvm2/Lua;->GETARG_A(I)I

    move-result p1

    iput p1, v0, Lvm2/compiler/LexState$expdesc$U;->info:I

    return-void

    :cond_16
    const/16 v1, 0xd

    if-ne v0, v1, :cond_26

    .line 525
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->getcodePtr(Lvm2/compiler/LexState$expdesc;)Lvm2/compiler/InstructionPtr;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lvm2/compiler/Constants;->SETARG_B(Lvm2/compiler/InstructionPtr;I)V

    const/16 v0, 0xb

    .line 526
    iput v0, p1, Lvm2/compiler/LexState$expdesc;->k:I

    :cond_26
    return-void
.end method

.method public setreturns(Lvm2/compiler/LexState$expdesc;I)V
    .registers 6

    .line 511
    iget v0, p1, Lvm2/compiler/LexState$expdesc;->k:I

    const/16 v1, 0xc

    const/4 v2, 0x1

    if-ne v0, v1, :cond_10

    .line 512
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->getcodePtr(Lvm2/compiler/LexState$expdesc;)Lvm2/compiler/InstructionPtr;

    move-result-object p1

    add-int/2addr p2, v2

    invoke-static {p1, p2}, Lvm2/compiler/Constants;->SETARG_C(Lvm2/compiler/InstructionPtr;I)V

    return-void

    :cond_10
    const/16 v1, 0xd

    if-ne v0, v1, :cond_28

    .line 514
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->getcodePtr(Lvm2/compiler/LexState$expdesc;)Lvm2/compiler/InstructionPtr;

    move-result-object v0

    add-int/2addr p2, v2

    invoke-static {v0, p2}, Lvm2/compiler/Constants;->SETARG_B(Lvm2/compiler/InstructionPtr;I)V

    .line 515
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->getcodePtr(Lvm2/compiler/LexState$expdesc;)Lvm2/compiler/InstructionPtr;

    move-result-object p1

    iget-short p2, p0, Lvm2/compiler/FuncState;->freereg:S

    invoke-static {p1, p2}, Lvm2/compiler/Constants;->SETARG_A(Lvm2/compiler/InstructionPtr;I)V

    .line 516
    invoke-virtual {p0, v2}, Lvm2/compiler/FuncState;->reserveregs(I)V

    :cond_28
    return-void
.end method

.method public storevar(Lvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;)V
    .registers 8

    .line 704
    iget v0, p1, Lvm2/compiler/LexState$expdesc;->k:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_37

    const/4 v2, 0x0

    const/16 v3, 0x9

    const/16 v4, 0x8

    if-eq v0, v4, :cond_28

    if-eq v0, v3, :cond_12

    .line 722
    invoke-static {v2}, Lvm2/compiler/Constants;->_assert(Z)V

    goto :goto_33

    .line 716
    :cond_12
    iget-object v0, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget-short v0, v0, Lvm2/compiler/LexState$expdesc$U;->ind_vt:S

    if-ne v0, v1, :cond_1a

    const/16 v4, 0xa

    .line 717
    :cond_1a
    invoke-virtual {p0, p2}, Lvm2/compiler/FuncState;->exp2RK(Lvm2/compiler/LexState$expdesc;)I

    move-result v0

    .line 718
    iget-object p1, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget-short v1, p1, Lvm2/compiler/LexState$expdesc$U;->ind_t:S

    iget-short p1, p1, Lvm2/compiler/LexState$expdesc$U;->ind_idx:S

    invoke-virtual {p0, v4, v1, p1, v0}, Lvm2/compiler/FuncState;->codeABC(IIII)I

    goto :goto_33

    .line 711
    :cond_28
    invoke-virtual {p0, p2}, Lvm2/compiler/FuncState;->exp2anyreg(Lvm2/compiler/LexState$expdesc;)I

    move-result v0

    .line 712
    iget-object p1, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget p1, p1, Lvm2/compiler/LexState$expdesc$U;->info:I

    invoke-virtual {p0, v3, v0, p1, v2}, Lvm2/compiler/FuncState;->codeABC(IIII)I

    .line 726
    :goto_33
    invoke-virtual {p0, p2}, Lvm2/compiler/FuncState;->freeexp(Lvm2/compiler/LexState$expdesc;)V

    return-void

    .line 706
    :cond_37
    invoke-virtual {p0, p2}, Lvm2/compiler/FuncState;->freeexp(Lvm2/compiler/LexState$expdesc;)V

    .line 707
    iget-object p1, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget p1, p1, Lvm2/compiler/LexState$expdesc$U;->info:I

    invoke-virtual {p0, p2, p1}, Lvm2/compiler/FuncState;->exp2reg(Lvm2/compiler/LexState$expdesc;I)V

    return-void
.end method

.method public stringK(Lvm2/LuaString;)I
    .registers 2

    .line 489
    invoke-virtual {p0, p1}, Lvm2/compiler/FuncState;->addk(Lvm2/LuaValue;)I

    move-result p1

    return p1
.end method

###### Class vm2.compiler.FuncState.BlockCnt (vm2.compiler.FuncState$BlockCnt)
.class Lvm2/compiler/FuncState$BlockCnt;
.super Ljava/lang/Object;
.source "FuncState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/compiler/FuncState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockCnt"
.end annotation


# instance fields
.field firstgoto:S

.field firstlabel:S

.field isloop:Z

.field nactvar:S

.field previous:Lvm2/compiler/FuncState$BlockCnt;

.field upval:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
