.class final Lorg/wikipedia/page/PageProperties$1;
.super Ljava/lang/Object;
.source "PageProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/PageProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/wikipedia/page/PageProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageProperties$1;->createFromParcel(Landroid/os/Parcel;)Lorg/wikipedia/page/PageProperties;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/wikipedia/page/PageProperties;
    .locals 2

    .line 214
    new-instance v0, Lorg/wikipedia/page/PageProperties;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/wikipedia/page/PageProperties;-><init>(Landroid/os/Parcel;Lorg/wikipedia/page/PageProperties$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageProperties$1;->newArray(I)[Lorg/wikipedia/page/PageProperties;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/wikipedia/page/PageProperties;
    .locals 0

    .line 219
    new-array p1, p1, [Lorg/wikipedia/page/PageProperties;

    return-object p1
.end method
