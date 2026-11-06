###### Class androidx.core.os.BundleApi21ImplKt (androidx.core.os.BundleApi21ImplKt)
.class public final Landroidx/core/os/BundleApi21ImplKt;
.super Ljava/lang/Object;
.source "Bundle.kt"


# static fields
.field public static final INSTANCE:Landroidx/core/os/BundleApi21ImplKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Landroidx/core/os/BundleApi21ImplKt;

    invoke-direct {v0}, Landroidx/core/os/BundleApi21ImplKt;-><init>()V

    sput-object v0, Landroidx/core/os/BundleApi21ImplKt;->INSTANCE:Landroidx/core/os/BundleApi21ImplKt;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final putSize(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/Size;)V
    .registers 3

    .line 116
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    return-void
.end method

.method public static final putSizeF(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/SizeF;)V
    .registers 3

    .line 119
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V

    return-void
.end method
