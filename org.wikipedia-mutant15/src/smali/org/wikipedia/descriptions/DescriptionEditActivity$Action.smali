.class public final enum Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;
.super Ljava/lang/Enum;
.source "DescriptionEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/descriptions/DescriptionEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

.field public static final enum ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

.field public static final enum ADD_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

.field public static final enum ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

.field public static final enum TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

.field public static final enum TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 42
    new-instance v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    const-string v1, "ADD_DESCRIPTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 43
    new-instance v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    const-string v1, "TRANSLATE_DESCRIPTION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 44
    new-instance v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    const-string v1, "ADD_CAPTION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 45
    new-instance v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    const-string v1, "TRANSLATE_CAPTION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 46
    new-instance v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    const-string v1, "ADD_IMAGE_TAGS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 41
    sget-object v7, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    aput-object v7, v1, v2

    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    aput-object v2, v1, v4

    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->$VALUES:[Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;
    .locals 1

    .line 41
    const-class v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    return-object p0
.end method

.method public static values()[Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;
    .locals 1

    .line 41
    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->$VALUES:[Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    invoke-virtual {v0}, [Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    return-object v0
.end method
