.class public final enum Lorg/wikipedia/Constants$ImageEditType;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageEditType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/wikipedia/Constants$ImageEditType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/wikipedia/Constants$ImageEditType;

.field public static final enum ADD_CAPTION:Lorg/wikipedia/Constants$ImageEditType;

.field public static final enum ADD_CAPTION_TRANSLATION:Lorg/wikipedia/Constants$ImageEditType;

.field public static final enum ADD_TAGS:Lorg/wikipedia/Constants$ImageEditType;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 110
    new-instance v0, Lorg/wikipedia/Constants$ImageEditType;

    const-string v1, "ADD_CAPTION"

    const/4 v2, 0x0

    const-string v3, "addCaption"

    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/Constants$ImageEditType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$ImageEditType;->ADD_CAPTION:Lorg/wikipedia/Constants$ImageEditType;

    .line 111
    new-instance v0, Lorg/wikipedia/Constants$ImageEditType;

    const-string v1, "ADD_CAPTION_TRANSLATION"

    const/4 v3, 0x1

    const-string v4, "addCaptionTranslation"

    invoke-direct {v0, v1, v3, v4}, Lorg/wikipedia/Constants$ImageEditType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$ImageEditType;->ADD_CAPTION_TRANSLATION:Lorg/wikipedia/Constants$ImageEditType;

    .line 112
    new-instance v0, Lorg/wikipedia/Constants$ImageEditType;

    const-string v1, "ADD_TAGS"

    const/4 v4, 0x2

    const-string v5, "addTags"

    invoke-direct {v0, v1, v4, v5}, Lorg/wikipedia/Constants$ImageEditType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$ImageEditType;->ADD_TAGS:Lorg/wikipedia/Constants$ImageEditType;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/wikipedia/Constants$ImageEditType;

    .line 109
    sget-object v5, Lorg/wikipedia/Constants$ImageEditType;->ADD_CAPTION:Lorg/wikipedia/Constants$ImageEditType;

    aput-object v5, v1, v2

    sget-object v2, Lorg/wikipedia/Constants$ImageEditType;->ADD_CAPTION_TRANSLATION:Lorg/wikipedia/Constants$ImageEditType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/wikipedia/Constants$ImageEditType;->$VALUES:[Lorg/wikipedia/Constants$ImageEditType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput-object p3, p0, Lorg/wikipedia/Constants$ImageEditType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/Constants$ImageEditType;
    .locals 1

    .line 109
    const-class v0, Lorg/wikipedia/Constants$ImageEditType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/Constants$ImageEditType;

    return-object p0
.end method

.method public static values()[Lorg/wikipedia/Constants$ImageEditType;
    .locals 1

    .line 109
    sget-object v0, Lorg/wikipedia/Constants$ImageEditType;->$VALUES:[Lorg/wikipedia/Constants$ImageEditType;

    invoke-virtual {v0}, [Lorg/wikipedia/Constants$ImageEditType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/wikipedia/Constants$ImageEditType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/wikipedia/Constants$ImageEditType;->name:Ljava/lang/String;

    return-object v0
.end method
