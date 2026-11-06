###### Class com.badlogic.gdx.graphics.Cursor (com.badlogic.gdx.graphics.Cursor)
.class public interface abstract Lcom/badlogic/gdx/graphics/Cursor;
.super Ljava/lang/Object;
.source "Cursor.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;
    }
.end annotation

###### Class com.badlogic.gdx.graphics.Cursor.SystemCursor (com.badlogic.gdx.graphics.Cursor$SystemCursor)
.class public final enum Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;
.super Ljava/lang/Enum;
.source "Cursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SystemCursor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

.field public static final enum AllResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

.field public static final enum Arrow:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

.field public static final enum Crosshair:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

.field public static final enum Hand:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

.field public static final enum HorizontalResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

.field public static final enum Ibeam:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

.field public static final enum NESWResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

.field public static final enum NWSEResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

.field public static final enum None:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

.field public static final enum NotAllowed:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

.field public static final enum VerticalResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;


# direct methods
.method public static synthetic $values()[Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;
    .registers 11

    .line 15
    sget-object v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->Arrow:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    sget-object v1, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->Ibeam:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    sget-object v2, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->Crosshair:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    sget-object v3, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->Hand:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    sget-object v4, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->HorizontalResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    sget-object v5, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->VerticalResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    sget-object v6, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->NWSEResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    sget-object v7, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->NESWResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    sget-object v8, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->AllResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    sget-object v9, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->NotAllowed:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    sget-object v10, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->None:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    filled-new-array/range {v0 .. v10}, [Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    const-string v1, "Arrow"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->Arrow:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    new-instance v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    const-string v1, "Ibeam"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->Ibeam:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    new-instance v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    const-string v1, "Crosshair"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->Crosshair:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    new-instance v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    const-string v1, "Hand"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->Hand:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    new-instance v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    const-string v1, "HorizontalResize"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->HorizontalResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    new-instance v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    const-string v1, "VerticalResize"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->VerticalResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    new-instance v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    const-string v1, "NWSEResize"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->NWSEResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    new-instance v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    const-string v1, "NESWResize"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->NESWResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    new-instance v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    const-string v1, "AllResize"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->AllResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    new-instance v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    const-string v1, "NotAllowed"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->NotAllowed:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    new-instance v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    const-string v1, "None"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->None:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    .line 15
    invoke-static {}, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->$values()[Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->$VALUES:[Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;
    .registers 2

    .line 15
    const-class v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;
    .registers 1

    .line 15
    sget-object v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->$VALUES:[Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    return-object v0
.end method
