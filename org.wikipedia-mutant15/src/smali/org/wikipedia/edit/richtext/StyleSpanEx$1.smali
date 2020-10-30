.class final Lorg/wikipedia/edit/richtext/StyleSpanEx$1;
.super Ljava/lang/Object;
.source "StyleSpanEx.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/edit/richtext/StyleSpanEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/wikipedia/edit/richtext/StyleSpanEx;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lorg/wikipedia/edit/richtext/StyleSpanEx$1;->createFromParcel(Landroid/os/Parcel;)Lorg/wikipedia/edit/richtext/StyleSpanEx;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/wikipedia/edit/richtext/StyleSpanEx;
    .locals 1

    .line 18
    new-instance v0, Lorg/wikipedia/edit/richtext/StyleSpanEx;

    invoke-direct {v0, p1}, Lorg/wikipedia/edit/richtext/StyleSpanEx;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lorg/wikipedia/edit/richtext/StyleSpanEx$1;->newArray(I)[Lorg/wikipedia/edit/richtext/StyleSpanEx;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/wikipedia/edit/richtext/StyleSpanEx;
    .locals 0

    .line 22
    new-array p1, p1, [Lorg/wikipedia/edit/richtext/StyleSpanEx;

    return-object p1
.end method
