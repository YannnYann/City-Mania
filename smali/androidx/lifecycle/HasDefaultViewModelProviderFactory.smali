###### Class androidx.lifecycle.HasDefaultViewModelProviderFactory (androidx.lifecycle.HasDefaultViewModelProviderFactory)
.class public interface abstract Landroidx/lifecycle/HasDefaultViewModelProviderFactory;
.super Ljava/lang/Object;
.source "HasDefaultViewModelProviderFactory.kt"


# virtual methods
.method public getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;
    .registers 2

    .line 38
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    return-object v0
.end method
