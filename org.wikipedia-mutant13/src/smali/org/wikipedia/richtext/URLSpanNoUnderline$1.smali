.class final Lorg/wikipedia/richtext/URLSpanNoUnderline$1;
.super Ljava/lang/Object;
.source "URLSpanNoUnderline.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/richtext/URLSpanNoUnderline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/wikipedia/richtext/URLSpanNoUnderline;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/richtext/URLSpanNoUnderline$1;->createFromParcel(Landroid/os/Parcel;)Lorg/wikipedia/richtext/URLSpanNoUnderline;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/wikipedia/richtext/URLSpanNoUnderline;
    .locals 1

    .line 15
    new-instance v0, Lorg/wikipedia/richtext/URLSpanNoUnderline;

    invoke-direct {v0, p1}, Lorg/wikipedia/richtext/URLSpanNoUnderline;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/richtext/URLSpanNoUnderline$1;->newArray(I)[Lorg/wikipedia/richtext/URLSpanNoUnderline;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/wikipedia/richtext/URLSpanNoUnderline;
    .locals 0

    .line 19
    new-array p1, p1, [Lorg/wikipedia/richtext/URLSpanNoUnderline;

    return-object p1
.end method
