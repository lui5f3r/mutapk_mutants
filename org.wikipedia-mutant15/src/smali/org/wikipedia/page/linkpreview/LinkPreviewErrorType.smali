.class abstract enum Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;
.super Ljava/lang/Enum;
.source "LinkPreviewErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

.field public static final enum GENERIC:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

.field public static final enum OFFLINE:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

.field public static final enum PAGE_MISSING:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;


# instance fields
.field private final buttonText:I

.field private final icon:I

.field private final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 15
    new-instance v6, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType$1;

    const-string v1, "OFFLINE"

    const/4 v2, 0x0

    const v3, 0x7f0800fa

    const v4, 0x7f100108

    const v5, 0x7f100050

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType$1;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->OFFLINE:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    .line 23
    new-instance v0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType$2;

    const-string v8, "PAGE_MISSING"

    const/4 v9, 0x1

    const v10, 0x7f0800bb

    const v11, 0x7f10010b

    const v12, 0x7f100467

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType$2;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->PAGE_MISSING:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    .line 31
    new-instance v0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType$3;

    const-string v2, "GENERIC"

    const/4 v3, 0x2

    const v4, 0x7f0800bb

    const v5, 0x7f100108

    const v6, 0x7f100467

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType$3;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->GENERIC:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    .line 11
    sget-object v2, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->OFFLINE:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->PAGE_MISSING:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->$VALUES:[Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->icon:I

    .line 45
    iput p4, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->text:I

    .line 46
    iput p5, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->buttonText:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIILorg/wikipedia/page/linkpreview/LinkPreviewErrorType$1;)V
    .locals 0

    .line 11
    invoke-direct/range {p0 .. p5}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method public static get(Ljava/lang/Throwable;)Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;
    .locals 1

    if-eqz p0, :cond_0

    .line 64
    invoke-static {p0}, Lorg/wikipedia/util/ThrowableUtil;->is404(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-object p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->PAGE_MISSING:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    return-object p0

    :cond_0
    if-eqz p0, :cond_2

    .line 67
    invoke-static {p0}, Lorg/wikipedia/util/ThrowableUtil;->isOffline(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/wikipedia/util/ThrowableUtil;->isTimeout(Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 68
    :cond_1
    sget-object p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->OFFLINE:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    return-object p0

    .line 70
    :cond_2
    sget-object p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->GENERIC:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;
    .locals 1

    .line 11
    const-class v0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    return-object p0
.end method

.method public static values()[Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;
    .locals 1

    .line 11
    sget-object v0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->$VALUES:[Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    invoke-virtual {v0}, [Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    return-object v0
.end method


# virtual methods
.method abstract buttonAction(Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;)Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;
.end method

.method public buttonText()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->buttonText:I

    return v0
.end method

.method icon()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->icon:I

    return v0
.end method

.method text()I
    .locals 1

    .line 54
    iget v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->text:I

    return v0
.end method
