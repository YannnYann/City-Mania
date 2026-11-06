###### Class androidx.datastore.core.State (androidx.datastore.core.State)
.class public abstract Landroidx/datastore/core/State;
.super Ljava/lang/Object;
.source "State.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final version:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Landroidx/datastore/core/State;->version:I

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroidx/datastore/core/State;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getVersion()I
    .registers 2

    .line 23
    iget v0, p0, Landroidx/datastore/core/State;->version:I

    return v0
.end method
