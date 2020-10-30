.class public final enum Lorg/wikipedia/page/PageActivity$TabPosition;
.super Ljava/lang/Enum;
.source "PageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/PageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/wikipedia/page/PageActivity$TabPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/wikipedia/page/PageActivity$TabPosition;

.field public static final enum CURRENT_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

.field public static final enum CURRENT_TAB_SQUASH:Lorg/wikipedia/page/PageActivity$TabPosition;

.field public static final enum EXISTING_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

.field public static final enum NEW_TAB_BACKGROUND:Lorg/wikipedia/page/PageActivity$TabPosition;

.field public static final enum NEW_TAB_FOREGROUND:Lorg/wikipedia/page/PageActivity$TabPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 115
    new-instance v0, Lorg/wikipedia/page/PageActivity$TabPosition;

    const-string v1, "CURRENT_TAB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/wikipedia/page/PageActivity$TabPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/page/PageActivity$TabPosition;->CURRENT_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

    .line 116
    new-instance v0, Lorg/wikipedia/page/PageActivity$TabPosition;

    const-string v1, "CURRENT_TAB_SQUASH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/wikipedia/page/PageActivity$TabPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/page/PageActivity$TabPosition;->CURRENT_TAB_SQUASH:Lorg/wikipedia/page/PageActivity$TabPosition;

    .line 117
    new-instance v0, Lorg/wikipedia/page/PageActivity$TabPosition;

    const-string v1, "NEW_TAB_BACKGROUND"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/wikipedia/page/PageActivity$TabPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/page/PageActivity$TabPosition;->NEW_TAB_BACKGROUND:Lorg/wikipedia/page/PageActivity$TabPosition;

    .line 118
    new-instance v0, Lorg/wikipedia/page/PageActivity$TabPosition;

    const-string v1, "NEW_TAB_FOREGROUND"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/wikipedia/page/PageActivity$TabPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/page/PageActivity$TabPosition;->NEW_TAB_FOREGROUND:Lorg/wikipedia/page/PageActivity$TabPosition;

    .line 119
    new-instance v0, Lorg/wikipedia/page/PageActivity$TabPosition;

    const-string v1, "EXISTING_TAB"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/wikipedia/page/PageActivity$TabPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/page/PageActivity$TabPosition;->EXISTING_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/wikipedia/page/PageActivity$TabPosition;

    .line 114
    sget-object v7, Lorg/wikipedia/page/PageActivity$TabPosition;->CURRENT_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

    aput-object v7, v1, v2

    sget-object v2, Lorg/wikipedia/page/PageActivity$TabPosition;->CURRENT_TAB_SQUASH:Lorg/wikipedia/page/PageActivity$TabPosition;

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/page/PageActivity$TabPosition;->NEW_TAB_BACKGROUND:Lorg/wikipedia/page/PageActivity$TabPosition;

    aput-object v2, v1, v4

    sget-object v2, Lorg/wikipedia/page/PageActivity$TabPosition;->NEW_TAB_FOREGROUND:Lorg/wikipedia/page/PageActivity$TabPosition;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lorg/wikipedia/page/PageActivity$TabPosition;->$VALUES:[Lorg/wikipedia/page/PageActivity$TabPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/page/PageActivity$TabPosition;
    .locals 1

    .line 114
    const-class v0, Lorg/wikipedia/page/PageActivity$TabPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/page/PageActivity$TabPosition;

    return-object p0
.end method

.method public static values()[Lorg/wikipedia/page/PageActivity$TabPosition;
    .locals 1

    .line 114
    sget-object v0, Lorg/wikipedia/page/PageActivity$TabPosition;->$VALUES:[Lorg/wikipedia/page/PageActivity$TabPosition;

    invoke-virtual {v0}, [Lorg/wikipedia/page/PageActivity$TabPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/wikipedia/page/PageActivity$TabPosition;

    return-object v0
.end method
