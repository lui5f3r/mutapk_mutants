.class public final enum Lcom/skydoves/balloon/ArrowOrientation;
.super Ljava/lang/Enum;
.source "ArrowOrientation.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/skydoves/balloon/ArrowOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/skydoves/balloon/ArrowOrientation;

.field public static final enum BOTTOM:Lcom/skydoves/balloon/ArrowOrientation;

.field public static final enum LEFT:Lcom/skydoves/balloon/ArrowOrientation;

.field public static final enum RIGHT:Lcom/skydoves/balloon/ArrowOrientation;

.field public static final enum TOP:Lcom/skydoves/balloon/ArrowOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/skydoves/balloon/ArrowOrientation;

    new-instance v1, Lcom/skydoves/balloon/ArrowOrientation;

    const-string v2, "BOTTOM"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/skydoves/balloon/ArrowOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/skydoves/balloon/ArrowOrientation;->BOTTOM:Lcom/skydoves/balloon/ArrowOrientation;

    aput-object v1, v0, v3

    new-instance v1, Lcom/skydoves/balloon/ArrowOrientation;

    const-string v2, "TOP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/skydoves/balloon/ArrowOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/skydoves/balloon/ArrowOrientation;->TOP:Lcom/skydoves/balloon/ArrowOrientation;

    aput-object v1, v0, v3

    new-instance v1, Lcom/skydoves/balloon/ArrowOrientation;

    const-string v2, "LEFT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/skydoves/balloon/ArrowOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/skydoves/balloon/ArrowOrientation;->LEFT:Lcom/skydoves/balloon/ArrowOrientation;

    aput-object v1, v0, v3

    new-instance v1, Lcom/skydoves/balloon/ArrowOrientation;

    const-string v2, "RIGHT"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/skydoves/balloon/ArrowOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/skydoves/balloon/ArrowOrientation;->RIGHT:Lcom/skydoves/balloon/ArrowOrientation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/skydoves/balloon/ArrowOrientation;->$VALUES:[Lcom/skydoves/balloon/ArrowOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/skydoves/balloon/ArrowOrientation;
    .locals 1

    const-class v0, Lcom/skydoves/balloon/ArrowOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/skydoves/balloon/ArrowOrientation;

    return-object p0
.end method

.method public static values()[Lcom/skydoves/balloon/ArrowOrientation;
    .locals 1

    sget-object v0, Lcom/skydoves/balloon/ArrowOrientation;->$VALUES:[Lcom/skydoves/balloon/ArrowOrientation;

    invoke-virtual {v0}, [Lcom/skydoves/balloon/ArrowOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/skydoves/balloon/ArrowOrientation;

    return-object v0
.end method
