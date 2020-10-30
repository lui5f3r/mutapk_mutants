.class final Lorg/wikipedia/pageimages/PageImage$1;
.super Ljava/lang/Object;
.source "PageImage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/pageimages/PageImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/wikipedia/pageimages/PageImage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Lorg/wikipedia/pageimages/PageImage$1;->createFromParcel(Landroid/os/Parcel;)Lorg/wikipedia/pageimages/PageImage;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/wikipedia/pageimages/PageImage;
    .locals 2

    .line 81
    new-instance v0, Lorg/wikipedia/pageimages/PageImage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/wikipedia/pageimages/PageImage;-><init>(Landroid/os/Parcel;Lorg/wikipedia/pageimages/PageImage$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Lorg/wikipedia/pageimages/PageImage$1;->newArray(I)[Lorg/wikipedia/pageimages/PageImage;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/wikipedia/pageimages/PageImage;
    .locals 0

    .line 86
    new-array p1, p1, [Lorg/wikipedia/pageimages/PageImage;

    return-object p1
.end method
