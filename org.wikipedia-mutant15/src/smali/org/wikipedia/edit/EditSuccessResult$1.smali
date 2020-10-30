.class final Lorg/wikipedia/edit/EditSuccessResult$1;
.super Ljava/lang/Object;
.source "EditSuccessResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/edit/EditSuccessResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/wikipedia/edit/EditSuccessResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lorg/wikipedia/edit/EditSuccessResult$1;->createFromParcel(Landroid/os/Parcel;)Lorg/wikipedia/edit/EditSuccessResult;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/wikipedia/edit/EditSuccessResult;
    .locals 2

    .line 26
    new-instance v0, Lorg/wikipedia/edit/EditSuccessResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/wikipedia/edit/EditSuccessResult;-><init>(Landroid/os/Parcel;Lorg/wikipedia/edit/EditSuccessResult$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lorg/wikipedia/edit/EditSuccessResult$1;->newArray(I)[Lorg/wikipedia/edit/EditSuccessResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/wikipedia/edit/EditSuccessResult;
    .locals 0

    .line 31
    new-array p1, p1, [Lorg/wikipedia/edit/EditSuccessResult;

    return-object p1
.end method
