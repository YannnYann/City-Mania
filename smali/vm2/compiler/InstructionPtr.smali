###### Class vm2.compiler.InstructionPtr (vm2.compiler.InstructionPtr)
.class Lvm2/compiler/InstructionPtr;
.super Ljava/lang/Object;
.source "InstructionPtr.java"


# instance fields
.field final code:[I

.field final idx:I


# direct methods
.method public constructor <init>([II)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lvm2/compiler/InstructionPtr;->code:[I

    .line 29
    iput p2, p0, Lvm2/compiler/InstructionPtr;->idx:I

    return-void
.end method


# virtual methods
.method public get()I
    .registers 3

    .line 32
    iget-object v0, p0, Lvm2/compiler/InstructionPtr;->code:[I

    iget v1, p0, Lvm2/compiler/InstructionPtr;->idx:I

    aget v0, v0, v1

    return v0
.end method

.method public set(I)V
    .registers 4

    .line 35
    iget-object v0, p0, Lvm2/compiler/InstructionPtr;->code:[I

    iget v1, p0, Lvm2/compiler/InstructionPtr;->idx:I

    aput p1, v0, v1

    return-void
.end method
