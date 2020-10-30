.class public final enum Lcom/skydoves/balloon/ArrowConstraints;
.super Ljava/lang/Enum;
.source "ArrowConstraints.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/skydoves/balloon/ArrowConstraints;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/skydoves/balloon/ArrowConstraints;

.field public static final enum ALIGN_ANCHOR:Lcom/skydoves/balloon/ArrowConstraints;

.field public static final enum ALIGN_BALLOON:Lcom/skydoves/balloon/ArrowConstraints;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/skydoves/balloon/ArrowConstraints;

    new-instance v1, Lcom/skydoves/balloon/ArrowConstraints;

    const-string v2, "ALIGN_BALLOON"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/skydoves/balloon/ArrowConstraints;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/skydoves/balloon/ArrowConstraints;->ALIGN_BALLOON:Lcom/skydoves/balloon/ArrowConstraints;

    aput-object v1, v0, v3

    new-instance v1, Lcom/skydoves/balloon/ArrowConstraints;

    const-string v2, "ALIGN_ANCHOR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/skydoves/balloon/ArrowConstraints;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/skydoves/balloon/ArrowConstraints;->ALIGN_ANCHOR:Lcom/skydoves/balloon/ArrowConstraints;

    aput-object v1, v0, v3

    sput-object v0, Lcom/skydoves/balloon/ArrowConstraints;->$VALUES:[Lcom/skydoves/balloon/ArrowConstraints;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/skydoves/balloon/ArrowConstraints;
    .locals 1

    const-class v0, Lcom/skydoves/balloon/ArrowConstraints;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/skydoves/balloon/ArrowConstraints;

    return-object p0
.end method

.method public static values()[Lcom/skydoves/balloon/ArrowConstraints;
    .locals 1

    sget-object v0, Lcom/skydoves/balloon/ArrowConstraints;->$VALUES:[Lcom/skydoves/balloon/ArrowConstraints;

    invoke-virtual {v0}, [Lcom/skydoves/balloon/ArrowConstraints;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/skydoves/balloon/ArrowConstraints;

    return-object v0
.end method
