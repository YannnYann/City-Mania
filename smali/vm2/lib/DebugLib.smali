###### Class vm2.lib.DebugLib (vm2.lib.DebugLib)
.class public Lvm2/lib/DebugLib;
.super Lvm2/lib/TwoArgFunction;
.source "DebugLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/lib/DebugLib$debug;,
        Lvm2/lib/DebugLib$gethook;,
        Lvm2/lib/DebugLib$getinfo;,
        Lvm2/lib/DebugLib$getlocal;,
        Lvm2/lib/DebugLib$getmetatable;,
        Lvm2/lib/DebugLib$getregistry;,
        Lvm2/lib/DebugLib$getupvalue;,
        Lvm2/lib/DebugLib$getuservalue;,
        Lvm2/lib/DebugLib$sethook;,
        Lvm2/lib/DebugLib$setlocal;,
        Lvm2/lib/DebugLib$setmetatable;,
        Lvm2/lib/DebugLib$setupvalue;,
        Lvm2/lib/DebugLib$setuservalue;,
        Lvm2/lib/DebugLib$traceback;,
        Lvm2/lib/DebugLib$upvalueid;,
        Lvm2/lib/DebugLib$upvaluejoin;,
        Lvm2/lib/DebugLib$CallStack;,
        Lvm2/lib/DebugLib$CallFrame;,
        Lvm2/lib/DebugLib$NameWhat;,
        Lvm2/lib/DebugLib$DebugInfo;
    }
.end annotation


# static fields
.field static final ACTIVELINES:Lvm2/LuaString;

.field private static final CALL:Lvm2/LuaString;

.field public static CALLS:Z

.field private static final COUNT:Lvm2/LuaString;

.field static final CURRENTLINE:Lvm2/LuaString;

.field static final FUNC:Lvm2/LuaString;

.field static final ISTAILCALL:Lvm2/LuaString;

.field static final ISVARARG:Lvm2/LuaString;

.field static final LASTLINEDEFINED:Lvm2/LuaString;

.field private static final LINE:Lvm2/LuaString;

.field static final LINEDEFINED:Lvm2/LuaString;

.field static final LUA:Lvm2/LuaString;

.field static final NAME:Lvm2/LuaString;

.field static final NAMEWHAT:Lvm2/LuaString;

.field static final NPARAMS:Lvm2/LuaString;

.field static final NUPS:Lvm2/LuaString;

.field private static final QMARK:Lvm2/LuaString;

.field private static final RETURN:Lvm2/LuaString;

.field static final SHORT_SRC:Lvm2/LuaString;

.field static final SOURCE:Lvm2/LuaString;

.field public static TRACE:Z

.field static final WHAT:Lvm2/LuaString;


# instance fields
.field globals:Lvm2/Globals;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 84
    :try_start_2
    const-string v2, "CALLS"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    move v2, v1

    goto :goto_d

    :cond_c
    move v2, v0

    :goto_d
    sput-boolean v2, Lvm2/lib/DebugLib;->CALLS:Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_f

    .line 85
    :catch_f
    :try_start_f
    const-string v2, "TRACE"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    move v0, v1

    :cond_18
    sput-boolean v0, Lvm2/lib/DebugLib;->TRACE:Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_1a

    .line 88
    :catch_1a
    const-string v0, "Lua"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/DebugLib;->LUA:Lvm2/LuaString;

    .line 89
    const-string v0, "?"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/DebugLib;->QMARK:Lvm2/LuaString;

    .line 90
    const-string v0, "call"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/DebugLib;->CALL:Lvm2/LuaString;

    .line 91
    const-string v0, "line"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/DebugLib;->LINE:Lvm2/LuaString;

    .line 92
    const-string v0, "count"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/DebugLib;->COUNT:Lvm2/LuaString;

    .line 93
    const-string v0, "return"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/DebugLib;->RETURN:Lvm2/LuaString;

    .line 95
    const-string v0, "func"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/DebugLib;->FUNC:Lvm2/LuaString;

    .line 96
    const-string v0, "istailcall"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/DebugLib;->ISTAILCALL:Lvm2/LuaString;

    .line 97
    const-string v0, "isvararg"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/DebugLib;->ISVARARG:Lvm2/LuaString;

    .line 98
    const-string v0, "nups"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/DebugLib;->NUPS:Lvm2/LuaString;

    .line 99
    const-string v0, "nparams"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/DebugLib;->NPARAMS:Lvm2/LuaString;

    .line 100
    const-string v0, "name"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/DebugLib;->NAME:Lvm2/LuaString;

    .line 101
    const-string v0, "namewhat"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/DebugLib;->NAMEWHAT:Lvm2/LuaString;

    .line 102
    const-string v0, "what"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/DebugLib;->WHAT:Lvm2/LuaString;

    .line 103
    const-string v0, "source"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/DebugLib;->SOURCE:Lvm2/LuaString;

    .line 104
    const-string v0, "short_src"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/DebugLib;->SHORT_SRC:Lvm2/LuaString;

    .line 105
    const-string v0, "linedefined"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/DebugLib;->LINEDEFINED:Lvm2/LuaString;

    .line 106
    const-string v0, "lastlinedefined"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/DebugLib;->LASTLINEDEFINED:Lvm2/LuaString;

    .line 107
    const-string v0, "currentline"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/DebugLib;->CURRENTLINE:Lvm2/LuaString;

    .line 108
    const-string v0, "activelines"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    sput-object v0, Lvm2/lib/DebugLib;->ACTIVELINES:Lvm2/LuaString;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method

.method public static findsetreg(Lvm2/Prototype;II)I
    .registers 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_62

    .line 857
    iget-object v2, p0, Lvm2/Prototype;->code:[I

    aget v2, v2, v1

    .line 858
    invoke-static {v2}, Lvm2/Lua;->GET_OPCODE(I)I

    move-result v3

    .line 859
    invoke-static {v2}, Lvm2/Lua;->GETARG_A(I)I

    move-result v4

    const/4 v5, 0x4

    if-eq v3, v5, :cond_55

    const/16 v5, 0x18

    if-eq v3, v5, :cond_48

    const/16 v5, 0x1b

    if-eq v3, v5, :cond_45

    const/16 v5, 0x22

    if-eq v3, v5, :cond_40

    const/16 v5, 0x24

    if-eq v3, v5, :cond_37

    const/16 v2, 0x1d

    if-eq v3, v2, :cond_34

    const/16 v2, 0x1e

    if-eq v3, v2, :cond_34

    .line 893
    invoke-static {v3}, Lvm2/Lua;->testAMode(I)Z

    move-result v2

    if-eqz v2, :cond_5f

    if-ne p2, v4, :cond_5f

    goto :goto_5e

    :cond_34
    if-lt p2, v4, :cond_5f

    goto :goto_5e

    :cond_37
    shr-int/lit8 v2, v2, 0xe

    and-int/lit16 v2, v2, 0x1ff

    if-nez v2, :cond_5f

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    :cond_40
    add-int/lit8 v4, v4, 0x2

    if-lt p2, v4, :cond_5f

    goto :goto_5e

    :cond_45
    if-ne p2, v4, :cond_5f

    goto :goto_5e

    .line 877
    :cond_48
    invoke-static {v2}, Lvm2/Lua;->GETARG_sBx(I)I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v3, v2

    if-ge v1, v3, :cond_5f

    if-gt v3, p1, :cond_5f

    add-int/2addr v1, v2

    goto :goto_5f

    .line 862
    :cond_55
    invoke-static {v2}, Lvm2/Lua;->GETARG_B(I)I

    move-result v2

    if-gt v4, p2, :cond_5f

    add-int/2addr v4, v2

    if-gt p2, v4, :cond_5f

    :goto_5e
    move v0, v1

    :cond_5f
    :goto_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_62
    return v0
.end method

.method public static findupvalue(Lvm2/LuaClosure;I)Lvm2/LuaString;
    .registers 3

    .line 718
    iget-object v0, p0, Lvm2/LuaClosure;->upValues:[Lvm2/UpValue;

    if-eqz v0, :cond_2f

    if-lez p1, :cond_2f

    array-length v0, v0

    if-gt p1, v0, :cond_2f

    .line 719
    iget-object p0, p0, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    iget-object p0, p0, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    if-eqz p0, :cond_19

    array-length v0, p0

    if-gt p1, v0, :cond_19

    add-int/lit8 p1, p1, -0x1

    .line 720
    aget-object p0, p0, p1

    iget-object p0, p0, Lvm2/Upvaldesc;->name:Lvm2/LuaString;

    return-object p0

    .line 722
    :cond_19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lvm2/LuaString;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p0

    return-object p0

    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getfuncname(Lvm2/lib/DebugLib$CallFrame;)Lvm2/lib/DebugLib$NameWhat;
    .registers 4

    .line 742
    iget-object v0, p0, Lvm2/lib/DebugLib$CallFrame;->f:Lvm2/LuaFunction;

    invoke-virtual {v0}, Lvm2/LuaValue;->isclosure()Z

    move-result v0

    if-nez v0, :cond_16

    .line 743
    new-instance v0, Lvm2/lib/DebugLib$NameWhat;

    iget-object p0, p0, Lvm2/lib/DebugLib$CallFrame;->f:Lvm2/LuaFunction;

    invoke-virtual {p0}, Lvm2/LuaFunction;->classnamestub()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Java"

    invoke-direct {v0, p0, v1}, Lvm2/lib/DebugLib$NameWhat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 744
    :cond_16
    iget-object v0, p0, Lvm2/lib/DebugLib$CallFrame;->f:Lvm2/LuaFunction;

    invoke-virtual {v0}, Lvm2/LuaValue;->checkclosure()Lvm2/LuaClosure;

    move-result-object v0

    iget-object v0, v0, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    .line 745
    iget p0, p0, Lvm2/lib/DebugLib$CallFrame;->pc:I

    .line 746
    iget-object v1, v0, Lvm2/Prototype;->code:[I

    aget v1, v1, p0

    .line 748
    invoke-static {v1}, Lvm2/Lua;->GET_OPCODE(I)I

    move-result v2

    packed-switch v2, :pswitch_data_76

    :pswitch_2b
    const/4 p0, 0x0

    return-object p0

    .line 753
    :pswitch_2d
    new-instance p0, Lvm2/lib/DebugLib$NameWhat;

    const-string v0, "(for iterator)"

    const-string v1, "(for iterator"

    invoke-direct {p0, v0, v1}, Lvm2/lib/DebugLib$NameWhat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 751
    :pswitch_37
    invoke-static {v1}, Lvm2/Lua;->GETARG_A(I)I

    move-result v1

    invoke-static {v0, p0, v1}, Lvm2/lib/DebugLib;->getobjname(Lvm2/Prototype;II)Lvm2/lib/DebugLib$NameWhat;

    move-result-object p0

    return-object p0

    .line 769
    :pswitch_40
    sget-object p0, Lvm2/LuaValue;->LT:Lvm2/LuaString;

    goto :goto_69

    .line 760
    :pswitch_43
    sget-object p0, Lvm2/LuaValue;->EQ:Lvm2/LuaString;

    goto :goto_69

    .line 770
    :pswitch_46
    sget-object p0, Lvm2/LuaValue;->LE:Lvm2/LuaString;

    goto :goto_69

    .line 771
    :pswitch_49
    sget-object p0, Lvm2/LuaValue;->CONCAT:Lvm2/LuaString;

    goto :goto_69

    .line 767
    :pswitch_4c
    sget-object p0, Lvm2/LuaValue;->UNM:Lvm2/LuaString;

    goto :goto_69

    .line 766
    :pswitch_4f
    sget-object p0, Lvm2/LuaValue;->POW:Lvm2/LuaString;

    goto :goto_69

    .line 765
    :pswitch_52
    sget-object p0, Lvm2/LuaValue;->MOD:Lvm2/LuaString;

    goto :goto_69

    .line 764
    :pswitch_55
    sget-object p0, Lvm2/LuaValue;->DIV:Lvm2/LuaString;

    goto :goto_69

    .line 763
    :pswitch_58
    sget-object p0, Lvm2/LuaValue;->MUL:Lvm2/LuaString;

    goto :goto_69

    .line 762
    :pswitch_5b
    sget-object p0, Lvm2/LuaValue;->SUB:Lvm2/LuaString;

    goto :goto_69

    .line 761
    :pswitch_5e
    sget-object p0, Lvm2/LuaValue;->ADD:Lvm2/LuaString;

    goto :goto_69

    .line 768
    :pswitch_61
    sget-object p0, Lvm2/LuaValue;->LEN:Lvm2/LuaString;

    goto :goto_69

    .line 759
    :pswitch_64
    sget-object p0, Lvm2/LuaValue;->NEWINDEX:Lvm2/LuaString;

    goto :goto_69

    .line 757
    :pswitch_67
    sget-object p0, Lvm2/LuaValue;->INDEX:Lvm2/LuaString;

    .line 775
    :goto_69
    new-instance v0, Lvm2/lib/DebugLib$NameWhat;

    invoke-virtual {p0}, Lvm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object p0

    const-string v1, "metamethod"

    invoke-direct {v0, p0, v1}, Lvm2/lib/DebugLib$NameWhat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_76
    .packed-switch 0x6
        :pswitch_67
        :pswitch_67
        :pswitch_64
        :pswitch_2b
        :pswitch_64
        :pswitch_2b
        :pswitch_67
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_2b
        :pswitch_49
        :pswitch_46
        :pswitch_2b
        :pswitch_43
        :pswitch_40
        :pswitch_2b
        :pswitch_2b
        :pswitch_37
        :pswitch_37
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2d
    .end packed-switch
.end method

.method public static getobjname(Lvm2/Prototype;II)Lvm2/lib/DebugLib$NameWhat;
    .registers 8

    add-int/lit8 v0, p2, 0x1

    .line 781
    invoke-virtual {p0, v0, p1}, Lvm2/Prototype;->getlocalname(II)Lvm2/LuaString;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 783
    new-instance p0, Lvm2/lib/DebugLib$NameWhat;

    invoke-virtual {v0}, Lvm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object p1

    const-string p2, "local"

    invoke-direct {p0, p1, p2}, Lvm2/lib/DebugLib$NameWhat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 786
    :cond_14
    invoke-static {p0, p1, p2}, Lvm2/lib/DebugLib;->findsetreg(Lvm2/Prototype;II)I

    move-result p1

    const/4 p2, -0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_e4

    .line 788
    iget-object p2, p0, Lvm2/Prototype;->code:[I

    aget p2, p2, p1

    .line 789
    invoke-static {p2}, Lvm2/Lua;->GET_OPCODE(I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_b2

    if-eq v1, v2, :cond_a3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_b2

    const/16 v3, 0xc

    if-eq v1, v3, :cond_93

    const/4 v3, 0x5

    if-eq v1, v3, :cond_74

    const/4 v3, 0x6

    const/4 v4, 0x7

    if-eq v1, v3, :cond_3b

    if-eq v1, v4, :cond_3b

    goto/16 :goto_e4

    .line 799
    :cond_3b
    invoke-static {p2}, Lvm2/Lua;->GETARG_C(I)I

    move-result v0

    .line 800
    invoke-static {p2}, Lvm2/Lua;->GETARG_B(I)I

    move-result v1

    .line 801
    invoke-static {p2}, Lvm2/Lua;->GET_OPCODE(I)I

    move-result p2

    if-ne p2, v4, :cond_4f

    add-int/2addr v1, v2

    .line 802
    invoke-virtual {p0, v1, p1}, Lvm2/Prototype;->getlocalname(II)Lvm2/LuaString;

    move-result-object p2

    goto :goto_5b

    .line 803
    :cond_4f
    iget-object p2, p0, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    array-length v2, p2

    if-ge v1, v2, :cond_59

    aget-object p2, p2, v1

    iget-object p2, p2, Lvm2/Upvaldesc;->name:Lvm2/LuaString;

    goto :goto_5b

    :cond_59
    sget-object p2, Lvm2/lib/DebugLib;->QMARK:Lvm2/LuaString;

    .line 804
    :goto_5b
    invoke-static {p0, p1, v0}, Lvm2/lib/DebugLib;->kname(Lvm2/Prototype;II)Ljava/lang/String;

    move-result-object p0

    .line 805
    new-instance p1, Lvm2/lib/DebugLib$NameWhat;

    if-eqz p2, :cond_6e

    sget-object v0, Lvm2/LuaValue;->ENV:Lvm2/LuaString;

    invoke-virtual {p2, v0}, Lvm2/LuaString;->eq_b(Lvm2/LuaValue;)Z

    move-result p2

    if-eqz p2, :cond_6e

    const-string p2, "global"

    goto :goto_70

    :cond_6e
    const-string p2, "field"

    :goto_70
    invoke-direct {p1, p0, p2}, Lvm2/lib/DebugLib$NameWhat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 808
    :cond_74
    invoke-static {p2}, Lvm2/Lua;->GETARG_B(I)I

    move-result p1

    .line 809
    iget-object p0, p0, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    array-length p2, p0

    if-ge p1, p2, :cond_82

    aget-object p0, p0, p1

    iget-object p0, p0, Lvm2/Upvaldesc;->name:Lvm2/LuaString;

    goto :goto_84

    :cond_82
    sget-object p0, Lvm2/lib/DebugLib;->QMARK:Lvm2/LuaString;

    :goto_84
    if-nez p0, :cond_87

    return-object v0

    .line 810
    :cond_87
    new-instance p1, Lvm2/lib/DebugLib$NameWhat;

    invoke-virtual {p0}, Lvm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object p0

    const-string p2, "upvalue"

    invoke-direct {p1, p0, p2}, Lvm2/lib/DebugLib$NameWhat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 823
    :cond_93
    invoke-static {p2}, Lvm2/Lua;->GETARG_C(I)I

    move-result p2

    .line 824
    invoke-static {p0, p1, p2}, Lvm2/lib/DebugLib;->kname(Lvm2/Prototype;II)Ljava/lang/String;

    move-result-object p0

    .line 825
    new-instance p1, Lvm2/lib/DebugLib$NameWhat;

    const-string p2, "method"

    invoke-direct {p1, p0, p2}, Lvm2/lib/DebugLib$NameWhat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 791
    :cond_a3
    invoke-static {p2}, Lvm2/Lua;->GETARG_A(I)I

    move-result v1

    .line 792
    invoke-static {p2}, Lvm2/Lua;->GETARG_B(I)I

    move-result p2

    if-ge p2, v1, :cond_e4

    .line 794
    invoke-static {p0, p1, p2}, Lvm2/lib/DebugLib;->getobjname(Lvm2/Prototype;II)Lvm2/lib/DebugLib$NameWhat;

    move-result-object p0

    return-object p0

    .line 814
    :cond_b2
    invoke-static {p2}, Lvm2/Lua;->GET_OPCODE(I)I

    move-result v1

    if-nez v1, :cond_bd

    invoke-static {p2}, Lvm2/Lua;->GETARG_Bx(I)I

    move-result p1

    goto :goto_c6

    .line 815
    :cond_bd
    iget-object p2, p0, Lvm2/Prototype;->code:[I

    add-int/2addr p1, v2

    aget p1, p2, p1

    invoke-static {p1}, Lvm2/Lua;->GETARG_Ax(I)I

    move-result p1

    .line 816
    :goto_c6
    iget-object p2, p0, Lvm2/Prototype;->k:[Lvm2/LuaValue;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lvm2/LuaValue;->isstring()Z

    move-result p2

    if-eqz p2, :cond_e4

    .line 817
    iget-object p0, p0, Lvm2/Prototype;->k:[Lvm2/LuaValue;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lvm2/LuaValue;->strvalue()Lvm2/LuaString;

    move-result-object p0

    .line 818
    new-instance p1, Lvm2/lib/DebugLib$NameWhat;

    invoke-virtual {p0}, Lvm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object p0

    const-string p2, "constant"

    invoke-direct {p1, p0, p2}, Lvm2/lib/DebugLib$NameWhat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_e4
    :goto_e4
    return-object v0
.end method

.method public static kname(Lvm2/Prototype;II)Ljava/lang/String;
    .registers 4

    .line 835
    invoke-static {p2}, Lvm2/Lua;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 836
    iget-object p0, p0, Lvm2/Prototype;->k:[Lvm2/LuaValue;

    invoke-static {p2}, Lvm2/Lua;->INDEXK(I)I

    move-result p1

    aget-object p0, p0, p1

    .line 837
    invoke-virtual {p0}, Lvm2/LuaValue;->isstring()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 838
    invoke-virtual {p0}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 841
    :cond_19
    invoke-static {p0, p1, p2}, Lvm2/lib/DebugLib;->getobjname(Lvm2/Prototype;II)Lvm2/lib/DebugLib$NameWhat;

    move-result-object p0

    if-eqz p0, :cond_2c

    .line 842
    const-string p1, "constant"

    iget-object p2, p0, Lvm2/lib/DebugLib$NameWhat;->namewhat:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 843
    iget-object p0, p0, Lvm2/lib/DebugLib$NameWhat;->name:Ljava/lang/String;

    return-object p0

    .line 847
    :cond_2c
    const-string p0, "?"

    return-object p0
.end method

.method public static lua_assert(Z)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    .line 728
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "lua_assert failed"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 119
    invoke-virtual {p2}, Lvm2/LuaValue;->checkglobals()Lvm2/Globals;

    move-result-object p1

    iput-object p1, p0, Lvm2/lib/DebugLib;->globals:Lvm2/Globals;

    .line 120
    iput-object p0, p1, Lvm2/Globals;->debuglib:Lvm2/lib/DebugLib;

    .line 121
    new-instance p1, Lvm2/LuaTable;

    invoke-direct {p1}, Lvm2/LuaTable;-><init>()V

    .line 122
    new-instance v0, Lvm2/lib/DebugLib$debug;

    invoke-direct {v0}, Lvm2/lib/DebugLib$debug;-><init>()V

    const-string v1, "debug"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 123
    new-instance v0, Lvm2/lib/DebugLib$gethook;

    invoke-direct {v0, p0}, Lvm2/lib/DebugLib$gethook;-><init>(Lvm2/lib/DebugLib;)V

    const-string v2, "gethook"

    invoke-virtual {p1, v2, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 124
    new-instance v0, Lvm2/lib/DebugLib$getinfo;

    invoke-direct {v0, p0}, Lvm2/lib/DebugLib$getinfo;-><init>(Lvm2/lib/DebugLib;)V

    const-string v2, "getinfo"

    invoke-virtual {p1, v2, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 125
    new-instance v0, Lvm2/lib/DebugLib$getlocal;

    invoke-direct {v0, p0}, Lvm2/lib/DebugLib$getlocal;-><init>(Lvm2/lib/DebugLib;)V

    const-string v2, "getlocal"

    invoke-virtual {p1, v2, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 126
    new-instance v0, Lvm2/lib/DebugLib$getmetatable;

    invoke-direct {v0}, Lvm2/lib/DebugLib$getmetatable;-><init>()V

    const-string v2, "getmetatable"

    invoke-virtual {p1, v2, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 127
    new-instance v0, Lvm2/lib/DebugLib$getregistry;

    invoke-direct {v0, p0}, Lvm2/lib/DebugLib$getregistry;-><init>(Lvm2/lib/DebugLib;)V

    const-string v2, "getregistry"

    invoke-virtual {p1, v2, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 128
    new-instance v0, Lvm2/lib/DebugLib$getupvalue;

    invoke-direct {v0}, Lvm2/lib/DebugLib$getupvalue;-><init>()V

    const-string v2, "getupvalue"

    invoke-virtual {p1, v2, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 129
    new-instance v0, Lvm2/lib/DebugLib$getuservalue;

    invoke-direct {v0}, Lvm2/lib/DebugLib$getuservalue;-><init>()V

    const-string v2, "getuservalue"

    invoke-virtual {p1, v2, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 130
    new-instance v0, Lvm2/lib/DebugLib$sethook;

    invoke-direct {v0, p0}, Lvm2/lib/DebugLib$sethook;-><init>(Lvm2/lib/DebugLib;)V

    const-string v2, "sethook"

    invoke-virtual {p1, v2, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 131
    new-instance v0, Lvm2/lib/DebugLib$setlocal;

    invoke-direct {v0, p0}, Lvm2/lib/DebugLib$setlocal;-><init>(Lvm2/lib/DebugLib;)V

    const-string v2, "setlocal"

    invoke-virtual {p1, v2, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 132
    new-instance v0, Lvm2/lib/DebugLib$setmetatable;

    invoke-direct {v0}, Lvm2/lib/DebugLib$setmetatable;-><init>()V

    const-string v2, "setmetatable"

    invoke-virtual {p1, v2, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 133
    new-instance v0, Lvm2/lib/DebugLib$setupvalue;

    invoke-direct {v0}, Lvm2/lib/DebugLib$setupvalue;-><init>()V

    const-string v2, "setupvalue"

    invoke-virtual {p1, v2, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 134
    new-instance v0, Lvm2/lib/DebugLib$setuservalue;

    invoke-direct {v0}, Lvm2/lib/DebugLib$setuservalue;-><init>()V

    const-string v2, "setuservalue"

    invoke-virtual {p1, v2, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 135
    new-instance v0, Lvm2/lib/DebugLib$traceback;

    invoke-direct {v0, p0}, Lvm2/lib/DebugLib$traceback;-><init>(Lvm2/lib/DebugLib;)V

    const-string v2, "traceback"

    invoke-virtual {p1, v2, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 136
    new-instance v0, Lvm2/lib/DebugLib$upvalueid;

    invoke-direct {v0}, Lvm2/lib/DebugLib$upvalueid;-><init>()V

    const-string v2, "upvalueid"

    invoke-virtual {p1, v2, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 137
    new-instance v0, Lvm2/lib/DebugLib$upvaluejoin;

    invoke-direct {v0}, Lvm2/lib/DebugLib$upvaluejoin;-><init>()V

    const-string v2, "upvaluejoin"

    invoke-virtual {p1, v2, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 138
    invoke-virtual {p2, v1, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 139
    const-string v0, "package"

    invoke-virtual {p2, v0}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->isnil()Z

    move-result v2

    if-nez v2, :cond_c9

    invoke-virtual {p2, v0}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p2

    const-string v0, "loaded"

    invoke-virtual {p2, v0}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p2

    invoke-virtual {p2, v1, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    :cond_c9
    return-object p1
.end method

.method public callHook(Lvm2/LuaThread$State;Lvm2/LuaValue;Lvm2/LuaValue;)V
    .registers 6

    .line 451
    iget-boolean v0, p1, Lvm2/LuaThread$State;->inhook:Z

    if-nez v0, :cond_21

    iget-object v0, p1, Lvm2/LuaThread$State;->hookfunc:Lvm2/LuaValue;

    if-nez v0, :cond_9

    goto :goto_21

    :cond_9
    const/4 v1, 0x1

    .line 452
    iput-boolean v1, p1, Lvm2/LuaThread$State;->inhook:Z

    const/4 v1, 0x0

    .line 454
    :try_start_d
    invoke-virtual {v0, p2, p3}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    :try_end_10
    .catch Lvm2/LuaError; {:try_start_d .. :try_end_10} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_10} :catch_15
    .catchall {:try_start_d .. :try_end_10} :catchall_13

    .line 460
    iput-boolean v1, p1, Lvm2/LuaThread$State;->inhook:Z

    return-void

    :catchall_13
    move-exception p2

    goto :goto_1e

    :catch_15
    move-exception p2

    .line 458
    :try_start_16
    new-instance p3, Lvm2/LuaError;

    invoke-direct {p3, p2}, Lvm2/LuaError;-><init>(Ljava/lang/Throwable;)V

    throw p3

    :catch_1c
    move-exception p2

    .line 456
    throw p2
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_13

    .line 460
    :goto_1e
    iput-boolean v1, p1, Lvm2/LuaThread$State;->inhook:Z

    .line 461
    throw p2

    :cond_21
    :goto_21
    return-void
.end method

.method public callstack()Lvm2/lib/DebugLib$CallStack;
    .registers 2

    .line 465
    iget-object v0, p0, Lvm2/lib/DebugLib;->globals:Lvm2/Globals;

    iget-object v0, v0, Lvm2/Globals;->running:Lvm2/LuaThread;

    invoke-virtual {p0, v0}, Lvm2/lib/DebugLib;->callstack(Lvm2/LuaThread;)Lvm2/lib/DebugLib$CallStack;

    move-result-object v0

    return-object v0
.end method

.method public callstack(Lvm2/LuaThread;)Lvm2/lib/DebugLib$CallStack;
    .registers 3

    .line 469
    iget-object v0, p1, Lvm2/LuaThread;->callstack:Ljava/lang/Object;

    if-nez v0, :cond_b

    .line 470
    new-instance v0, Lvm2/lib/DebugLib$CallStack;

    invoke-direct {v0}, Lvm2/lib/DebugLib$CallStack;-><init>()V

    iput-object v0, p1, Lvm2/LuaThread;->callstack:Ljava/lang/Object;

    .line 471
    :cond_b
    iget-object p1, p1, Lvm2/LuaThread;->callstack:Ljava/lang/Object;

    check-cast p1, Lvm2/lib/DebugLib$CallStack;

    return-object p1
.end method

.method public getCallFrame(I)Lvm2/lib/DebugLib$CallFrame;
    .registers 3

    .line 447
    invoke-virtual {p0}, Lvm2/lib/DebugLib;->callstack()Lvm2/lib/DebugLib$CallStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvm2/lib/DebugLib$CallStack;->getCallFrame(I)Lvm2/lib/DebugLib$CallFrame;

    move-result-object p1

    return-object p1
.end method

.method public onCall(Lvm2/LuaClosure;Lvm2/Varargs;[Lvm2/LuaValue;)V
    .registers 6

    .line 412
    iget-object v0, p0, Lvm2/lib/DebugLib;->globals:Lvm2/Globals;

    iget-object v0, v0, Lvm2/Globals;->running:Lvm2/LuaThread;

    iget-object v0, v0, Lvm2/LuaThread;->state:Lvm2/LuaThread$State;

    .line 413
    iget-boolean v1, v0, Lvm2/LuaThread$State;->inhook:Z

    if-eqz v1, :cond_b

    goto :goto_1d

    .line 414
    :cond_b
    invoke-virtual {p0}, Lvm2/lib/DebugLib;->callstack()Lvm2/lib/DebugLib$CallStack;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lvm2/lib/DebugLib$CallStack;->onCall(Lvm2/LuaClosure;Lvm2/Varargs;[Lvm2/LuaValue;)V

    .line 415
    iget-boolean p1, v0, Lvm2/LuaThread$State;->hookcall:Z

    if-eqz p1, :cond_1d

    sget-object p1, Lvm2/lib/DebugLib;->CALL:Lvm2/LuaString;

    sget-object p2, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-virtual {p0, v0, p1, p2}, Lvm2/lib/DebugLib;->callHook(Lvm2/LuaThread$State;Lvm2/LuaValue;Lvm2/LuaValue;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public onCall(Lvm2/LuaFunction;)V
    .registers 4

    .line 405
    iget-object v0, p0, Lvm2/lib/DebugLib;->globals:Lvm2/Globals;

    iget-object v0, v0, Lvm2/Globals;->running:Lvm2/LuaThread;

    iget-object v0, v0, Lvm2/LuaThread;->state:Lvm2/LuaThread$State;

    .line 406
    iget-boolean v1, v0, Lvm2/LuaThread$State;->inhook:Z

    if-eqz v1, :cond_b

    goto :goto_1d

    .line 407
    :cond_b
    invoke-virtual {p0}, Lvm2/lib/DebugLib;->callstack()Lvm2/lib/DebugLib$CallStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lvm2/lib/DebugLib$CallStack;->onCall(Lvm2/LuaFunction;)V

    .line 408
    iget-boolean p1, v0, Lvm2/LuaThread$State;->hookcall:Z

    if-eqz p1, :cond_1d

    sget-object p1, Lvm2/lib/DebugLib;->CALL:Lvm2/LuaString;

    sget-object v1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-virtual {p0, v0, p1, v1}, Lvm2/lib/DebugLib;->callHook(Lvm2/LuaThread$State;Lvm2/LuaValue;Lvm2/LuaValue;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public onInstruction(ILvm2/Varargs;I)V
    .registers 6

    .line 419
    iget-object v0, p0, Lvm2/lib/DebugLib;->globals:Lvm2/Globals;

    iget-object v0, v0, Lvm2/Globals;->running:Lvm2/LuaThread;

    iget-object v0, v0, Lvm2/LuaThread;->state:Lvm2/LuaThread$State;

    .line 420
    iget-boolean v1, v0, Lvm2/LuaThread$State;->inhook:Z

    if-eqz v1, :cond_b

    goto :goto_46

    .line 421
    :cond_b
    invoke-virtual {p0}, Lvm2/lib/DebugLib;->callstack()Lvm2/lib/DebugLib$CallStack;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lvm2/lib/DebugLib$CallStack;->onInstruction(ILvm2/Varargs;I)V

    .line 422
    iget-object p1, v0, Lvm2/LuaThread$State;->hookfunc:Lvm2/LuaValue;

    if-nez p1, :cond_17

    goto :goto_46

    .line 423
    :cond_17
    iget p1, v0, Lvm2/LuaThread$State;->hookcount:I

    if-lez p1, :cond_2b

    .line 424
    iget p2, v0, Lvm2/LuaThread$State;->bytecodes:I

    add-int/lit8 p2, p2, 0x1

    iput p2, v0, Lvm2/LuaThread$State;->bytecodes:I

    rem-int/2addr p2, p1

    if-nez p2, :cond_2b

    .line 425
    sget-object p1, Lvm2/lib/DebugLib;->COUNT:Lvm2/LuaString;

    sget-object p2, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-virtual {p0, v0, p1, p2}, Lvm2/lib/DebugLib;->callHook(Lvm2/LuaThread$State;Lvm2/LuaValue;Lvm2/LuaValue;)V

    .line 426
    :cond_2b
    iget-boolean p1, v0, Lvm2/LuaThread$State;->hookline:Z

    if-eqz p1, :cond_46

    .line 427
    invoke-virtual {p0}, Lvm2/lib/DebugLib;->callstack()Lvm2/lib/DebugLib$CallStack;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/lib/DebugLib$CallStack;->currentline()I

    move-result p1

    .line 428
    iget p2, v0, Lvm2/LuaThread$State;->lastline:I

    if-eq p1, p2, :cond_46

    .line 429
    iput p1, v0, Lvm2/LuaThread$State;->lastline:I

    .line 430
    sget-object p2, Lvm2/lib/DebugLib;->LINE:Lvm2/LuaString;

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Lvm2/lib/DebugLib;->callHook(Lvm2/LuaThread$State;Lvm2/LuaValue;Lvm2/LuaValue;)V

    :cond_46
    :goto_46
    return-void
.end method

.method public onReturn()V
    .registers 4

    .line 436
    iget-object v0, p0, Lvm2/lib/DebugLib;->globals:Lvm2/Globals;

    iget-object v0, v0, Lvm2/Globals;->running:Lvm2/LuaThread;

    iget-object v0, v0, Lvm2/LuaThread;->state:Lvm2/LuaThread$State;

    .line 437
    iget-boolean v1, v0, Lvm2/LuaThread$State;->inhook:Z

    if-eqz v1, :cond_b

    goto :goto_1d

    .line 438
    :cond_b
    invoke-virtual {p0}, Lvm2/lib/DebugLib;->callstack()Lvm2/lib/DebugLib$CallStack;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/lib/DebugLib$CallStack;->onReturn()V

    .line 439
    iget-boolean v1, v0, Lvm2/LuaThread$State;->hookrtrn:Z

    if-eqz v1, :cond_1d

    sget-object v1, Lvm2/lib/DebugLib;->RETURN:Lvm2/LuaString;

    sget-object v2, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-virtual {p0, v0, v1, v2}, Lvm2/lib/DebugLib;->callHook(Lvm2/LuaThread$State;Lvm2/LuaValue;Lvm2/LuaValue;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public traceback(I)Ljava/lang/String;
    .registers 3

    .line 443
    invoke-virtual {p0}, Lvm2/lib/DebugLib;->callstack()Lvm2/lib/DebugLib$CallStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvm2/lib/DebugLib$CallStack;->traceback(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.DebugLib.CallFrame (vm2.lib.DebugLib$CallFrame)
.class public Lvm2/lib/DebugLib$CallFrame;
.super Ljava/lang/Object;
.source "DebugLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallFrame"
.end annotation


# instance fields
.field f:Lvm2/LuaFunction;

.field pc:I

.field previous:Lvm2/lib/DebugLib$CallFrame;

.field stack:[Lvm2/LuaValue;

.field top:I

.field v:Lvm2/Varargs;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentline()I
    .registers 5

    .line 700
    iget-object v0, p0, Lvm2/lib/DebugLib$CallFrame;->f:Lvm2/LuaFunction;

    invoke-virtual {v0}, Lvm2/LuaValue;->isclosure()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_a

    return v1

    .line 701
    :cond_a
    iget-object v0, p0, Lvm2/lib/DebugLib$CallFrame;->f:Lvm2/LuaFunction;

    invoke-virtual {v0}, Lvm2/LuaValue;->checkclosure()Lvm2/LuaClosure;

    move-result-object v0

    iget-object v0, v0, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    iget-object v0, v0, Lvm2/Prototype;->lineinfo:[I

    if-eqz v0, :cond_21

    .line 702
    iget v2, p0, Lvm2/lib/DebugLib$CallFrame;->pc:I

    if-ltz v2, :cond_21

    array-length v3, v0

    if-lt v2, v3, :cond_1e

    goto :goto_21

    :cond_1e
    aget v0, v0, v2

    return v0

    :cond_21
    :goto_21
    return v1
.end method

.method public getLocal(I)Lvm2/Varargs;
    .registers 6

    .line 684
    invoke-virtual {p0, p1}, Lvm2/lib/DebugLib$CallFrame;->getlocalname(I)Lvm2/LuaString;

    move-result-object v0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1a

    .line 685
    iget-object v2, p0, Lvm2/lib/DebugLib$CallFrame;->stack:[Lvm2/LuaValue;

    array-length v3, v2

    if-gt p1, v3, :cond_1a

    sub-int/2addr p1, v1

    aget-object p1, v2, p1

    if-eqz p1, :cond_1a

    if-nez v0, :cond_15

    .line 686
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_15
    invoke-static {v0, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 688
    :cond_1a
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

.method public getlocalname(I)Lvm2/LuaString;
    .registers 4

    .line 712
    iget-object v0, p0, Lvm2/lib/DebugLib$CallFrame;->f:Lvm2/LuaFunction;

    invoke-virtual {v0}, Lvm2/LuaValue;->isclosure()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 713
    :cond_a
    iget-object v0, p0, Lvm2/lib/DebugLib$CallFrame;->f:Lvm2/LuaFunction;

    invoke-virtual {v0}, Lvm2/LuaValue;->checkclosure()Lvm2/LuaClosure;

    move-result-object v0

    iget-object v0, v0, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    iget v1, p0, Lvm2/lib/DebugLib$CallFrame;->pc:I

    invoke-virtual {v0, p1, v1}, Lvm2/Prototype;->getlocalname(II)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public instr(ILvm2/Varargs;I)V
    .registers 6

    .line 677
    iput p1, p0, Lvm2/lib/DebugLib$CallFrame;->pc:I

    .line 678
    iput-object p2, p0, Lvm2/lib/DebugLib$CallFrame;->v:Lvm2/Varargs;

    .line 679
    iput p3, p0, Lvm2/lib/DebugLib$CallFrame;->top:I

    .line 680
    sget-boolean v0, Lvm2/lib/DebugLib;->TRACE:Z

    if-eqz v0, :cond_15

    .line 681
    iget-object v0, p0, Lvm2/lib/DebugLib$CallFrame;->f:Lvm2/LuaFunction;

    invoke-virtual {v0}, Lvm2/LuaValue;->checkclosure()Lvm2/LuaClosure;

    move-result-object v0

    iget-object v1, p0, Lvm2/lib/DebugLib$CallFrame;->stack:[Lvm2/LuaValue;

    invoke-static {v0, p1, v1, p3, p2}, Lvm2/Print;->printState(Lvm2/LuaClosure;I[Lvm2/LuaValue;ILvm2/Varargs;)V

    :cond_15
    return-void
.end method

.method public linedefined()I
    .registers 2

    .line 709
    iget-object v0, p0, Lvm2/lib/DebugLib$CallFrame;->f:Lvm2/LuaFunction;

    invoke-virtual {v0}, Lvm2/LuaValue;->isclosure()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lvm2/lib/DebugLib$CallFrame;->f:Lvm2/LuaFunction;

    invoke-virtual {v0}, Lvm2/LuaValue;->checkclosure()Lvm2/LuaClosure;

    move-result-object v0

    iget-object v0, v0, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    iget v0, v0, Lvm2/Prototype;->linedefined:I

    return v0

    :cond_13
    const/4 v0, -0x1

    return v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 672
    iput-object v0, p0, Lvm2/lib/DebugLib$CallFrame;->f:Lvm2/LuaFunction;

    .line 673
    iput-object v0, p0, Lvm2/lib/DebugLib$CallFrame;->v:Lvm2/Varargs;

    .line 674
    iput-object v0, p0, Lvm2/lib/DebugLib$CallFrame;->stack:[Lvm2/LuaValue;

    return-void
.end method

.method public set(Lvm2/LuaClosure;Lvm2/Varargs;[Lvm2/LuaValue;)V
    .registers 4

    .line 661
    iput-object p1, p0, Lvm2/lib/DebugLib$CallFrame;->f:Lvm2/LuaFunction;

    .line 662
    iput-object p2, p0, Lvm2/lib/DebugLib$CallFrame;->v:Lvm2/Varargs;

    .line 663
    iput-object p3, p0, Lvm2/lib/DebugLib$CallFrame;->stack:[Lvm2/LuaValue;

    return-void
.end method

.method public set(Lvm2/LuaFunction;)V
    .registers 2

    .line 669
    iput-object p1, p0, Lvm2/lib/DebugLib$CallFrame;->f:Lvm2/LuaFunction;

    return-void
.end method

.method public setLocal(ILvm2/LuaValue;)Lvm2/Varargs;
    .registers 7

    .line 691
    invoke-virtual {p0, p1}, Lvm2/lib/DebugLib$CallFrame;->getlocalname(I)Lvm2/LuaString;

    move-result-object v0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_19

    .line 692
    iget-object v2, p0, Lvm2/lib/DebugLib$CallFrame;->stack:[Lvm2/LuaValue;

    array-length v3, v2

    if-gt p1, v3, :cond_19

    sub-int/2addr p1, v1

    aget-object v1, v2, p1

    if-eqz v1, :cond_19

    .line 693
    aput-object p2, v2, p1

    if-nez v0, :cond_18

    .line 694
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    :cond_18
    return-object v0

    .line 696
    :cond_19
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

.method public shortsource()Ljava/lang/String;
    .registers 2

    .line 666
    iget-object v0, p0, Lvm2/lib/DebugLib$CallFrame;->f:Lvm2/LuaFunction;

    invoke-virtual {v0}, Lvm2/LuaValue;->isclosure()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lvm2/lib/DebugLib$CallFrame;->f:Lvm2/LuaFunction;

    invoke-virtual {v0}, Lvm2/LuaValue;->checkclosure()Lvm2/LuaClosure;

    move-result-object v0

    iget-object v0, v0, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    invoke-virtual {v0}, Lvm2/Prototype;->shortsource()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_15
    const-string v0, "[Java]"

    return-object v0
.end method

.method public sourceline()Ljava/lang/String;
    .registers 3

    .line 705
    iget-object v0, p0, Lvm2/lib/DebugLib$CallFrame;->f:Lvm2/LuaFunction;

    invoke-virtual {v0}, Lvm2/LuaValue;->isclosure()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lvm2/lib/DebugLib$CallFrame;->f:Lvm2/LuaFunction;

    invoke-virtual {v0}, Lvm2/LuaFunction;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 706
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lvm2/lib/DebugLib$CallFrame;->f:Lvm2/LuaFunction;

    invoke-virtual {v1}, Lvm2/LuaValue;->checkclosure()Lvm2/LuaClosure;

    move-result-object v1

    iget-object v1, v1, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    invoke-virtual {v1}, Lvm2/Prototype;->shortsource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvm2/lib/DebugLib$CallFrame;->currentline()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class vm2.lib.DebugLib.CallStack (vm2.lib.DebugLib$CallStack)
.class public Lvm2/lib/DebugLib$CallStack;
.super Ljava/lang/Object;
.source "DebugLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallStack"
.end annotation


# static fields
.field static final EMPTY:[Lvm2/lib/DebugLib$CallFrame;


# instance fields
.field calls:I

.field frame:[Lvm2/lib/DebugLib$CallFrame;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 508
    new-array v0, v0, [Lvm2/lib/DebugLib$CallFrame;

    sput-object v0, Lvm2/lib/DebugLib$CallStack;->EMPTY:[Lvm2/lib/DebugLib$CallFrame;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    sget-object v0, Lvm2/lib/DebugLib$CallStack;->EMPTY:[Lvm2/lib/DebugLib$CallFrame;

    iput-object v0, p0, Lvm2/lib/DebugLib$CallStack;->frame:[Lvm2/lib/DebugLib$CallFrame;

    const/4 v0, 0x0

    .line 510
    iput v0, p0, Lvm2/lib/DebugLib$CallStack;->calls:I

    return-void
.end method

.method private declared-synchronized pushcall()Lvm2/lib/DebugLib$CallFrame;
    .registers 6

    monitor-enter p0

    .line 519
    :try_start_1
    iget v0, p0, Lvm2/lib/DebugLib$CallStack;->calls:I

    iget-object v1, p0, Lvm2/lib/DebugLib$CallStack;->frame:[Lvm2/lib/DebugLib$CallFrame;

    array-length v2, v1

    if-lt v0, v2, :cond_3c

    .line 520
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 521
    new-array v1, v0, [Lvm2/lib/DebugLib$CallFrame;

    .line 522
    iget-object v2, p0, Lvm2/lib/DebugLib$CallStack;->frame:[Lvm2/lib/DebugLib$CallFrame;

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 523
    iget-object v2, p0, Lvm2/lib/DebugLib$CallStack;->frame:[Lvm2/lib/DebugLib$CallFrame;

    array-length v2, v2

    :goto_1e
    if-ge v2, v0, :cond_2c

    .line 524
    new-instance v3, Lvm2/lib/DebugLib$CallFrame;

    invoke-direct {v3}, Lvm2/lib/DebugLib$CallFrame;-><init>()V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :catchall_2a
    move-exception v0

    goto :goto_48

    .line 525
    :cond_2c
    iput-object v1, p0, Lvm2/lib/DebugLib$CallStack;->frame:[Lvm2/lib/DebugLib$CallFrame;

    const/4 v2, 0x1

    :goto_2f
    if-ge v2, v0, :cond_3c

    .line 527
    aget-object v3, v1, v2

    add-int/lit8 v4, v2, -0x1

    aget-object v4, v1, v4

    iput-object v4, v3, Lvm2/lib/DebugLib$CallFrame;->previous:Lvm2/lib/DebugLib$CallFrame;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 529
    :cond_3c
    iget-object v0, p0, Lvm2/lib/DebugLib$CallStack;->frame:[Lvm2/lib/DebugLib$CallFrame;

    iget v1, p0, Lvm2/lib/DebugLib$CallStack;->calls:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lvm2/lib/DebugLib$CallStack;->calls:I

    aget-object v0, v0, v1
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_2a

    monitor-exit p0

    return-object v0

    :goto_48
    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_2a

    throw v0
.end method


# virtual methods
.method public declared-synchronized auxgetinfo(Ljava/lang/String;Lvm2/LuaFunction;Lvm2/lib/DebugLib$CallFrame;)Lvm2/lib/DebugLib$DebugInfo;
    .registers 11

    monitor-enter p0

    .line 599
    :try_start_1
    new-instance v0, Lvm2/lib/DebugLib$DebugInfo;

    invoke-direct {v0}, Lvm2/lib/DebugLib$DebugInfo;-><init>()V

    .line 600
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_9b

    .line 601
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x53

    if-eq v4, v5, :cond_94

    const/16 v5, 0x6c

    if-eq v4, v5, :cond_81

    const/16 v5, 0x6e

    if-eq v4, v5, :cond_57

    const/16 v5, 0x74

    if-eq v4, v5, :cond_54

    const/16 v5, 0x75

    if-eq v4, v5, :cond_28

    goto/16 :goto_97

    :cond_28
    const/4 v4, 0x1

    if-eqz p2, :cond_4d

    .line 609
    invoke-virtual {p2}, Lvm2/LuaValue;->isclosure()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 610
    invoke-virtual {p2}, Lvm2/LuaValue;->checkclosure()Lvm2/LuaClosure;

    move-result-object v5

    iget-object v5, v5, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    .line 611
    iget-object v6, v5, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    array-length v6, v6

    int-to-short v6, v6

    iput-short v6, v0, Lvm2/lib/DebugLib$DebugInfo;->nups:S

    .line 612
    iget v6, v5, Lvm2/Prototype;->numparams:I

    int-to-short v6, v6

    iput-short v6, v0, Lvm2/lib/DebugLib$DebugInfo;->nparams:S

    .line 613
    iget v5, v5, Lvm2/Prototype;->is_vararg:I

    if-eqz v5, :cond_47

    goto :goto_48

    :cond_47
    move v4, v2

    :goto_48
    iput-boolean v4, v0, Lvm2/lib/DebugLib$DebugInfo;->isvararg:Z

    goto :goto_97

    :catchall_4b
    move-exception p1

    goto :goto_9d

    .line 615
    :cond_4d
    iput-short v2, v0, Lvm2/lib/DebugLib$DebugInfo;->nups:S

    .line 616
    iput-boolean v4, v0, Lvm2/lib/DebugLib$DebugInfo;->isvararg:Z

    .line 617
    iput-short v2, v0, Lvm2/lib/DebugLib$DebugInfo;->nparams:S

    goto :goto_97

    .line 621
    :cond_54
    iput-boolean v2, v0, Lvm2/lib/DebugLib$DebugInfo;->istailcall:Z

    goto :goto_97

    :cond_57
    if-eqz p3, :cond_75

    .line 625
    iget-object v4, p3, Lvm2/lib/DebugLib$CallFrame;->previous:Lvm2/lib/DebugLib$CallFrame;

    if-eqz v4, :cond_75

    .line 626
    iget-object v4, v4, Lvm2/lib/DebugLib$CallFrame;->f:Lvm2/LuaFunction;

    invoke-virtual {v4}, Lvm2/LuaValue;->isclosure()Z

    move-result v4

    if-eqz v4, :cond_75

    .line 627
    iget-object v4, p3, Lvm2/lib/DebugLib$CallFrame;->previous:Lvm2/lib/DebugLib$CallFrame;

    invoke-static {v4}, Lvm2/lib/DebugLib;->getfuncname(Lvm2/lib/DebugLib$CallFrame;)Lvm2/lib/DebugLib$NameWhat;

    move-result-object v4

    if-eqz v4, :cond_75

    .line 629
    iget-object v5, v4, Lvm2/lib/DebugLib$NameWhat;->name:Ljava/lang/String;

    iput-object v5, v0, Lvm2/lib/DebugLib$DebugInfo;->name:Ljava/lang/String;

    .line 630
    iget-object v4, v4, Lvm2/lib/DebugLib$NameWhat;->namewhat:Ljava/lang/String;

    iput-object v4, v0, Lvm2/lib/DebugLib$DebugInfo;->namewhat:Ljava/lang/String;

    .line 634
    :cond_75
    iget-object v4, v0, Lvm2/lib/DebugLib$DebugInfo;->namewhat:Ljava/lang/String;

    if-nez v4, :cond_97

    .line 635
    const-string v4, ""

    iput-object v4, v0, Lvm2/lib/DebugLib$DebugInfo;->namewhat:Ljava/lang/String;

    const/4 v4, 0x0

    .line 636
    iput-object v4, v0, Lvm2/lib/DebugLib$DebugInfo;->name:Ljava/lang/String;

    goto :goto_97

    :cond_81
    if-eqz p3, :cond_90

    .line 606
    iget-object v4, p3, Lvm2/lib/DebugLib$CallFrame;->f:Lvm2/LuaFunction;

    invoke-virtual {v4}, Lvm2/LuaValue;->isclosure()Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-virtual {p3}, Lvm2/lib/DebugLib$CallFrame;->currentline()I

    move-result v4

    goto :goto_91

    :cond_90
    const/4 v4, -0x1

    :goto_91
    iput v4, v0, Lvm2/lib/DebugLib$DebugInfo;->currentline:I

    goto :goto_97

    .line 603
    :cond_94
    invoke-virtual {v0, p2}, Lvm2/lib/DebugLib$DebugInfo;->funcinfo(Lvm2/LuaFunction;)V
    :try_end_97
    .catchall {:try_start_1 .. :try_end_97} :catchall_4b

    :cond_97
    :goto_97
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_c

    .line 648
    :cond_9b
    monitor-exit p0

    return-object v0

    :goto_9d
    :try_start_9d
    monitor-exit p0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_4b

    throw p1
.end method

.method public declared-synchronized currentline()I
    .registers 3

    monitor-enter p0

    .line 515
    :try_start_1
    iget v0, p0, Lvm2/lib/DebugLib$CallStack;->calls:I

    if-lez v0, :cond_12

    iget-object v1, p0, Lvm2/lib/DebugLib$CallStack;->frame:[Lvm2/lib/DebugLib$CallFrame;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lvm2/lib/DebugLib$CallFrame;->currentline()I

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_10

    goto :goto_13

    :catchall_10
    move-exception v0

    goto :goto_15

    :cond_12
    const/4 v0, -0x1

    :goto_13
    monitor-exit p0

    return v0

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_10

    throw v0
.end method

.method public declared-synchronized findCallFrame(Lvm2/LuaValue;)Lvm2/lib/DebugLib$CallFrame;
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    .line 591
    :goto_2
    :try_start_2
    iget v1, p0, Lvm2/lib/DebugLib$CallStack;->calls:I

    if-gt v0, v1, :cond_18

    .line 592
    iget-object v2, p0, Lvm2/lib/DebugLib$CallStack;->frame:[Lvm2/lib/DebugLib$CallFrame;

    sub-int/2addr v1, v0

    aget-object v1, v2, v1

    iget-object v1, v1, Lvm2/lib/DebugLib$CallFrame;->f:Lvm2/LuaFunction;

    if-ne v1, p1, :cond_15

    .line 593
    aget-object p1, v2, v0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object p1

    :catchall_13
    move-exception p1

    goto :goto_1b

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 594
    :cond_18
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_13

    throw p1
.end method

.method public declared-synchronized getCallFrame(I)Lvm2/lib/DebugLib$CallFrame;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_13

    .line 585
    :try_start_4
    iget v0, p0, Lvm2/lib/DebugLib$CallStack;->calls:I

    if-le p1, v0, :cond_9

    goto :goto_13

    .line 587
    :cond_9
    iget-object v1, p0, Lvm2/lib/DebugLib$CallStack;->frame:[Lvm2/lib/DebugLib$CallFrame;

    sub-int/2addr v0, p1

    aget-object p1, v1, v0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object p1

    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1

    .line 586
    :cond_13
    :goto_13
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final declared-synchronized onCall(Lvm2/LuaClosure;Lvm2/Varargs;[Lvm2/LuaValue;)V
    .registers 5

    monitor-enter p0

    .line 537
    :try_start_1
    invoke-direct {p0}, Lvm2/lib/DebugLib$CallStack;->pushcall()Lvm2/lib/DebugLib$CallFrame;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lvm2/lib/DebugLib$CallFrame;->set(Lvm2/LuaClosure;Lvm2/Varargs;[Lvm2/LuaValue;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 538
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final declared-synchronized onCall(Lvm2/LuaFunction;)V
    .registers 3

    monitor-enter p0

    .line 533
    :try_start_1
    invoke-direct {p0}, Lvm2/lib/DebugLib$CallStack;->pushcall()Lvm2/lib/DebugLib$CallFrame;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvm2/lib/DebugLib$CallFrame;->set(Lvm2/LuaFunction;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 534
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final declared-synchronized onInstruction(ILvm2/Varargs;I)V
    .registers 6

    monitor-enter p0

    .line 546
    :try_start_1
    iget v0, p0, Lvm2/lib/DebugLib$CallStack;->calls:I

    if-lez v0, :cond_11

    .line 547
    iget-object v1, p0, Lvm2/lib/DebugLib$CallStack;->frame:[Lvm2/lib/DebugLib$CallFrame;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    invoke-virtual {v0, p1, p2, p3}, Lvm2/lib/DebugLib$CallFrame;->instr(ILvm2/Varargs;I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    goto :goto_11

    :catchall_f
    move-exception p1

    goto :goto_13

    .line 548
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_f

    throw p1
.end method

.method public final declared-synchronized onReturn()V
    .registers 3

    monitor-enter p0

    .line 541
    :try_start_1
    iget v0, p0, Lvm2/lib/DebugLib$CallStack;->calls:I

    if-lez v0, :cond_13

    .line 542
    iget-object v1, p0, Lvm2/lib/DebugLib$CallStack;->frame:[Lvm2/lib/DebugLib$CallFrame;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lvm2/lib/DebugLib$CallStack;->calls:I

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lvm2/lib/DebugLib$CallFrame;->reset()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception v0

    goto :goto_15

    .line 543
    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_11

    throw v0
.end method

.method public declared-synchronized traceback(I)Ljava/lang/String;
    .registers 7

    monitor-enter p0

    .line 556
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 557
    const-string v1, "stack traceback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_b
    add-int/lit8 v1, p1, 0x1

    .line 558
    invoke-virtual {p0, p1}, Lvm2/lib/DebugLib$CallStack;->getCallFrame(I)Lvm2/lib/DebugLib$CallFrame;

    move-result-object p1

    if-eqz p1, :cond_90

    .line 559
    const-string v2, "\n\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 560
    invoke-virtual {p1}, Lvm2/lib/DebugLib$CallFrame;->shortsource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x3a

    .line 561
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 562
    invoke-virtual {p1}, Lvm2/lib/DebugLib$CallFrame;->currentline()I

    move-result v3

    if-lez v3, :cond_45

    .line 563
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lvm2/lib/DebugLib$CallFrame;->currentline()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_45

    :catchall_43
    move-exception p1

    goto :goto_9b

    .line 564
    :cond_45
    :goto_45
    const-string v3, " in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    const-string v3, "n"

    iget-object v4, p1, Lvm2/lib/DebugLib$CallFrame;->f:Lvm2/LuaFunction;

    invoke-virtual {p0, v3, v4, p1}, Lvm2/lib/DebugLib$CallStack;->auxgetinfo(Ljava/lang/String;Lvm2/LuaFunction;Lvm2/lib/DebugLib$CallFrame;)Lvm2/lib/DebugLib$DebugInfo;

    move-result-object v3

    .line 566
    invoke-virtual {p1}, Lvm2/lib/DebugLib$CallFrame;->linedefined()I

    move-result v4

    if-nez v4, :cond_5e

    .line 567
    const-string p1, "main chunk"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8d

    .line 568
    :cond_5e
    iget-object v4, v3, Lvm2/lib/DebugLib$DebugInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_72

    .line 569
    const-string p1, "function \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 570
    iget-object p1, v3, Lvm2/lib/DebugLib$DebugInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x27

    .line 571
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8d

    .line 573
    :cond_72
    const-string v3, "function <"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 574
    invoke-virtual {p1}, Lvm2/lib/DebugLib$CallFrame;->shortsource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 575
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 576
    invoke-virtual {p1}, Lvm2/lib/DebugLib$CallFrame;->linedefined()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 p1, 0x3e

    .line 577
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_8d
    move p1, v1

    goto/16 :goto_b

    .line 580
    :cond_90
    const-string p1, "\n\t[Java]: in ?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 581
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_99
    .catchall {:try_start_1 .. :try_end_99} :catchall_43

    monitor-exit p0

    return-object p1

    :goto_9b
    :try_start_9b
    monitor-exit p0
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_43

    throw p1
.end method

###### Class vm2.lib.DebugLib.DebugInfo (vm2.lib.DebugLib$DebugInfo)
.class Lvm2/lib/DebugLib$DebugInfo;
.super Ljava/lang/Object;
.source "DebugLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugInfo"
.end annotation


# instance fields
.field cf:Lvm2/lib/DebugLib$CallFrame;

.field currentline:I

.field istailcall:Z

.field isvararg:Z

.field lastlinedefined:I

.field linedefined:I

.field name:Ljava/lang/String;

.field namewhat:Ljava/lang/String;

.field nparams:S

.field nups:S

.field short_src:Ljava/lang/String;

.field source:Ljava/lang/String;

.field what:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public funcinfo(Lvm2/LuaFunction;)V
    .registers 4

    .line 490
    invoke-virtual {p1}, Lvm2/LuaValue;->isclosure()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 491
    invoke-virtual {p1}, Lvm2/LuaValue;->checkclosure()Lvm2/LuaClosure;

    move-result-object p1

    iget-object p1, p1, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    .line 492
    iget-object v0, p1, Lvm2/Prototype;->source:Lvm2/LuaString;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lvm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_15
    const-string v0, "=?"

    :goto_17
    iput-object v0, p0, Lvm2/lib/DebugLib$DebugInfo;->source:Ljava/lang/String;

    .line 493
    iget v0, p1, Lvm2/Prototype;->linedefined:I

    iput v0, p0, Lvm2/lib/DebugLib$DebugInfo;->linedefined:I

    .line 494
    iget v1, p1, Lvm2/Prototype;->lastlinedefined:I

    iput v1, p0, Lvm2/lib/DebugLib$DebugInfo;->lastlinedefined:I

    if-nez v0, :cond_26

    .line 495
    const-string v0, "main"

    goto :goto_28

    :cond_26
    const-string v0, "Lua"

    :goto_28
    iput-object v0, p0, Lvm2/lib/DebugLib$DebugInfo;->what:Ljava/lang/String;

    .line 496
    invoke-virtual {p1}, Lvm2/Prototype;->shortsource()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lvm2/lib/DebugLib$DebugInfo;->short_src:Ljava/lang/String;

    return-void

    .line 498
    :cond_31
    const-string v0, "=[Java]"

    iput-object v0, p0, Lvm2/lib/DebugLib$DebugInfo;->source:Ljava/lang/String;

    const/4 v0, -0x1

    .line 499
    iput v0, p0, Lvm2/lib/DebugLib$DebugInfo;->linedefined:I

    .line 500
    iput v0, p0, Lvm2/lib/DebugLib$DebugInfo;->lastlinedefined:I

    .line 501
    const-string v0, "Java"

    iput-object v0, p0, Lvm2/lib/DebugLib$DebugInfo;->what:Ljava/lang/String;

    .line 502
    invoke-virtual {p1}, Lvm2/LuaFunction;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lvm2/lib/DebugLib$DebugInfo;->short_src:Ljava/lang/String;

    return-void
.end method

###### Class vm2.lib.DebugLib.NameWhat (vm2.lib.DebugLib$NameWhat)
.class Lvm2/lib/DebugLib$NameWhat;
.super Ljava/lang/Object;
.source "DebugLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameWhat"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final namewhat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    iput-object p1, p0, Lvm2/lib/DebugLib$NameWhat;->name:Ljava/lang/String;

    .line 736
    iput-object p2, p0, Lvm2/lib/DebugLib$NameWhat;->namewhat:Ljava/lang/String;

    return-void
.end method

###### Class vm2.lib.DebugLib.debug (vm2.lib.DebugLib$debug)
.class final Lvm2/lib/DebugLib$debug;
.super Lvm2/lib/ZeroArgFunction;
.source "DebugLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "debug"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 144
    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 146
    sget-object v0, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object v0
.end method

###### Class vm2.lib.DebugLib.gethook (vm2.lib.DebugLib$gethook)
.class final Lvm2/lib/DebugLib$gethook;
.super Lvm2/lib/VarArgFunction;
.source "DebugLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "gethook"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/DebugLib;


# direct methods
.method public constructor <init>(Lvm2/lib/DebugLib;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lvm2/lib/DebugLib$gethook;->this$0:Lvm2/lib/DebugLib;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    .line 153
    invoke-virtual {p1}, Lvm2/Varargs;->narg()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkthread(I)Lvm2/LuaThread;

    move-result-object p1

    goto :goto_12

    :cond_c
    iget-object p1, p0, Lvm2/lib/DebugLib$gethook;->this$0:Lvm2/lib/DebugLib;

    iget-object p1, p1, Lvm2/lib/DebugLib;->globals:Lvm2/Globals;

    iget-object p1, p1, Lvm2/Globals;->running:Lvm2/LuaThread;

    .line 154
    :goto_12
    iget-object p1, p1, Lvm2/LuaThread;->state:Lvm2/LuaThread$State;

    .line 156
    iget-object v0, p1, Lvm2/LuaThread$State;->hookfunc:Lvm2/LuaValue;

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :goto_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    iget-boolean v2, p1, Lvm2/LuaThread$State;->hookcall:Z

    const-string v3, ""

    if-eqz v2, :cond_29

    const-string v2, "c"

    goto :goto_2a

    :cond_29
    move-object v2, v3

    :goto_2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lvm2/LuaThread$State;->hookline:Z

    if-eqz v2, :cond_34

    const-string v2, "l"

    goto :goto_35

    :cond_34
    move-object v2, v3

    :goto_35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lvm2/LuaThread$State;->hookrtrn:Z

    if-eqz v2, :cond_3e

    const-string v3, "r"

    :cond_3e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    iget p1, p1, Lvm2/LuaThread$State;->hookcount:I

    .line 158
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    .line 155
    invoke-static {v0, v1, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.DebugLib.getinfo (vm2.lib.DebugLib$getinfo)
.class final Lvm2/lib/DebugLib$getinfo;
.super Lvm2/lib/VarArgFunction;
.source "DebugLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "getinfo"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/DebugLib;


# direct methods
.method public constructor <init>(Lvm2/lib/DebugLib;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lvm2/lib/DebugLib$getinfo;->this$0:Lvm2/lib/DebugLib;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 9

    const/4 v0, 0x1

    .line 166
    invoke-virtual {p1, v0}, Lvm2/Varargs;->isthread(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkthread(I)Lvm2/LuaThread;

    move-result-object v1

    const/4 v2, 0x2

    goto :goto_14

    :cond_d
    iget-object v1, p0, Lvm2/lib/DebugLib$getinfo;->this$0:Lvm2/lib/DebugLib;

    iget-object v1, v1, Lvm2/lib/DebugLib;->globals:Lvm2/Globals;

    iget-object v1, v1, Lvm2/Globals;->running:Lvm2/LuaThread;

    move v2, v0

    :goto_14
    add-int/lit8 v3, v2, 0x1

    .line 167
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    .line 168
    const-string v5, "flnStu"

    invoke-virtual {p1, v3, v5}, Lvm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 169
    iget-object v3, p0, Lvm2/lib/DebugLib$getinfo;->this$0:Lvm2/lib/DebugLib;

    invoke-virtual {v3, v1}, Lvm2/lib/DebugLib;->callstack(Lvm2/LuaThread;)Lvm2/lib/DebugLib$CallStack;

    move-result-object v1

    .line 173
    invoke-virtual {v4}, Lvm2/LuaValue;->isnumber()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 174
    invoke-virtual {v4}, Lvm2/LuaValue;->toint()I

    move-result v2

    invoke-virtual {v1, v2}, Lvm2/lib/DebugLib$CallStack;->getCallFrame(I)Lvm2/lib/DebugLib$CallFrame;

    move-result-object v2

    if-nez v2, :cond_39

    .line 176
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1

    .line 177
    :cond_39
    iget-object v4, v2, Lvm2/lib/DebugLib$CallFrame;->f:Lvm2/LuaFunction;

    goto :goto_46

    .line 178
    :cond_3c
    invoke-virtual {v4}, Lvm2/LuaValue;->isfunction()Z

    move-result v3

    if-eqz v3, :cond_139

    .line 179
    invoke-virtual {v1, v4}, Lvm2/lib/DebugLib$CallStack;->findCallFrame(Lvm2/LuaValue;)Lvm2/lib/DebugLib$CallFrame;

    move-result-object v2

    .line 185
    :goto_46
    move-object v3, v4

    check-cast v3, Lvm2/LuaFunction;

    invoke-virtual {v1, p1, v3, v2}, Lvm2/lib/DebugLib$CallStack;->auxgetinfo(Ljava/lang/String;Lvm2/LuaFunction;Lvm2/lib/DebugLib$CallFrame;)Lvm2/lib/DebugLib$DebugInfo;

    move-result-object v2

    .line 186
    new-instance v3, Lvm2/LuaTable;

    invoke-direct {v3}, Lvm2/LuaTable;-><init>()V

    const/16 v5, 0x53

    .line 187
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_8d

    .line 188
    sget-object v5, Lvm2/lib/DebugLib;->WHAT:Lvm2/LuaString;

    sget-object v6, Lvm2/lib/DebugLib;->LUA:Lvm2/LuaString;

    invoke-virtual {v3, v5, v6}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    .line 189
    sget-object v5, Lvm2/lib/DebugLib;->SOURCE:Lvm2/LuaString;

    iget-object v6, v2, Lvm2/lib/DebugLib$DebugInfo;->source:Ljava/lang/String;

    invoke-static {v6}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    .line 190
    sget-object v5, Lvm2/lib/DebugLib;->SHORT_SRC:Lvm2/LuaString;

    iget-object v6, v2, Lvm2/lib/DebugLib$DebugInfo;->short_src:Ljava/lang/String;

    invoke-static {v6}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    .line 191
    sget-object v5, Lvm2/lib/DebugLib;->LINEDEFINED:Lvm2/LuaString;

    iget v6, v2, Lvm2/lib/DebugLib$DebugInfo;->linedefined:I

    invoke-static {v6}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    .line 192
    sget-object v5, Lvm2/lib/DebugLib;->LASTLINEDEFINED:Lvm2/LuaString;

    iget v6, v2, Lvm2/lib/DebugLib$DebugInfo;->lastlinedefined:I

    invoke-static {v6}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    :cond_8d
    const/16 v5, 0x6c

    .line 194
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_a0

    .line 195
    sget-object v5, Lvm2/lib/DebugLib;->CURRENTLINE:Lvm2/LuaString;

    iget v6, v2, Lvm2/lib/DebugLib$DebugInfo;->currentline:I

    invoke-static {v6}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    :cond_a0
    const/16 v5, 0x75

    .line 197
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_cc

    .line 198
    sget-object v5, Lvm2/lib/DebugLib;->NUPS:Lvm2/LuaString;

    iget-short v6, v2, Lvm2/lib/DebugLib$DebugInfo;->nups:S

    invoke-static {v6}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    .line 199
    sget-object v5, Lvm2/lib/DebugLib;->NPARAMS:Lvm2/LuaString;

    iget-short v6, v2, Lvm2/lib/DebugLib$DebugInfo;->nparams:S

    invoke-static {v6}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    .line 200
    sget-object v5, Lvm2/lib/DebugLib;->ISVARARG:Lvm2/LuaString;

    iget-boolean v6, v2, Lvm2/lib/DebugLib$DebugInfo;->isvararg:Z

    if-eqz v6, :cond_c7

    sget-object v6, Lvm2/LuaValue;->ONE:Lvm2/LuaNumber;

    goto :goto_c9

    :cond_c7
    sget-object v6, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    :goto_c9
    invoke-virtual {v3, v5, v6}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    :cond_cc
    const/16 v5, 0x6e

    .line 202
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_ef

    .line 203
    sget-object v5, Lvm2/lib/DebugLib;->NAME:Lvm2/LuaString;

    iget-object v6, v2, Lvm2/lib/DebugLib$DebugInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_db

    goto :goto_dd

    :cond_db
    const-string v6, "?"

    :goto_dd
    invoke-static {v6}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    .line 204
    sget-object v5, Lvm2/lib/DebugLib;->NAMEWHAT:Lvm2/LuaString;

    iget-object v2, v2, Lvm2/lib/DebugLib$DebugInfo;->namewhat:Ljava/lang/String;

    invoke-static {v2}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    :cond_ef
    const/16 v2, 0x74

    .line 206
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_fe

    .line 207
    sget-object v2, Lvm2/lib/DebugLib;->ISTAILCALL:Lvm2/LuaString;

    sget-object v5, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    invoke-virtual {v3, v2, v5}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    :cond_fe
    const/16 v2, 0x4c

    .line 209
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_129

    .line 210
    new-instance v2, Lvm2/LuaTable;

    invoke-direct {v2}, Lvm2/LuaTable;-><init>()V

    .line 211
    sget-object v5, Lvm2/lib/DebugLib;->ACTIVELINES:Lvm2/LuaString;

    invoke-virtual {v3, v5, v2}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    .line 213
    :goto_110
    invoke-virtual {v1, v0}, Lvm2/lib/DebugLib$CallStack;->getCallFrame(I)Lvm2/lib/DebugLib$CallFrame;

    move-result-object v5

    if-eqz v5, :cond_129

    .line 214
    iget-object v6, v5, Lvm2/lib/DebugLib$CallFrame;->f:Lvm2/LuaFunction;

    if-ne v6, v4, :cond_126

    .line 215
    invoke-virtual {v5}, Lvm2/lib/DebugLib$CallFrame;->currentline()I

    move-result v5

    invoke-static {v5}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v2, v6, v5}, Lvm2/LuaTable;->insert(ILvm2/LuaValue;)V

    :cond_126
    add-int/lit8 v0, v0, 0x1

    goto :goto_110

    :cond_129
    const/16 v0, 0x66

    .line 217
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_138

    if-eqz v4, :cond_138

    .line 219
    sget-object p1, Lvm2/lib/DebugLib;->FUNC:Lvm2/LuaString;

    invoke-virtual {v3, p1, v4}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    :cond_138
    return-object v3

    .line 181
    :cond_139
    const-string p1, "function or level"

    invoke-static {v2, p1}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.DebugLib.getlocal (vm2.lib.DebugLib$getlocal)
.class final Lvm2/lib/DebugLib$getlocal;
.super Lvm2/lib/VarArgFunction;
.source "DebugLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "getlocal"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/DebugLib;


# direct methods
.method public constructor <init>(Lvm2/lib/DebugLib;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lvm2/lib/DebugLib$getlocal;->this$0:Lvm2/lib/DebugLib;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    const/4 v0, 0x1

    .line 229
    invoke-virtual {p1, v0}, Lvm2/Varargs;->isthread(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkthread(I)Lvm2/LuaThread;

    move-result-object v0

    const/4 v1, 0x2

    goto :goto_16

    :cond_d
    iget-object v1, p0, Lvm2/lib/DebugLib$getlocal;->this$0:Lvm2/lib/DebugLib;

    iget-object v1, v1, Lvm2/lib/DebugLib;->globals:Lvm2/Globals;

    iget-object v1, v1, Lvm2/Globals;->running:Lvm2/LuaThread;

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    :goto_16
    add-int/lit8 v2, v1, 0x1

    .line 230
    invoke-virtual {p1, v1}, Lvm2/Varargs;->checkint(I)I

    move-result v1

    .line 231
    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkint(I)I

    move-result p1

    .line 232
    iget-object v2, p0, Lvm2/lib/DebugLib$getlocal;->this$0:Lvm2/lib/DebugLib;

    invoke-virtual {v2, v0}, Lvm2/lib/DebugLib;->callstack(Lvm2/LuaThread;)Lvm2/lib/DebugLib$CallStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lvm2/lib/DebugLib$CallStack;->getCallFrame(I)Lvm2/lib/DebugLib$CallFrame;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 233
    invoke-virtual {v0, p1}, Lvm2/lib/DebugLib$CallFrame;->getLocal(I)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    :cond_31
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1
.end method

###### Class vm2.lib.DebugLib.getmetatable (vm2.lib.DebugLib$getmetatable)
.class final Lvm2/lib/DebugLib$getmetatable;
.super Lvm2/lib/LibFunction;
.source "DebugLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "getmetatable"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 238
    invoke-direct {p0}, Lvm2/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 240
    invoke-virtual {p1}, Lvm2/LuaValue;->getmetatable()Lvm2/LuaValue;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    .line 241
    :cond_7
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class vm2.lib.DebugLib.getregistry (vm2.lib.DebugLib$getregistry)
.class final Lvm2/lib/DebugLib$getregistry;
.super Lvm2/lib/ZeroArgFunction;
.source "DebugLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "getregistry"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/DebugLib;


# direct methods
.method public constructor <init>(Lvm2/lib/DebugLib;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 246
    iput-object p1, p0, Lvm2/lib/DebugLib$getregistry;->this$0:Lvm2/lib/DebugLib;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 248
    iget-object v0, p0, Lvm2/lib/DebugLib$getregistry;->this$0:Lvm2/lib/DebugLib;

    iget-object v0, v0, Lvm2/lib/DebugLib;->globals:Lvm2/Globals;

    return-object v0
.end method

###### Class vm2.lib.DebugLib.getupvalue (vm2.lib.DebugLib$getupvalue)
.class final Lvm2/lib/DebugLib$getupvalue;
.super Lvm2/lib/VarArgFunction;
.source "DebugLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "getupvalue"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 253
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    const/4 v0, 0x1

    .line 255
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkfunction(I)Lvm2/LuaFunction;

    move-result-object v1

    const/4 v2, 0x2

    .line 256
    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkint(I)I

    move-result p1

    .line 257
    instance-of v2, v1, Lvm2/LuaClosure;

    if-eqz v2, :cond_24

    .line 258
    check-cast v1, Lvm2/LuaClosure;

    .line 259
    invoke-static {v1, p1}, Lvm2/lib/DebugLib;->findupvalue(Lvm2/LuaClosure;I)Lvm2/LuaString;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 261
    iget-object v1, v1, Lvm2/LuaClosure;->upValues:[Lvm2/UpValue;

    sub-int/2addr p1, v0

    aget-object p1, v1, p1

    invoke-virtual {p1}, Lvm2/UpValue;->getValue()Lvm2/LuaValue;

    move-result-object p1

    invoke-static {v2, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 264
    :cond_24
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class vm2.lib.DebugLib.getuservalue (vm2.lib.DebugLib$getuservalue)
.class final Lvm2/lib/DebugLib$getuservalue;
.super Lvm2/lib/LibFunction;
.source "DebugLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "getuservalue"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 269
    invoke-direct {p0}, Lvm2/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 271
    invoke-virtual {p1}, Lvm2/LuaValue;->isuserdata()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    :cond_7
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class vm2.lib.DebugLib.sethook (vm2.lib.DebugLib$sethook)
.class final Lvm2/lib/DebugLib$sethook;
.super Lvm2/lib/VarArgFunction;
.source "DebugLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "sethook"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/DebugLib;


# direct methods
.method public constructor <init>(Lvm2/lib/DebugLib;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 277
    iput-object p1, p0, Lvm2/lib/DebugLib$sethook;->this$0:Lvm2/lib/DebugLib;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 12

    const/4 v0, 0x1

    .line 280
    invoke-virtual {p1, v0}, Lvm2/Varargs;->isthread(I)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_e

    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkthread(I)Lvm2/LuaThread;

    move-result-object v1

    move v3, v2

    goto :goto_15

    :cond_e
    iget-object v1, p0, Lvm2/lib/DebugLib$sethook;->this$0:Lvm2/lib/DebugLib;

    iget-object v1, v1, Lvm2/lib/DebugLib;->globals:Lvm2/Globals;

    iget-object v1, v1, Lvm2/Globals;->running:Lvm2/LuaThread;

    move v3, v0

    :goto_15
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x0

    .line 281
    invoke-virtual {p1, v3, v5}, Lvm2/Varargs;->optfunction(ILvm2/LuaFunction;)Lvm2/LuaFunction;

    move-result-object v5

    add-int/2addr v3, v2

    .line 282
    const-string v2, ""

    invoke-virtual {p1, v4, v2}, Lvm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 283
    invoke-virtual {p1, v3, v4}, Lvm2/Varargs;->optint(II)I

    move-result p1

    move v3, v4

    move v6, v3

    move v7, v6

    .line 285
    :goto_2b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_4a

    .line 286
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x63

    if-eq v8, v9, :cond_46

    const/16 v9, 0x6c

    if-eq v8, v9, :cond_44

    const/16 v9, 0x72

    if-eq v8, v9, :cond_42

    goto :goto_47

    :cond_42
    move v7, v0

    goto :goto_47

    :cond_44
    move v6, v0

    goto :goto_47

    :cond_46
    move v3, v0

    :goto_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 291
    :cond_4a
    iget-object v0, v1, Lvm2/LuaThread;->state:Lvm2/LuaThread$State;

    .line 292
    iput-object v5, v0, Lvm2/LuaThread$State;->hookfunc:Lvm2/LuaValue;

    .line 293
    iput-boolean v3, v0, Lvm2/LuaThread$State;->hookcall:Z

    .line 294
    iput-boolean v6, v0, Lvm2/LuaThread$State;->hookline:Z

    .line 295
    iput p1, v0, Lvm2/LuaThread$State;->hookcount:I

    .line 296
    iput-boolean v7, v0, Lvm2/LuaThread$State;->hookrtrn:Z

    .line 297
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1
.end method

###### Class vm2.lib.DebugLib.setlocal (vm2.lib.DebugLib$setlocal)
.class final Lvm2/lib/DebugLib$setlocal;
.super Lvm2/lib/VarArgFunction;
.source "DebugLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "setlocal"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/DebugLib;


# direct methods
.method public constructor <init>(Lvm2/lib/DebugLib;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 302
    iput-object p1, p0, Lvm2/lib/DebugLib$setlocal;->this$0:Lvm2/lib/DebugLib;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 8

    const/4 v0, 0x1

    .line 305
    invoke-virtual {p1, v0}, Lvm2/Varargs;->isthread(I)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_e

    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkthread(I)Lvm2/LuaThread;

    move-result-object v0

    move v1, v2

    goto :goto_17

    :cond_e
    iget-object v1, p0, Lvm2/lib/DebugLib$setlocal;->this$0:Lvm2/lib/DebugLib;

    iget-object v1, v1, Lvm2/lib/DebugLib;->globals:Lvm2/Globals;

    iget-object v1, v1, Lvm2/Globals;->running:Lvm2/LuaThread;

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    :goto_17
    add-int/lit8 v3, v1, 0x1

    .line 306
    invoke-virtual {p1, v1}, Lvm2/Varargs;->checkint(I)I

    move-result v4

    add-int/2addr v1, v2

    .line 307
    invoke-virtual {p1, v3}, Lvm2/Varargs;->checkint(I)I

    move-result v2

    .line 308
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    .line 309
    iget-object v1, p0, Lvm2/lib/DebugLib$setlocal;->this$0:Lvm2/lib/DebugLib;

    invoke-virtual {v1, v0}, Lvm2/lib/DebugLib;->callstack(Lvm2/LuaThread;)Lvm2/lib/DebugLib$CallStack;

    move-result-object v0

    invoke-virtual {v0, v4}, Lvm2/lib/DebugLib$CallStack;->getCallFrame(I)Lvm2/lib/DebugLib$CallFrame;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 310
    invoke-virtual {v0, v2, p1}, Lvm2/lib/DebugLib$CallFrame;->setLocal(ILvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    :cond_37
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1
.end method

###### Class vm2.lib.DebugLib.setmetatable (vm2.lib.DebugLib$setmetatable)
.class final Lvm2/lib/DebugLib$setmetatable;
.super Lvm2/lib/TwoArgFunction;
.source "DebugLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "setmetatable"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 315
    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    const/4 v0, 0x0

    .line 317
    invoke-virtual {p2, v0}, Lvm2/LuaValue;->opttable(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object p2

    .line 318
    invoke-virtual {p1}, Lvm2/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_29

    const/4 v1, 0x5

    if-eq v0, v1, :cond_26

    const/4 v1, 0x7

    if-eq v0, v1, :cond_23

    const/16 v1, 0x9

    if-eq v0, v1, :cond_20

    .line 325
    invoke-virtual {p1, p2}, Lvm2/LuaValue;->setmetatable(Lvm2/LuaValue;)Lvm2/LuaValue;

    return-object p1

    .line 324
    :cond_20
    sput-object p2, Lvm2/LuaThread;->s_metatable:Lvm2/LuaValue;

    return-object p1

    .line 323
    :cond_23
    sput-object p2, Lvm2/LuaFunction;->s_metatable:Lvm2/LuaValue;

    return-object p1

    .line 322
    :cond_26
    sput-object p2, Lvm2/LuaString;->s_metatable:Lvm2/LuaValue;

    return-object p1

    .line 320
    :cond_29
    sput-object p2, Lvm2/LuaNumber;->s_metatable:Lvm2/LuaValue;

    return-object p1

    .line 321
    :cond_2c
    sput-object p2, Lvm2/LuaBoolean;->s_metatable:Lvm2/LuaValue;

    return-object p1

    .line 319
    :cond_2f
    sput-object p2, Lvm2/LuaNil;->s_metatable:Lvm2/LuaValue;

    return-object p1
.end method

###### Class vm2.lib.DebugLib.setupvalue (vm2.lib.DebugLib$setupvalue)
.class final Lvm2/lib/DebugLib$setupvalue;
.super Lvm2/lib/VarArgFunction;
.source "DebugLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "setupvalue"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 332
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    const/4 v0, 0x1

    .line 334
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkfunction(I)Lvm2/LuaFunction;

    move-result-object v1

    const/4 v2, 0x2

    .line 335
    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkint(I)I

    move-result v2

    const/4 v3, 0x3

    .line 336
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    .line 337
    instance-of v3, v1, Lvm2/LuaClosure;

    if-eqz v3, :cond_24

    .line 338
    check-cast v1, Lvm2/LuaClosure;

    .line 339
    invoke-static {v1, v2}, Lvm2/lib/DebugLib;->findupvalue(Lvm2/LuaClosure;I)Lvm2/LuaString;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 341
    iget-object v1, v1, Lvm2/LuaClosure;->upValues:[Lvm2/UpValue;

    sub-int/2addr v2, v0

    aget-object v0, v1, v2

    invoke-virtual {v0, p1}, Lvm2/UpValue;->setValue(Lvm2/LuaValue;)V

    return-object v3

    .line 345
    :cond_24
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class vm2.lib.DebugLib.setuservalue (vm2.lib.DebugLib$setuservalue)
.class final Lvm2/lib/DebugLib$setuservalue;
.super Lvm2/lib/VarArgFunction;
.source "DebugLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "setuservalue"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 350
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    const/4 v0, 0x1

    .line 352
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkuserdata(I)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 353
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkvalue(I)Lvm2/LuaValue;

    move-result-object v0

    .line 354
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    check-cast p1, Lvm2/LuaUserdata;

    .line 355
    invoke-virtual {v0}, Lvm2/LuaValue;->checkuserdata()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p1, Lvm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    .line 356
    invoke-virtual {v0}, Lvm2/LuaValue;->getmetatable()Lvm2/LuaValue;

    move-result-object v0

    iput-object v0, p1, Lvm2/LuaUserdata;->m_metatable:Lvm2/LuaValue;

    .line 357
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1
.end method

###### Class vm2.lib.DebugLib.traceback (vm2.lib.DebugLib$traceback)
.class final Lvm2/lib/DebugLib$traceback;
.super Lvm2/lib/VarArgFunction;
.source "DebugLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "traceback"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/DebugLib;


# direct methods
.method public constructor <init>(Lvm2/lib/DebugLib;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 362
    iput-object p1, p0, Lvm2/lib/DebugLib$traceback;->this$0:Lvm2/lib/DebugLib;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 7

    const/4 v0, 0x1

    .line 365
    invoke-virtual {p1, v0}, Lvm2/Varargs;->isthread(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkthread(I)Lvm2/LuaThread;

    move-result-object v1

    const/4 v2, 0x2

    goto :goto_14

    :cond_d
    iget-object v1, p0, Lvm2/lib/DebugLib$traceback;->this$0:Lvm2/lib/DebugLib;

    iget-object v1, v1, Lvm2/lib/DebugLib;->globals:Lvm2/Globals;

    iget-object v1, v1, Lvm2/Globals;->running:Lvm2/LuaThread;

    move v2, v0

    :goto_14
    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    .line 366
    invoke-virtual {p1, v2, v4}, Lvm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-virtual {p1, v3, v0}, Lvm2/Varargs;->optint(II)I

    move-result p1

    .line 368
    iget-object v0, p0, Lvm2/lib/DebugLib$traceback;->this$0:Lvm2/lib/DebugLib;

    invoke-virtual {v0, v1}, Lvm2/lib/DebugLib;->callstack(Lvm2/LuaThread;)Lvm2/lib/DebugLib$CallStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvm2/lib/DebugLib$CallStack;->traceback(I)Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_3f

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3f
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.DebugLib.upvalueid (vm2.lib.DebugLib$upvalueid)
.class final Lvm2/lib/DebugLib$upvalueid;
.super Lvm2/lib/VarArgFunction;
.source "DebugLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "upvalueid"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 374
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    const/4 v0, 0x1

    .line 376
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkfunction(I)Lvm2/LuaFunction;

    move-result-object v1

    const/4 v2, 0x2

    .line 377
    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkint(I)I

    move-result p1

    .line 378
    instance-of v2, v1, Lvm2/LuaClosure;

    if-eqz v2, :cond_25

    .line 379
    check-cast v1, Lvm2/LuaClosure;

    .line 380
    iget-object v1, v1, Lvm2/LuaClosure;->upValues:[Lvm2/UpValue;

    if-eqz v1, :cond_25

    if-lez p1, :cond_25

    array-length v2, v1

    if-gt p1, v2, :cond_25

    sub-int/2addr p1, v0

    .line 381
    aget-object p1, v1, p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 384
    :cond_25
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class vm2.lib.DebugLib.upvaluejoin (vm2.lib.DebugLib$upvaluejoin)
.class final Lvm2/lib/DebugLib$upvaluejoin;
.super Lvm2/lib/VarArgFunction;
.source "DebugLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "upvaluejoin"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 389
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 8

    const/4 v0, 0x1

    .line 391
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkclosure(I)Lvm2/LuaClosure;

    move-result-object v1

    const/4 v2, 0x2

    .line 392
    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkint(I)I

    move-result v2

    const/4 v3, 0x3

    .line 393
    invoke-virtual {p1, v3}, Lvm2/Varargs;->checkclosure(I)Lvm2/LuaClosure;

    move-result-object v3

    const/4 v4, 0x4

    .line 394
    invoke-virtual {p1, v4}, Lvm2/Varargs;->checkint(I)I

    move-result p1

    .line 395
    const-string v4, "index out of range"

    if-lt v2, v0, :cond_1d

    iget-object v5, v1, Lvm2/LuaClosure;->upValues:[Lvm2/UpValue;

    array-length v5, v5

    if-le v2, v5, :cond_20

    .line 396
    :cond_1d
    invoke-virtual {p0, v4}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    :cond_20
    if-lt p1, v0, :cond_27

    .line 397
    iget-object v5, v3, Lvm2/LuaClosure;->upValues:[Lvm2/UpValue;

    array-length v5, v5

    if-le p1, v5, :cond_2a

    .line 398
    :cond_27
    invoke-virtual {p0, v4}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    .line 399
    :cond_2a
    iget-object v1, v1, Lvm2/LuaClosure;->upValues:[Lvm2/UpValue;

    sub-int/2addr v2, v0

    iget-object v3, v3, Lvm2/LuaClosure;->upValues:[Lvm2/UpValue;

    sub-int/2addr p1, v0

    aget-object p1, v3, p1

    aput-object p1, v1, v2

    .line 400
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1
.end method
