###### Class vm2.compiler.Constants (vm2.compiler.Constants)
.class public Lvm2/compiler/Constants;
.super Lvm2/Lua;
.source "Constants.java"


# static fields
.field static final LUAI_MAXUPVAL:I = 0xff

.field static final LUAI_MAXVARS:I = 0xc8

.field public static final MAXSTACK:I = 0xfa

.field static final NO_REG:I = 0xff

.field static final OpArgK:I = 0x3

.field static final OpArgN:I = 0x0

.field static final OpArgR:I = 0x2

.field static final OpArgU:I = 0x1

.field static final iABC:I = 0x0

.field static final iABx:I = 0x1

.field static final iAsBx:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 189
    invoke-direct {p0}, Lvm2/Lua;-><init>()V

    return-void
.end method

.method public static CREATE_ABC(IIII)I
    .registers 4

    .line 0
    and-int/lit8 p0, p0, 0x3f

    shl-int/lit8 p1, p1, 0x6

    and-int/lit16 p1, p1, 0x3fc0

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x17

    const/high16 p2, -0x800000    # Float.NEGATIVE_INFINITY

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    shl-int/lit8 p1, p3, 0xe

    const p2, 0x7fc000

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public static CREATE_ABx(III)I
    .registers 3

    .line 0
    and-int/lit8 p0, p0, 0x3f

    shl-int/lit8 p1, p1, 0x6

    and-int/lit16 p1, p1, 0x3fc0

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0xe

    and-int/lit16 p1, p1, -0x4000

    or-int/2addr p0, p1

    return p0
.end method

.method public static CREATE_Ax(II)I
    .registers 2

    .line 0
    and-int/lit8 p0, p0, 0x3f

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p1, p1, -0x40

    or-int/2addr p0, p1

    return p0
.end method

.method public static SETARG_A(Lvm2/compiler/InstructionPtr;I)V
    .registers 3

    .line 76
    invoke-virtual {p0}, Lvm2/compiler/InstructionPtr;->get()I

    move-result v0

    and-int/lit16 v0, v0, -0x3fc1

    shl-int/lit8 p1, p1, 0x6

    and-int/lit16 p1, p1, 0x3fc0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lvm2/compiler/InstructionPtr;->set(I)V

    return-void
.end method

.method public static SETARG_A([III)V
    .registers 4

    .line 72
    aget v0, p0, p1

    and-int/lit16 v0, v0, -0x3fc1

    shl-int/lit8 p2, p2, 0x6

    and-int/lit16 p2, p2, 0x3fc0

    or-int/2addr p2, v0

    aput p2, p0, p1

    return-void
.end method

.method public static SETARG_B(Lvm2/compiler/InstructionPtr;I)V
    .registers 4

    .line 80
    invoke-virtual {p0}, Lvm2/compiler/InstructionPtr;->get()I

    move-result v0

    const v1, 0x7fffff

    and-int/2addr v0, v1

    shl-int/lit8 p1, p1, 0x17

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lvm2/compiler/InstructionPtr;->set(I)V

    return-void
.end method

.method public static SETARG_Bx(Lvm2/compiler/InstructionPtr;I)V
    .registers 3

    .line 88
    invoke-virtual {p0}, Lvm2/compiler/InstructionPtr;->get()I

    move-result v0

    and-int/lit16 v0, v0, 0x3fff

    shl-int/lit8 p1, p1, 0xe

    and-int/lit16 p1, p1, -0x4000

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lvm2/compiler/InstructionPtr;->set(I)V

    return-void
.end method

.method public static SETARG_C(Lvm2/compiler/InstructionPtr;I)V
    .registers 4

    .line 84
    invoke-virtual {p0}, Lvm2/compiler/InstructionPtr;->get()I

    move-result v0

    const v1, -0x7fc001

    and-int/2addr v0, v1

    shl-int/lit8 p1, p1, 0xe

    const v1, 0x7fc000

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lvm2/compiler/InstructionPtr;->set(I)V

    return-void
.end method

.method public static SETARG_sBx(Lvm2/compiler/InstructionPtr;I)V
    .registers 3

    const v0, 0x1ffff

    add-int/2addr p1, v0

    .line 92
    invoke-static {p0, p1}, Lvm2/compiler/Constants;->SETARG_Bx(Lvm2/compiler/InstructionPtr;I)V

    return-void
.end method

.method public static SET_OPCODE(Lvm2/compiler/InstructionPtr;I)V
    .registers 3

    .line 68
    invoke-virtual {p0}, Lvm2/compiler/InstructionPtr;->get()I

    move-result v0

    and-int/lit8 v0, v0, -0x40

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lvm2/compiler/InstructionPtr;->set(I)V

    return-void
.end method

.method public static _assert(Z)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    .line 64
    :cond_3
    new-instance p0, Lvm2/LuaError;

    const-string v0, "compiler assert failed"

    invoke-direct {p0, v0}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static grow([Lvm2/compiler/LexState$Labeldesc;I)[Lvm2/compiler/LexState$Labeldesc;
    .registers 4

    const/4 v0, 0x2

    if-nez p0, :cond_6

    .line 158
    new-array p0, v0, [Lvm2/compiler/LexState$Labeldesc;

    return-object p0

    :cond_6
    array-length v1, p0

    if-ge v1, p1, :cond_f

    array-length p1, p0

    mul-int/2addr p1, v0

    invoke-static {p0, p1}, Lvm2/compiler/Constants;->realloc([Lvm2/compiler/LexState$Labeldesc;I)[Lvm2/compiler/LexState$Labeldesc;

    move-result-object p0

    :cond_f
    return-object p0
.end method

.method public static realloc([BI)[B
    .registers 4

    .line 176
    new-array v0, p1, [B

    if-eqz p0, :cond_d

    .line 178
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    return-object v0
.end method

.method public static realloc([CI)[C
    .registers 4

    .line 183
    new-array v0, p1, [C

    if-eqz p0, :cond_d

    .line 185
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    return-object v0
.end method

.method public static realloc([II)[I
    .registers 4

    .line 169
    new-array v0, p1, [I

    if-eqz p0, :cond_d

    .line 171
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    return-object v0
.end method

.method public static realloc([Lvm2/LocVars;I)[Lvm2/LocVars;
    .registers 4

    .line 137
    new-array v0, p1, [Lvm2/LocVars;

    if-eqz p0, :cond_d

    .line 139
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    return-object v0
.end method

.method public static realloc([Lvm2/LuaString;I)[Lvm2/LuaString;
    .registers 4

    .line 130
    new-array v0, p1, [Lvm2/LuaString;

    if-eqz p0, :cond_d

    .line 132
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    return-object v0
.end method

.method public static realloc([Lvm2/LuaValue;I)[Lvm2/LuaValue;
    .registers 4

    .line 116
    new-array v0, p1, [Lvm2/LuaValue;

    if-eqz p0, :cond_d

    .line 118
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    return-object v0
.end method

.method public static realloc([Lvm2/Prototype;I)[Lvm2/Prototype;
    .registers 4

    .line 123
    new-array v0, p1, [Lvm2/Prototype;

    if-eqz p0, :cond_d

    .line 125
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    return-object v0
.end method

.method public static realloc([Lvm2/Upvaldesc;I)[Lvm2/Upvaldesc;
    .registers 4

    .line 144
    new-array v0, p1, [Lvm2/Upvaldesc;

    if-eqz p0, :cond_d

    .line 146
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    return-object v0
.end method

.method public static realloc([Lvm2/compiler/LexState$Labeldesc;I)[Lvm2/compiler/LexState$Labeldesc;
    .registers 4

    .line 162
    new-array v0, p1, [Lvm2/compiler/LexState$Labeldesc;

    if-eqz p0, :cond_d

    .line 164
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    return-object v0
.end method

.method public static realloc([Lvm2/compiler/LexState$Vardesc;I)[Lvm2/compiler/LexState$Vardesc;
    .registers 4

    .line 151
    new-array v0, p1, [Lvm2/compiler/LexState$Vardesc;

    if-eqz p0, :cond_d

    .line 153
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    return-object v0
.end method
