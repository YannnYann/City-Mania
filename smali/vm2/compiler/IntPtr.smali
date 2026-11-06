###### Class vm2.compiler.IntPtr (vm2.compiler.IntPtr)
.class public Lvm2/compiler/IntPtr;
.super Ljava/lang/Object;
.source "IntPtr.java"


# instance fields
.field i:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lvm2/compiler/IntPtr;->i:I

    return-void
.end method
