.class synthetic Lorg/wikipedia/gallery/GalleryActivity$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/gallery/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$wikipedia$Constants$ImageEditType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 417
    invoke-static {}, Lorg/wikipedia/Constants$ImageEditType;->values()[Lorg/wikipedia/Constants$ImageEditType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/wikipedia/gallery/GalleryActivity$1;->$SwitchMap$org$wikipedia$Constants$ImageEditType:[I

    :try_start_0
    sget-object v1, Lorg/wikipedia/Constants$ImageEditType;->ADD_TAGS:Lorg/wikipedia/Constants$ImageEditType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/wikipedia/gallery/GalleryActivity$1;->$SwitchMap$org$wikipedia$Constants$ImageEditType:[I

    sget-object v1, Lorg/wikipedia/Constants$ImageEditType;->ADD_CAPTION_TRANSLATION:Lorg/wikipedia/Constants$ImageEditType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
