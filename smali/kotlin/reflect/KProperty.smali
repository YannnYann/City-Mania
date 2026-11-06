###### Class kotlin.reflect.KProperty (kotlin.reflect.KProperty)
.class public interface abstract Lkotlin/reflect/KProperty;
.super Ljava/lang/Object;
.source "KProperty.kt"

# interfaces
.implements Lkotlin/reflect/KCallable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/KProperty$Getter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/reflect/KCallable<",
        "TV;>;"
    }
.end annotation


# virtual methods
.method public abstract isConst()Z
.end method

.method public abstract isLateinit()Z
.end method

###### Class kotlin.reflect.KProperty.Getter (kotlin.reflect.KProperty$Getter)
.class public interface abstract Lkotlin/reflect/KProperty$Getter;
.super Ljava/lang/Object;
.source "KProperty.kt"

# interfaces
.implements Lkotlin/reflect/KFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/KProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Getter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/reflect/KFunction<",
        "TV;>;"
    }
.end annotation
